library("dplyr")
bot<-read.csv("bot20261022.csv")
bot<-bot[-16,]
btp_plain<-read.csv("btp20261022.csv")
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
#pdf("fig_interp_spline.pdf")
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
#dev.off()
