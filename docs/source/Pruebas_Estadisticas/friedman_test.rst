friedman.test
=============

Realiza una prueba de suma de rangos de Friedman con datos bloqueados no replicados.

.. code:: R

   ## Hollander & Wolfe (1973), p. 140ff.
   ## Comparison of three methods ("round out", "narrow angle", and
   ##  "wide angle") for rounding first base.  For each of 18 players
   ##  and the three method, the average time of two runs from a point on
   ##  the first base line 35ft from home plate to a point 15ft short of
   ##  second base is recorded.
   RoundingTimes <-
   matrix(c(5.40, 5.50, 5.55,
         5.85, 5.70, 5.75,
         5.20, 5.60, 5.50,
         5.55, 5.50, 5.40,
         5.90, 5.85, 5.70,
         5.45, 5.55, 5.60,
         5.40, 5.40, 5.35,
         5.45, 5.50, 5.35,
         5.25, 5.15, 5.00,
         5.85, 5.80, 5.70,
         5.25, 5.20, 5.10,
         5.65, 5.55, 5.45,
         5.60, 5.35, 5.45,
         5.05, 5.00, 4.95,
         5.50, 5.50, 5.40,
         5.45, 5.55, 5.50,
         5.55, 5.55, 5.35,
         5.45, 5.50, 5.55,
         5.50, 5.45, 5.25,
         5.65, 5.60, 5.40,
         5.70, 5.65, 5.55,
         6.30, 6.30, 6.25),
       nrow = 22,
       byrow = TRUE,
       dimnames = list(1 : 22,
                       c("Round Out", "Narrow Angle", "Wide Angle")))
   friedman.test(RoundingTimes)
   ## => strong evidence against the null that the methods are equivalent
   ##    with respect to speed

   wb <- aggregate(warpbreaks$breaks,
                by = list(w = warpbreaks$wool,
                          t = warpbreaks$tension),
                FUN = mean)
   wb
   friedman.test(wb$x, wb$w, wb$t)
   friedman.test(x ~ w | t, data = wb)



