source('numerico.R')
source('pTeor.R')

#r <- GenSolTeorica(.5, 8)
#r <- GenSolTeorica(1,14)
#r <- GenSolTeorica(1.5,14)
#r <- GenSolTeorica(2,8)

t1= .5
n1=8

t2= 1
n2= 14

t2= 1.5
n2= 14

t2= 2
n2= 8

n1 <- GenSolNumerica(t2, n2)
t1 <- GenSolTeorica(t2, n2)

plot(n1[[1]], n1[[2]])
points(t1[[1]], t1[[2]], type='l', lwd=3, col='red')






