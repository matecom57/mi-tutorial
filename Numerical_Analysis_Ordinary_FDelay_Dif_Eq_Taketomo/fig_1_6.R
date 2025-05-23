Integral <- function(ff=0, tao=0){
  del = .001
  t = seq(0,tao, del)
  np = length(t)
  ss = dim(ff)
  print(ss)
  x1 = ff[,ss[2]]

  x = matrix(rep(0, 2*np), nrow=2)

  x[,1] = x1
  e=1

  for (i in 2:np){
    f = ff[,i-1]
    x2 = x1 + del * c(e*f[1]*(1-f[1]*f[1]/3)-x1[2], x1[1])
    x[,i] = x2
    x1 = x2
  }
  res = x
}

tao = .2
del = .001
tt = seq(0,tao,del)
np = length(t)
ff = matrix(rep(c(2,0),np), nrow=2)

for (i in 1:1000){
  ff = Integral(ff, tao) 
}

plot(ff[1,], type='l')


