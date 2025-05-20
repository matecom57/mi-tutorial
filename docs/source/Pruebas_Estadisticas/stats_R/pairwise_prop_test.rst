pairwise.prop.test {stats}
==========================

Calcular comparaciones por pares entre pares de proporciones con corrección para pruebas múltiples

.. code:: R

   pairwise.prop.test(x, n, p.adjust.method = p.adjust.methods, ...)

Ejemplos:

.. code:: R

   smokers  <- c( 83, 90, 129, 70 )
   patients <- c( 86, 93, 136, 82 )
   pairwise.prop.test(smokers, patients)
