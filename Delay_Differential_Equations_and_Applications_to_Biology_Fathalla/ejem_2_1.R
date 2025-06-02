Solucion_tao <- function(f=0, del=0){
   np = length(f)
   y = rep(0, np)
   y1 = f[np]
   y[1] = y1

   for (i in 2:np){
      y2 = y1 + del * 6 * f[i-1]
      y[i] = y2
      y1 = y2
   }
   ret = y
}

tao = 1

np = 100

t = seq(0, tao, length.out=np)
del = t[2]-t[1]

f = t

t2 = tao+t
y2 = 3*(t2 - 1)^2 + 1

t3 = 2*tao+t
y3 = 6*(t3 - 2)^3 + 6 * t3 -8

tt = c(t, t2, t3)
yy = c(f, y2, y3)

plot(tt, yy, type='l', xlim=c(0,3))
#points(t, f, type='l', col='red')

f = Solucion_tao(f, del)

points(t2, f, type='l', col='red')

f = Solucion_tao(f, del)

points(t3, f, type='l', col='red')


