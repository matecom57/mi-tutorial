bartlett.test {stats}
=====================

Realiza la prueba nula de Bartlett de que las varianzas en cada uno de los grupos (muestras) son las mismas.

.. code:: R

   ## Default S3 method:
   bartlett.test(x, g, ...)

   ## S3 method for class 'formula'
   bartlett.test(formula, data, subset, na.action, ...)

Ejemplos::

.. code:: R

   require(graphics)

   plot(count ~ spray, data = InsectSprays)
   
   bartlett.test(InsectSprays$count, InsectSprays$spray)
   
   bartlett.test(count ~ spray, data = InsectSprays)



