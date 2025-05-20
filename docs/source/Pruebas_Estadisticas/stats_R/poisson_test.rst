poisson.test {stats}
====================

Realiza una prueba exacta de una hipótesis nula simple sobre el parámetro de tasa en la distribución de Poisson, o para la relación entre dos 
parámetros de tasa.

.. code:: R

   poisson.test(x, T = 1, r = 1,
      alternative = c("two.sided", "less", "greater"),
      conf.level = 0.95)

Ejemplos:

.. code:: R

   ### These are paraphrased from data sets in the ISwR package

   ## SMR, Welsh Nickel workers
   poisson.test(137, 24.19893)

   ## eba1977, compare Fredericia to other three cities for ages 55-59
   poisson.test(c(11, 6+8+7), c(800, 1083+1050+878))



