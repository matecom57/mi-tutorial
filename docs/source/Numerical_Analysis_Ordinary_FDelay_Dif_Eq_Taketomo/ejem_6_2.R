
tao = 1
niter = 4

Integral <- function(del, f){
np = 100
x = rep(0, np)

x[1] = f[np]
x1 = x[1]

for (i in 2:np){
x2 = x1 - del*2*f[i-1]
x[i] = x2
x1 = x2
}
ret = x
}

np = 100

t = seq(-1*tao,0,length.out = np)

del = t[2] - t[1]

f = rep(1,np)

ff = f
tt = t
f = 1+t
ff = f

for (i in 1:niter){
t = t+tao
x = Integral(del, f)
ff = c(ff, x)
tt = c(tt, t)
f = x
}

plot(tt, ff, type='l')

