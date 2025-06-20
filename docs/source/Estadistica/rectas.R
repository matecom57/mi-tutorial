x1 <- round(rnorm(12, mean=57, sd=4), 2)
x2 <- round(rnorm(10, mean=62, sd=2), 2)
x3 <- round(rnorm(10, mean=53, sd=2), 2)
x = c(x1, x2, x3)

plot(x)

points(c(1,12), c(mean(x1), mean(x1)), type='l', lwd=3, col='red', pch=16)

points(c(13,23), c(mean(x2), mean(x2)), type='l', lwd=3, col='green', pch=16)

points(c(24,34), c(mean(x3), mean(x3)), type='l', lwd=3, col='blue', pch=16)



