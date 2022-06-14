set.seed(716)
size = 11
prob = 0.82
x = mean(replicate(4830, mean(rbinom(133, size, prob))))
abs(x - size * prob)