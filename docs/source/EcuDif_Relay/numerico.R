#tao = .5
#niter = 8

#tao = 1
#niter = 14

#tao = 1.5
#niter = 14

tao = 2
niter = 10

Integral <- function(del, f){
   np = 100
   x = rep(0, np)

   x[1] = f[np]
   x1 = x[1]

   for (i in 2:np){
      x2 = x1 - del*f[i-1]
      x[i] = x2
      x1 = x2
   }
   ret = x
}

GenSolNumerica <- function(tao=1, niter=1){
  np = 100

  t = seq(-1*tao,0,length.out = np)

  del = t[2] - t[1]

  f = rep(1,np)
#  ff = f
#  tt = t

  ff = c()
  tt = c()


  for (i in 1:niter){
    t = t+tao
    x = Integral(del, f)
    ff = c(ff, x)
    tt = c(tt, t)
    f = x
  }

  ret = list(tt, ff)
}

#r <- GenSolNumerica(.5,8)

#plot(r[[1]], r[[2]], type='l')


