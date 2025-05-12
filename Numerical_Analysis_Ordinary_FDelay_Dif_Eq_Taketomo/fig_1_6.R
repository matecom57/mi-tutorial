Resuelve <- function(vali=c(0,0)){
   x1 = vali

   del = .001
   epsi=1

   t = seq(0,40,del)
   np = length(t)
   x = matrix(rep(0, 2*np), nrow=2)

   x[,1] = x1
   for (i in 2:np){
      x2 = x1 + del* c(epsi*x1[1] * (1 - x1[1]^2/3) - x1[2], x1[1])
      x[,i] = x2
      x1 = x2
   }
   res = list(t=t, v=x[1,])
}

Integral <- function(del, f){
  np = 100
  epsi = 1
  x = matrix(rep(0, 2*np), nrow=2)

  x[,1] = f[,np]
  x1 = x[,1]

  for (i in 2:np){
    x2 = x1 - del * c(epsi * f[1,i-1] * (1 - f[1,i-1] * f[1,i-1]/3) - f[2,np], f[1,np])  
    x[,i] = x2
    x1 = x2
  }
  ret = x
}

np = 100

tao=.02

t = seq(-1*tao,0,length.out = np)

del = t[2] - t[1]

f = matrix(rep(c(2,0),2*np), nrow=2)
ff = f
tt = t

niter=10

for (i in 1:niter){
  t = t+tao
  x = Integral(del, f)
  ff = cbind(ff, x)
  tt = cbind(tt, t)
  f = x
}

r = Resuelve(c(2,0))

#plot(r$t, r$v, type='l')

print(length(tt))
print(dim(ff))

plot(tt, ff[1,1:1100], type='l', col='red')




