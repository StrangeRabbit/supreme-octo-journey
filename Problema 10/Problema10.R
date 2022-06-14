set.seed(143)

N = seq(100,2500,100); rate = 1.06; ratec = 0.01; alpha = 1 - 0.9
X = numeric(); XC = numeric(); A = numeric(); AC = numeric()

for (i in 1:25) {
  n = i * 100
  for (m in 1:1100) {
    x = rexp(n, rate)
    xc = rexp(n*0.15, ratec)
    xc = c(xc,x[1:(0.85*n)])
    A[m] = 2*(qnorm(1 - alpha/2)/sqrt(n)/mean(x))
    AC[m] = 2*(qnorm(1 - alpha/2)/sqrt(n)/mean(xc))
  }
  X[i] = mean(A)
  XC[i] = mean(AC)
}

ggplot(data.frame(N,X,XC), aes(N)) + 
  geom_point(aes(y = X, col = "nao contaminada")) + 
  geom_point(aes(y = XC, col = "contaminada")) +
  ylab("Media da amplitude do intervalo de confiança") + xlab("Valores de n")
