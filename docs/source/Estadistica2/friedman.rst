Friedman.test
=============

.. code:: R

   y = matrix(1:12, ncol=3)
   > y
     [,1] [,2] [,3]
     [1,]    1    5    9
     [2,]    2    6   10
     [3,]    3    7   11
     [4,]    4    8   12
   > friedman.test(y)

	Friedman rank sum test

   data:  y
   Friedman chi-squared = 8, df = 2, p-value = 0.01832

========================

