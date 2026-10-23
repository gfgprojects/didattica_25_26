bot<-read.csv("bot20261022.csv")
btp_plain<-read.csv("btp20261022.csv")
#Interpolazione lineare e
# Confronto con BTP (interpolazione)

T1 <- bot$T[
  bot$scadenza == as.Date("2026-11-13")
]

T2 <- bot$T[
  bot$scadenza == as.Date("2026-12-14")
]

d1 <- bot$discount_factor[
  bot$scadenza == as.Date("2026-11-13")
]

d2 <- bot$discount_factor[
  bot$scadenza == as.Date("2026-12-14")
]

data_valutazione <- as.numeric(as.Date("2026-10-22"))
T_star <- as.numeric(as.Date("2026-12-01") - data_valutazione) / 365

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

coupon <- 1.25 / 2

CF <- 100 + coupon

P_model <- CF * d_star

#recupero prezzo di mercato del BTP

P_market <- btp_plain |>
  filter(scadenza == as.Date("2026-12-01")) |>
  pull(prezzo)

#stampa della differenza

cat("Il prezzo osservato del BTP è",P_market,"quello teorico è",P_model,"\n")

#la differenza è attribuibile al rateo di interessi.
#Infatti, il modello ci dà il prezzo dirty (ovvero comprensivo di rateo interessi)
#mentre il P_market è clean, ovvero appena staccata la cedola

#calcoliamo il rateo e aggiungiamolo al P_market

# BTP 01/11/2026 7.25%

coupon_annuo <- 1.25
coupon_semestrale <- coupon_annuo / 2

ultima_cedola <- as.Date("2026-06-01")
prossima_cedola <- as.Date("2026-12-01")

giorni_trascorsi <- as.numeric(as.Date(data_valutazione) - ultima_cedola)

giorni_periodo <- as.numeric(prossima_cedola - ultima_cedola)

rateo <- coupon_semestrale * giorni_trascorsi / giorni_periodo

P_dirty_market <- P_market + rateo

cat("Il prezzo dirty del BTP è",P_dirty_market,"quello teorico è",P_model,"\n")

#INTERPOLAZIONE CON PIù PUNTI

#prendiamo punti non contigui

bot6 <- bot |>
  arrange(T) |>
  slice(c(1, 4, 7, 10, 13, 15))

T <- bot6$T
d <- bot6$discount_factor

#La funzione outer() applica un'operazione a tutte le combinazioni degli elementi di due vettori.
#otteniamo la matrice di Vandermonde
A <- outer(T, 0:5, `^`)

#risolviamo il sistema lineare

a <- solve(A, d)

# visualizziamo la linea
#pdf("fig_interp_bot6.pdf")
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
#dev.off()

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


