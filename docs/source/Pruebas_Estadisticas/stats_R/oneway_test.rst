oneway.test {stats}
===================

Comprueba si dos o más muestras de distribuciones normales tienen la misma media. No se asume necesariamente que las varianzas sean iguales.

.. code:: R

   oneway.test(formula, data, subset, na.action, var.equal = FALSE)

Ejemplos:

.. code:: R

   ## Not assuming equal variances
   oneway.test(extra ~ group, data = sleep)
   ## Assuming equal variances
   oneway.test(extra ~ group, data = sleep, var.equal = TRUE)
   ## which gives the same result as
   anova(lm(extra ~ group, data = sleep))

