Resuelve_tao <- function(f=0, del){
   ss = dim(f)
   np = ss[2]
   x1 = f[,np]
   epsi=1
  
   x = matrix(rep(0, 2*np), nrow=2)

   x[,1] = x1

   for (i in 2:np){
      ff = f[,i-1]
      x2 = x1 + del* c(epsi*ff[1] * (1 - ff[1]^2/3) - x1[2], x1[1])
      x[,i] = x2
      x1 = x2
   }
   res = x
}

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
   res = list(t=t, x=x)
}

tao = .2
del = .001
x1 = c(2,0)

r = Resuelve(x1)
plot(r$t, r$x[1,], type='l', ylim=c(-2.5, 2.5))

ban = 0

if (ban == 0){
   print('=================== entro ===================')
   np = round(tao/del)+1
   t = seq(0,tao, length.out=np)
   del = t[2] - t[1]

   x1 = c(2,0)
   f = matrix(rep(x1,np), nrow=2)

nrep1 = 70
nrep2 = 200
   for (i in 1:nrep2){
      f = Resuelve_tao(f, del)
      t = t+tao
      points(t, f[1,], type='l', col='red', lwd=3)
   }
}



