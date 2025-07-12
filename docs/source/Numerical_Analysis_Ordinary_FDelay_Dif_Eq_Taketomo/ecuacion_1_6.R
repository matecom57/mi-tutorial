del = .001
epsi=1

t = seq(0,40,del)
np = length(t)

GenFun <- function(){   
  x = matrix(rep(0, 2*np), nrow=2)

  x1 = c(2,0)
  x[,1] = x1

  for (i in 2:np){
    x2 = x1 + del* c(epsi*x1[1] * (1 - x1[1]^2/3) - x1[2], x1[1])
    x[,i] = x2
    x1 = x2
  }
  ret = x
}

GenFunRet <- function(){
  tao = .2

  t = seq(0,tao,del)
  np = length(t)

  x = matrix(rep(c(2,0), np), nrow=2)

  x1 = c(2,0)
  x[,1] = x1

  for (i in 2:np){
    x2 = x1 + del* c(epsi*x1[1] * (1 - x1[1]^2/3) - x1[2], x1[1])
    x[,i] = x2
    x1 = x2
  }
  ret = list(t=t, x=x)
}


#X <- GenFun()
Y <- GenFunRet()

print('---------------------------------------')

plot(c(0,4),c(-2,2))

#points(Y$t, Y$x[2,], type='l', col='red', lwd=3, main='dos')


