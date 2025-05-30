SolucionPPU_3_salto_chamba <- function(del=0, xx=0, uu=0){
     ss = dim(xx)
     n = ss[1]

     dwp = DWP*sqrt(del)*runif(n)

     pp = matrix(rep(0,3*n), ncol=3)

     pp[n,] = c(0,0,0)

     p2 = pp[n,]
     u2 = uu[n,]
     w2 = dwp[n]
     x2 = xx[n,]

     for (i in (n-1):1){
             r = funP_ART2_chamba(x2, p2,u2)
             p11 = p2[1] - (TT[i+1]-TT[i]) * r[1] - p2[1] * w2 
             p12 = p2[2] - (TT[i+1]-TT[i]) * r[2] - p2[2] * w2 
             p13 = p2[3] - (TT[i+1]-TT[i]) * r[3] - p2[3] * w2 
             p2 = c(p11, p12, p13)
             pp[i,] = p2
             u2 = uu[i,]
             w2 = dwp[i]
             x2 = xx[i,]
     }
     res = pp
}

