set.seed(293)
m = 1250
n = 932
alpha = 1 - 0.95
lambda = 3.86
#mean(replicate(m, 2*qnorm(1-alpha/2)/sqrt(n)/mean(rexp(n ,lambda))))
A = numeric()
for(i in 1:m) {
  x = rexp(n, lambda)
  #A[i] = 2 * qnorm(1 - alpha / 2) / sqrt(n) / mean(x)
  a = qnorm(1 - alpha / 2)
  max = (1 + a / sqrt(n)) / mean(x)
  min = (1 - a / sqrt(n)) / mean(x)
  A[i] = max - min
}
mean(A)
