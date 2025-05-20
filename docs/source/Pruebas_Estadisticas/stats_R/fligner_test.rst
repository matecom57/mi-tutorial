fligner.test {stats}
====================

Realiza una prueba de Fligner-Killeen (mediana) de la hipótesis nula de que las varianzas en cada uno de los grupos (muestras) son las mismas.

.. code:: R

   ## Default S3 method:
   fligner.test(x, g, ...)

   ## S3 method for class 'formula'
   fligner.test(formula, data, subset, na.action, ...)

Ejemplos:

.. code:: R

   require(graphics)

   plot(count ~ spray, data = InsectSprays)
   fligner.test(InsectSprays$count, InsectSprays$spray)
   fligner.test(count ~ spray, data = InsectSprays)
   ## Compare this to bartlett.test()

