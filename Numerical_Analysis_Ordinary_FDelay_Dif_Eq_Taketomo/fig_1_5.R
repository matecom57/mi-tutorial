Resuelve <- function(vali=c(0,0)){
   x1 = vali

   del = .001
   epsi=5

   t = seq(0,20,del)
   np = length(t)
   x = matrix(rep(0, 2*np), nrow=2)

   x[,1] = x1
   for (i in 2:np){
      x2 = x1 + del* c(epsi*x1[1] * (1 - x1[1]^2/3) - x1[2], x1[1])
      x[,i] = x2
      x1 = x2
   }
   res = list(x=x)
}

x1 = seq(.1,5,.1)
r = Resuelve(c(3,1))

plot(r$x[1,], r$x[2,], type='l')

for (x in x1){
  r = Resuelve(c(x,1))
  points(r$x[1,], r$x[2,], type='l')
}




