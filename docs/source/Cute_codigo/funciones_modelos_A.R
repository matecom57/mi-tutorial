Calu1u2u3 <- function(x=0, p=0, i=0){

	u1 <- -1*A1*p[1]*x[1] 
	u2 <- -1*B1*p[2]*x[2] 
	u3 <- -1*C1*p[3]*x[3] 

#        print(c(u1,u2,u3))

	if (u1 < 0){
		u1 = 0
	} else if (u1 > 1){
		u1 = 1
	}
	if (u2 < 0){
		u2 = 0
	} else if (u2 > 1){
		u2 = 1
	}
	if (u3 < 0){
		u3 = 0
	} else if (u3 > 1){
		u3 = 1
	}

	res = c(u1, u2, u3)
}

Calu1u2u3OLD <- function(x=0, p=0, i=0){

        z = c(0,0,0)
        if (length(which(i == II)) > 0){
                z = K(rnorm(3))
        }

        u1 <- -1*A1*p[1]*x[1] + p[1]*x[1]*z[1]
        u2 <- -1*B1*p[2]*x[2] + p[2]*x[2]*z[2]
        u3 <- -1*C1*p[3]*x[3] + p[3]*x[3]*z[3]

        if (u1 < 0){
                u1 = 0
        } else if (u1 > 1){
                u1 = 1
        }
        if (u2 < 0){
                u2 = 0
        } else if (u2 > 1){
                u2 = 1
        }
        if (u3 < 0){
                u3 = 0
        } else if (u3 > 1){
                u3 = 1
        }

        res = c(u1, u2, u3)
}


funX_ART2 <- function(x=0,u=0){	
    y1 = x[1]*( 1 - beta1*x[2] - delta1*x[3] - A1 *u[1])
    y2 = x[2]*( 1 - beta1*x[1] - epsilon1*x[3] - B1 *u[2])
    y3 = x[3]*(-1 + delta1*x[1] + epsilon1*x[2] - C1*u[3])
    res = c(y1, y2, y3)
}

funX_ART2_chamba <- function(x=0,u=0){	
#	ni = 0.5; w = 0.4; k = 0.7
# ni = 0.3; w = 0.2; k = 0.3
# ni = 0.2; w = 0.1; k = 0.3
# ni = 0.1; w = 0.2; k = 0.3
# ni = 0.3; w = 0.2; k = 0.5
 ni = 0.3; w = 0.4; k = 0.1

    y1 = x[1]*( ni - beta1*x[2] - delta1*x[3] - A1 *u[1])
    y2 = x[2]*( w - beta1*x[1] - epsilon1*x[3] - B1 *u[2])
    y3 = x[3]*(-k + delta1*x[1] + epsilon1*x[2] - C1*u[3])
	res = c(y1, y2, y3)
}

funP_ART2 <- function(x=0,p=0,u=0){
    p1 = x[1] + p[1] * (-1 + beta1*x[2] + A1 *u[1]+ delta1*x[3]) + beta1*p[2]*x[2] - delta1*p[3]*x[3]
    p2 = x[2] + p[2]*  (-1  + beta1*x[1] +  B1 *u[2] + epsilon1*x[3]) - epsilon1*p[3]*x[3] + beta1*p[1]*x[1]
    p3 = x[3]+  p[3]* (1 +C1*u[3] - epsilon1*x[2] - delta1*x[1])+ delta1*p[1]*x[1] + epsilon1*p[2]*x[2]
	res = c(p1, p2, p3)
}

funP_ART2_chamba <- function(x=0,p=0,u=0){
#	ni = 0.5; w = 0.4; k = 0.7
# ni = 0.3; w = 0.2; k = 0.3
# ni = 0.2; w = 0.1; k = 0.3
# ni = 0.1; w = 0.2; k = 0.3
# ni = 0.3; w = 0.2; k = 0.5
 ni = 0.3; w = 0.4; k = 0.1

    p1 = x[1] + p[1] * (-ni + beta1*x[2] + A1 *u[1]+ delta1*x[3]) + beta1*p[2]*x[2] - delta1*p[3]*x[3]
    p2 = x[2] + p[2]*  (-w  + beta1*x[1] +  B1 *u[2] + epsilon1*x[3]) - epsilon1*p[3]*x[3] + beta1*p[1]*x[1]
    p3 = x[3]+  p[3]* (k +C1*u[3] - epsilon1*x[2] - delta1*x[1])+ delta1*p[1]*x[1] + epsilon1*p[2]*x[2]
	res = c(p1, p2, p3)
}

