var.test {stats}
================

Realiza una prueba F para comparar las varianzas de dos muestras de poblaciones normales.

.. code:: R

   ## Default S3 method:
   var.test(x, y, ratio = 1,
         alternative = c("two.sided", "less", "greater"),
         conf.level = 0.95, ...)

   ## S3 method for class 'formula'
   var.test(formula, data, subset, na.action, ...)

Ejemplos:

.. code:: R

   x <- rnorm(50, mean = 0, sd = 2)
   y <- rnorm(30, mean = 1, sd = 1)
   var.test(x, y)                  # Do x and y have the same variance?
   var.test(lm(x ~ 1), lm(y ~ 1))  # The same.


