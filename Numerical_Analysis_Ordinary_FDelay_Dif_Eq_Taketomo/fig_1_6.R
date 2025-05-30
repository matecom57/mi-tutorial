Resuelve_tao <- function(vali=c(0,0), tao=0, f=0, del){
   x1 = vali
   np = length(f)
   epsi=1
   xc = f
   x = matrix(rep(0, 2*np), nrow=2)

   x[,1] = x1
   for (i in 2:np){
      x2 = x1 + del* c(epsi*xc[i-1] * (1 - xc[i-1]^2/3) - x1[2], x1[1])
      x[,i] = x2
      x1 = x2
   }
   res = list(t=t, x=x)
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

tao = .6
del = .001
np = round(tao/del)+1
t = seq(0,tao, length.out=np)
del = t[2] - t[1]

x1 = c(2,0)
f = x1[1] * rep(1,np)

r = Resuelve(x1)

print(names(r))

plot(r$t, r$x[1,], type='l')

tt = []
xx = []

for (i in 1:40){
  rt = Resuelve_tao(x1,tao,f, del)
  xi = rt$x[,np]
  f = rt$x[1,]
  tt = c(tt, i*tao+t[2:np])
  xx = c(xx, rt[1,])
}

points(tt, xx, type='l', col='red', lwd=3)





