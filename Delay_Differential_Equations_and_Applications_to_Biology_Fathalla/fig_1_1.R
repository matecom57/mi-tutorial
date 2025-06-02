tao = 1
alfa = 3.5

np = 100

t = seq(0, 1, length.out=np)
del = t[2]-t[1]

f = rep(0, np)

Solucion_tao <- function(xi, f, del){
   np = length(f)
   y = rep(0, np)
   y1 = xi
   y[1] = y1

   for (i in 2:np){
      y2 = y1 + del * alfa * y1 * (1-f[i-1])
      y[i] = y2
      y1 = y2
   }
   ret = y
}


f = Solucion_tao(1, f, del)

plot(t,f, type='l', ylim=c(0, 5), xlim=c(0,50))

for (k in 1:20){
  t = tao+t
  f = Solucion_tao(f[np], f, del)
  points(t,f, type='l')
} 



