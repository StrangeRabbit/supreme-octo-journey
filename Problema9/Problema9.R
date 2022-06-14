set.seed(288)

N = seq(100,5000,100); rate = 0.97; n = 100; alpha = 1 - 0.98
X = numeric(); A = numeric()

for (i in 1:50) {
  n = i * 100
  for (m in 1:900) {
    x = rexp(n, rate)
    A[m] = 2*(qnorm(1 - alpha/2)/sqrt(n)/mean(x))
  }
  X[i] = mean(A)
}

ggplot(data.frame(N,X), aes(N,X)) + geom_point() +
  xlab("Valores de n") + ylab("Media da amplitude do intervalo de confiança")
