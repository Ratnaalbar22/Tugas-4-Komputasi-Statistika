###Tugas 4 Komputasi Statistika

#Soal 1
lambda <- 3
# P(X >= 5)
p <- 1 - ppois(4, lambda)
p
#Pemodelan dengan Poisson
x <- 0:10
prob <- dpois(x, lambda)
data.frame(
  x = x,
  probabilitas = prob
)

#Soal 2
m <- 20    # jumlah bola merah
n <- 80    # jumlah bola bukan merah
k <- 10    # jumlah bola yang diambil
x <- 0:10  # nilai x yang mungkin
# Probabilitas masing-masing X
prob <- dhyper(x, m, n, k)
data.frame(
  jumlah_bola_merah = x,
  probabilitas = prob
)

#Soal 3
set.seed(123)
n <- 15
p <- 0.4
jumlah_simulasi <- 1000
# Simulasi Binomial
hasil <- rbinom(
  jumlah_simulasi,
  size = n,
  prob = p
)

head(hasil)
#Membuat histogram
hist(
  hasil,
  breaks = seq(-0.5, 15.5, 1),
  probability = TRUE,
  main = "Simulasi Binomial (n = 15, p = 0.4)",
  xlab = "Jumlah keberhasilan",
  ylab = "Probabilitas"
)
#PMF teoritis
x <- 0:15
pmf <- dbinom(
  x,
  size = 15,
  prob = 0.4
)
points(
  x,
  pmf,
  pch = 19
)
lines(
  x,
  dbinom(x, size = 15, prob = 0.4),
  type = "b"
)
