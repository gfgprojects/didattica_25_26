library(lubridate)

# Date in formato Date
btp_aprile$scadenza <- as.Date(btp_aprile$scadenza)
data_valutazione <- as.Date(data_valutazione)

# Nodi della spline
nodi <- c(0, 1, 3, 5)
K <- length(nodi) - 1

# Controllo delle scadenze
T_max <- max(as.numeric(
  btp_aprile$scadenza - data_valutazione
) / 365)

stopifnot(T_max <= max(nodi))

# Funzione che individua il segmento
segmento <- function(T) {
  findInterval(T, nodi, rightmost.closed = TRUE)
}

# Base polinomiale cubica
base <- function(T) {
  c(1, T, T^2, T^3)
}

# Derivata prima
base_d1 <- function(T) {
  c(0, 1, 2*T, 3*T^2)
}

# Derivata seconda
base_d2 <- function(T) {
  c(0, 0, 2, 6*T)
}

# Costruzione date dei flussi
cashflow_dates <- function(maturity) {

  date <- as.Date(maturity)
  dates <- as.Date(character())

  while (date > data_valutazione) {
    dates <- c(date, dates)
    date <- date %m-% months(6)
  }

  dates
}

# Costruzione della riga di pricing
build_bond_row <- function(maturity, coupon) {

  dates <- cashflow_dates(maturity)
  T <- as.numeric(dates - data_valutazione) / 365

  CF <- rep(coupon, length(T))
  CF[length(CF)] <- CF[length(CF)] + 100

  row <- numeric(4*K)

  for (j in seq_along(T)) {

    s <- segmento(T[j])
    cols <- (4*s-3):(4*s)

    row[cols] <- row[cols] + CF[j]*base(T[j])
  }

  row
}

# Matrice delle equazioni di pricing
B <- do.call(
  rbind,
  Map(
    build_bond_row,
    as.list(btp_aprile$scadenza),
    btp_aprile$cedola_semestrale
  )
)

P <- btp_aprile$dirty_price

# Costruzione delle condizioni di raccordo
C <- matrix(0, nrow = 0, ncol = 4*K)

for (i in 1:(K-1)) {

  t <- nodi[i+1]

  cols_left <- (4*i-3):(4*i)
  cols_right <- (4*(i+1)-3):(4*(i+1))

  for (fun in list(base, base_d1, base_d2)) {

    row <- numeric(4*K)

    row[cols_left] <- fun(t)
    row[cols_right] <- -fun(t)

    C <- rbind(C, row)
  }
}

# Condizione iniziale d(0)=1
C0 <- numeric(4*K)
C0[1:4] <- base(0)

# Condizione finale naturale d''(5)=0
Cn <- numeric(4*K)
Cn[(4*K-3):(4*K)] <- base_d2(max(nodi))

# Sistema completo
A <- rbind(B, C, C0, Cn)

rhs <- c(
  P,
  rep(0, nrow(C)),
  1,
  0
)

# Risoluzione
stopifnot(qr(A)$rank == ncol(A))

a <- solve(A, rhs)

# Funzione di sconto
discount_spline <- function(T) {

  sapply(T, function(t) {

    if (t < min(nodi) || t > max(nodi))
      return(NA_real_)

    s <- segmento(t)
    cols <- (4*s-3):(4*s)

    sum(a[cols] * base(t))
  })
}

# Grafico
T_grid <- seq(0, T_max, length.out = 500)

#pdf("fig_interp_btp_spline.pdf")
plot(
  T_grid,
  discount_spline(T_grid),
  type = "l",
  lwd = 2,
  xlab = "Maturity (anni)",
  ylab = "Discount factor",
  main = "Curva di sconto con spline cubica"
)

abline(v = nodi[2:3], lty = 2, col = "gray")
#dev.off()

