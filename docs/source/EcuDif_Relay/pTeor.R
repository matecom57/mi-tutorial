#tao = .5
#niter = 8

#tao = 1
#niter = 14

tao = 1.5
niter = 14

GenSolTeorica <- function(tao=0, niter=1){
  np = 1000
  t = seq(-1*tao, 0, length.out = np)

  x = rep(1,np)
#  xx = x
#  tt = t

  xx = c()
  tt = c()

  for (n in 1:niter){
    res = 1
    t = t + tao
    for (k in 1:n){
      res = res + (-1)^k *(t - (k-1)*tao)^k / factorial(k)
    }
    xx = c(xx, res)
    tt = c(tt,t)
  }
  res = list(tt, xx)
}  

#r <- GenSolTeorica(.5, 8)
#r <- GenSolTeorica(1,14)
#r <- GenSolTeorica(1.5,14)
#r <- GenSolTeorica(2,8)

#plot(r[[1]], r[[2]], type='l')


