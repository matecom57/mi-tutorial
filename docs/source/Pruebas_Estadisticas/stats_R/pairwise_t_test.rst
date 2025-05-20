pairwise.t.test {stats}
=======================

Calcular comparaciones por pares entre niveles de grupo con correcciones para pruebas múltiples

.. code:: R

   pairwise.t.test(x, g, p.adjust.method = p.adjust.methods,
                pool.sd = !paired, paired = FALSE,
                alternative = c("two.sided", "less", "greater"),
                ...)

Ejemplos:

.. code:: R

   attach(airquality)
   Month <- factor(Month, labels = month.abb[5:9])
   pairwise.t.test(Ozone, Month)
   pairwise.t.test(Ozone, Month, p.adjust.method = "bonf")
   pairwise.t.test(Ozone, Month, pool.sd = FALSE)
  detach()

