Ecuaciones
==========

.. math::

   \dot{x}_1 = x_1 - x_1 x_2 - 0.4 x_1 u_1

   \dot{x}_2 = -x_2 + x_1 x_2 - 0.2 x_2 u_2

.. math::

   \begin{pmatrix}
   \dot{x}_1  \\
   \dot{x}_2 
   \end{pmatrix} =
  \begin{pmatrix}
   1 & -x_1 \\
   x_2 & -1
   \end{pmatrix} \begin{pmatrix}
   x_1  \\
   x_2
   \end{pmatrix} - \begin{pmatrix}
   x_2+ 0.4u_1 & 0 \\
   0 & -x_1 + 0.2 u_2
   \end{pmatrix} \begin{pmatrix}
   x_1  \\
   x_2
   \end{pmatrix}

