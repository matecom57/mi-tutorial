np = 50
tao = 1
t = seq(-tao,0,length.out = np)
del = t[2]- t[1]
landa = 1.8

Integral <- function(y0=0, yi=0){
  y = seq(0,1,length.out = np) 
  
  y1 = y0
  y[1] = y1

  for (i in 2:np){
    y2 = y1 + del*(landa*y1*(1-yi[i-1]))
    y[i] = y2
    y1 = y2
  }
  ret = y
}

y0 = .5
yi = rep(.5, np)


tt = c()
yy = c()
t = tao+t

for (i in 1:100){
  tt = c(tt, t)
  y = Integral(y0, yi)
  yy = c(yy, y)
  yi = y
  y0 = y[np]
  print(y0)
  t = t+tao 
}

print(length(tt))
print(length(yy))
 
plot(tt, yy, type='l')


