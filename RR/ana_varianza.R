x1 = round(rnorm(12, mean=57, sd=6))
x2 = round(rnorm(14, mean=52, sd=3))
x3 = round(rnorm(10, mean=60, sd=2))

yy = c(x1, x2, x3)
xx = 1:36

plot(xx,yy, pch=16)
points(c(1,12), c(mean(x1), mean(x1)), type='l', lwd=3, col='red')

points(c(13,26), c(mean(x2), mean(x2)), type='l', lwd=3, col='green')

points(c(27,36), c(mean(x3), mean(x3)), type='l', lwd=3, col='blue')

