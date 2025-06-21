Titulo <- function(tit='')
  print(paste('-----------------------', tit, '-----------------------'))

Linea <- function()
   print('--------------------------------------')

correlacion <- function(x=0, y=0){
  mx = mean(x)
  my = mean(y)
  num = sum((x-mx) * (y-my))
  den = sqrt(sum((x-mx)^2)) * sqrt(sum((y-my)^2))
  res = num/den
}


