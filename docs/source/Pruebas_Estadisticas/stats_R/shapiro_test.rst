shapiro.test {stats}
====================

Realiza la prueba de normalidad de Shapiro-Wilk.

.. code:: R

   shapiro.test(x)

Ejemplos:

.. code:: R

   shapiro.test(rnorm(100, mean = 5, sd = 3))
   
   shapiro.test(runif(100, min = 2, max = 4))

