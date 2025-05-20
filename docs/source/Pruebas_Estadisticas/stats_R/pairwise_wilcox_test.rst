pairwise.wilcox.test {stats}
============================

Calcular comparaciones por pares entre niveles de grupo con correcciones para pruebas múltiples.

.. code:: R

   pairwise.wilcox.test(x, g, p.adjust.method = p.adjust.methods,
                      paired = FALSE, ...)

Ejemplos:

.. code::R

   attach(airquality)
   Month <- factor(Month, labels = month.abb[5:9])
   ## These give warnings because of ties :
   pairwise.wilcox.test(Ozone, Month)
   pairwise.wilcox.test(Ozone, Month, p.adjust.method = "bonf")
   detach()

