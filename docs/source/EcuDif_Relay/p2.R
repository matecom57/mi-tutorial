tao = .5

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

np = 100

t = seq(-1*tao,0,length.out = np)

del = t[2] - t[1]

f = rep(1,np)

x = Integral(del, f)

ff = c(f, x)
tt = c(t, t+tao)

f = x

x = Integral(del, f)

ff = c(ff, x)
tt = c(tt, t+2*tao)

f = x
      
x = Integral(del, f)
   
ff = c(ff, x)
tt = c(tt, t+3*tao)

f = x

x = Integral(del, f)

ff = c(ff, x)
tt = c(tt, t+3*tao)


plot(tt, ff, type='l')


x = rep(1,np)
xx = x
tt = t
nt = 1

res = 1
for (k in 1:nt){
  t = t + tao 
  res = res + (-1)^k *(t - (k-1)*tao)^k / factorial(k)
  xx = c(xx, res)
  tt = c(tt,t)
}  

#plot(tt, xx, type='l')

