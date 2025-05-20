prop.test 
=========

Esta prueba se puede utilizar para probar la hipótesis nula de que las proporciones (probabilidades de éxito) en varios grupos son las 
mismas, o que son iguales a ciertos valores dados.

.. code:: R

   heads <- rbinom(1, size = 100, prob = .5)
   prop.test(heads, 100)          
   prop.test(heads, 100, correct = FALSE)
 
   ## Data from Fleiss (1981), p. 139.
   ## H0: The null hypothesis is that the four populations from which
   ##     the patients were drawn have the same true proportion of smokers.
   ## A:  The alternative is that this proportion is different in at
   ##     least one of the populations.

   smokers  <- c( 83, 90, 129, 70 )
   patients <- c( 86, 93, 136, 82 )
   prop.test(smokers, patients)

