min = 15
max = 19
E = (max + min)/2
V = (max - min)^2/12
for (n in c(3, 21, 50)) {
  x = numeric()
  set.seed(794)
  for (i in 1:50) {
    x[i] = mean(runif(n, min, max))
  }
  x2 <- seq(min, max, length = 400)
  fun <- dnorm(x2, mean = E, sd = sqrt(V/n))
  hist(x, prob = TRUE, xlim = c(15, 19), breaks = 20, 
       main = paste("N =", n), xlab = "media da amostra")
  lines(x2, fun, col = 2, lwd = 2)
}
