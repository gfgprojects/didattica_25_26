library(dplyr) #libreria per manipolare dataframe
library(rvest) #libreria per web scraping
library(readr) #importa file rettangolari funzione parse_number
library(stringr) #manipolazione stringhe funzione str_detect

#scraping tabella da simpletoolsforinvestors

url <- "https://www.simpletoolsforinvestors.eu/monitor_info.php?monitor=5&timescale=DUR&yieldtype=G&issuer=GOV_IT&volumerating=0"

page <- read_html(url)

tables <- page |>
  html_elements("table") |>
  html_table(fill = TRUE)

btp_table<-tables[[8]]

#selezione variabili

btp <- btp_table |>
  transmute(
    isin = `Codice ISIN`,
    descrizione = Descrizione,
    scadenza = as.Date(Datascadenza),
    prezzo = parse_number(
      `Prezzo diriferimento`,
      locale = locale(decimal_mark = ",")
    ),
    yield = parse_number(
      Yield,
      locale = locale(decimal_mark = ",")
    ),
    mercato = Mercato
  )

# classificazione automatica dei titoli

btp <- btp |>
  mutate(
    tipo = case_when(
      str_detect(descrizione, "^BOT ") ~ "BOT",
      str_detect(descrizione, "^BTP Italia") ~ "BTP Italia",
      str_detect(descrizione, "^BTPi ") ~ "BTPi",
      str_detect(descrizione, "^BTP VALORE") ~ "BTP Valore",
      str_detect(descrizione, "^BTP FUTURA") ~ "BTP Futura",
      str_detect(descrizione, "^BTP PIU") ~ "BTP Più",
      str_detect(descrizione, regex("GREEN", ignore_case = TRUE)) ~ "BTP Green",
      str_detect(descrizione, "^BTP ") ~ "BTP plain vanilla",
      TRUE ~ "Altro"
    )
  )

# selezione titoli di interesse

titoli_selezionati <- btp |>
  filter(tipo %in% c("BOT", "BTP plain vanilla")) |>
  arrange(scadenza)

titoli_selezionati |>
  select(
    isin,
    descrizione,
    tipo,
    scadenza,
    prezzo,
    yield
  )

#separiamo i due gruppi

bot <- titoli_selezionati |>
  filter(tipo == "BOT")

btp_plain <- titoli_selezionati |>
  filter(tipo == "BTP plain vanilla")

#analizziamo i BOT

bot <- bot |> filter(!is.na(prezzo))
data_valutazione <- Sys.Date()
bot <- bot |>
  mutate(
    giorni_scadenza = as.numeric(scadenza - data_valutazione),
    T = giorni_scadenza / 365
  ) |>
  filter(T > 0)
#calcolo fattori di sconto
bot <- bot |>
  mutate(
    discount_factor = prezzo / 100
  )
#visualizzazione dei fattori di sconto
plot(
  bot$T,
  bot$discount_factor,
  xlab = "Maturity (anni)",
  ylab = "Discount factor",
  main = "Discount factors ricavati dai BOT",
  pch = 19
)

#Interpolazione lineare e
# Confronto con BTP (interpolazione)

T1 <- bot$T[
  bot$scadenza == as.Date("2026-10-14")
]

T2 <- bot$T[
  bot$scadenza == as.Date("2026-11-13")
]

d1 <- bot$discount_factor[
  bot$scadenza == as.Date("2026-10-14")
]

d2 <- bot$discount_factor[
  bot$scadenza == as.Date("2026-11-13")
]

T_star <- as.numeric(
  as.Date("2026-11-01") - data_valutazione
) / 365

#Stima retta passante
A <- matrix(
  c(
    1, T1,
    1, T2
  ),
  nrow = 2,
  byrow = TRUE
)

y <- c(d1, d2)

coef <- solve(A, y)

#calcolo fattore di sconto corrispondente al BTP

d_star <- coef[1] + coef[2] * T_star

#calcolo prezzo BTP

coupon <- 7.25 / 2

CF <- 100 + coupon

P_model <- CF * d_star

#recupero prezzo di mercato del BTP

P_market <- btp_plain |>
  filter(scadenza == as.Date("2026-11-01")) |>
  pull(prezzo)

#stampa della differenza

cat("Il prezzo osservato del BTP è",P_market,"quello teorico è",P_model,"\n")

#la differenza è attribuibile al rateo di interessi.
#Infatti, il modello ci dà il prezzo dirty (ovvero comprensivo di rateo interessi)
#mentre il P_market è clean, ovvero appena staccata la cedola

#calcoliamo il rateo e aggiungiamolo al P_market

# BTP 01/11/2026 7.25%

coupon_annuo <- 7.25
coupon_semestrale <- coupon_annuo / 2

ultima_cedola <- as.Date("2026-05-01")
prossima_cedola <- as.Date("2026-11-01")

giorni_trascorsi <- as.numeric(
  data_valutazione - ultima_cedola
)

giorni_periodo <- as.numeric(
  prossima_cedola - ultima_cedola
)

