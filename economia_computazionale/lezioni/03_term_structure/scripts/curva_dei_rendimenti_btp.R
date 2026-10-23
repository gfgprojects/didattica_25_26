library("dplyr")
btp<-read.csv("btp20261022.csv")
#Esercizio con BTP

#Prima estraiamo dal dataframe prezzi e ISIN:

btp_aprile <- btp |>
  filter(
    descrizione %in% c(
      "BTP 01/04/2027 1,10%",
      "BTP 01/04/2028 3,4%",
      "BTP 01/04/2030 1,35%",
      "BTP 01/04/2031 0,90%"
    )
  ) |>
  arrange(scadenza)

btp_aprile |>
  select(isin, descrizione, scadenza, prezzo, yield)

#Script: estraiamo automaticamente le cedole

btp_aprile <- btp_aprile |>
  mutate(
    cedola_annua = descrizione |>
      stringr::str_extract("[0-9]+,[0-9]+(?=%)") |>
      stringr::str_replace(",", ".") |>
      as.numeric(),
    cedola_semestrale = cedola_annua / 2
  )

#Controlliamo:

btp_aprile |>
  select(
    descrizione,
    prezzo,
    cedola_annua,
    cedola_semestrale,
    scadenza
  )

#Clean → dirty price

#data_valutazione <- as.Date("2026-10-22")
data_valutazione <- Sys.Date()

ultima_cedola <- as.Date("2026-10-01")
prossima_cedola <- as.Date("2027-04-01")

frazione_rateo <- as.numeric(
  data_valutazione - ultima_cedola
) / as.numeric(
  prossima_cedola - ultima_cedola
)

#Per ogni titolo:

btp_aprile <- btp_aprile |>
  mutate(
    rateo = cedola_semestrale * frazione_rateo,
    dirty_price = prezzo + rateo
  )

#Costruiamo i cash flow

library(lubridate)

cashflow_dates <- function(maturity) {

  date <- maturity
  dates <- as.Date(character())

  while (date > data_valutazione) {
    dates <- c(date, dates)
    date <- date %m-% months(6)
  }

  dates
}

#E una funzione che costruisce una riga della matrice B:

build_bond_row <- function(maturity, coupon) {

  dates <- cashflow_dates(maturity)

  T <- as.numeric(dates - data_valutazione) / 365

  CF <- rep(coupon, length(dates))

  # ultimo pagamento = cedola + rimborso del capitale
  CF[length(CF)] <- CF[length(CF)] + 100

  c(
    sum(CF),
    sum(CF * T),
    sum(CF * T^2),
    sum(CF * T^3)
  )
}

#Ora costruiamo la matrice:

#la colonna scadenza contiene stringhe, mentre la funzione %m-% richiede il tipo Date
btp_aprile$scadenza <- as.Date(btp_aprile$scadenza)

B <- t(
  mapply(
    build_bond_row,
    maturity = btp_aprile$scadenza,
    coupon = btp_aprile$cedola_semestrale
  )
)

P <- btp_aprile$dirty_price

#risolviamo il sistema

a <- solve(B, P)

#possiamo ricostruire la funzione di sconto:

discount_btp <- function(T) {
  a[1] + a[2]*T + a[3]*T^2 + a[4]*T^3
}

#e disegnarla:

T_grid <- seq(
  0,
  max(as.numeric(btp_aprile$scadenza - data_valutazione) / 365),
  length.out = 500
)
#pdf("fig_interp_btp_poli.pdf")
plot(
  T_grid,
  discount_btp(T_grid),
  type = "l",
  xlab = "Maturity (anni)",
  ylab = "Discount factor",
  main = "Curva di sconto implicita nei BTP"
)
#dev.off()