rateo <- coupon_semestrale *
  giorni_trascorsi / giorni_periodo

P_dirty_market <- P_market + rateo

cat("Il prezzo dirty del BTP è",P_dirty_market,"quello teorico è",P_model,"\n")

#INTERPOLAZIONE CON PIù PUNTI

#prendiamo punti non contigui

bot6 <- bot |>
  arrange(T) |>
  slice(c(1, 4, 7, 10, 13, 15))

T <- bot6$T
d <- bot6$discount_factor

A <- outer(T, 0:5, `^`)

#risolviamo il sistema lineare

a <- solve(A, d)

# visualizziamo la linea

d_poly <- function(x, coef) {
  sum(coef * x^(0:(length(coef) - 1)))
}

T_grid <- seq(
  min(bot6$T),
  max(bot6$T),
  length.out = 500
)

d_grid <- sapply(
  T_grid,
  d_poly,
  coef = a
)

plot(
  T_grid,
  d_grid,
  type = "l",
  xlab = "Maturity (anni)",
  ylab = "Discount factor",
  main = "Interpolazione polinomiale dei discount factors"
)

points(
  bot6$T,
  bot6$discount_factor,
  pch = 19
)

# Aumentiamo il numero di titoli e confrontiamo i condition numbers

T15 <- bot$T
d15 <- bot$discount_factor

A15 <- outer(
  T15,
  0:(length(T15) - 1),
  `^`
)

c(
  '6 BOT' = kappa(A),
  '15 BOT' = kappa(A15)
)

#Spline
#R ha la funzione splinefun(), ma noi costruiamo il nostro sistema

bot_spline <- bot |>
  arrange(T)

T <- bot_spline$T
y <- bot_spline$discount_factor

n <- length(T)
m <- n - 1

N <- 4 * m

#Creiamo matrice e vettore

A <- matrix(0, nrow = N, ncol = N)
b <- numeric(N)

row <- 1

# Per ogni intervallo, i quattro coefficienti occupano quattro colonne consecutive:

cols <- function(i) {
  (4 * i - 3):(4 * i)
}

#Condizioni di interpolazione

for (i in 1:m) {

  h <- T[i + 1] - T[i]
  j <- cols(i)

  # S_i(T_i) = y_i
  A[row, j] <- c(1, 0, 0, 0)
  b[row] <- y[i]
  row <- row + 1

  # S_i(T_{i+1}) = y_{i+1}
  A[row, j] <- c(1, h, h^2, h^3)
  b[row] <- y[i + 1]
  row <- row + 1
}

#Continuità della derivata prima

for (i in 1:(m - 1)) {

  h <- T[i + 1] - T[i]

  j1 <- cols(i)
  j2 <- cols(i + 1)

  A[row, j1] <- c(0, 1, 2*h, 3*h^2)
  A[row, j2] <- c(0, -1, 0, 0)

  b[row] <- 0

  row <- row + 1
}

#continuità della derivata seconda

for (i in 1:(m - 1)) {

  h <- T[i + 1] - T[i]

  j1 <- cols(i)
  j2 <- cols(i + 1)

  A[row, j1] <- c(0, 0, 2, 6*h)
  A[row, j2] <- c(0, 0, -2, 0)

  b[row] <- 0

  row <- row + 1
}

#Condizioni al contorno
#estremo sinistro
A[row, cols(1)] <- c(0, 0, 2, 0)
b[row] <- 0

row <- row + 1
#estremo destro
h <- T[n] - T[n - 1]

A[row, cols(m)] <- c(0, 0, 2, 6*h)
b[row] <- 0

#Soluzione sistema lineare per determinare i coefficienti

coef_spline <- solve(A, b)

#ricostruzione spline

#funzione di valutazione

eval_spline <- function(x, T, coef_spline) {

  n <- length(T)
  m <- n - 1

  # individua l'intervallo che contiene x
  i <- findInterval(x, T)

  # gestisce l'ultimo nodo
  if (i == n) {
    i <- m
  }

  # la spline viene utilizzata solo nel suo dominio
  if (i < 1 || i > m) {
    return(NA)
  }

  # coefficienti del tratto i
  j <- (4 * i - 3):(4 * i)

  a <- coef_spline[j[1]]
  b <- coef_spline[j[2]]
  c <- coef_spline[j[3]]
  e <- coef_spline[j[4]]

  # coordinata locale
  u <- x - T[i]

  # valore della spline
  a + b*u + c*u^2 + e*u^3
}

#definiamo la griglia

T_grid <- seq(
  min(T),
  max(T),
  length.out = 1000
)

#calcoliamo il valore fornito dalla spline

d_spline <- sapply(
  T_grid,
  eval_spline,
  T = T,
  coef_spline = coef_spline
)

# visualizzazione

plot(
  T_grid,
  d_spline,
  type = "l",
  lwd = 2,
  xlab = "Maturity (anni)",
  ylab = "Discount factor",
  main = "Curva dei discount factors - Cubic spline"
)

points(
  T,
  y,
  pch = 19
)


