sed
===

El comando ``sed`` (**s**tream **ed**itor) es una herramienta muy poderosa y elegante para la manipulación de texto. El comando te permite realizar operaciones de búsqueda, sustitución y manipulación de texto ya sea en archivos o basicamente de cualquier argumento de salida de otros comandos. Veamos un poco más.

Sintaxis basica
----------------------------------------

.. code:: Bash

   sed [OPCIONES] [SCRIPT] [ARCHIVO]
Hagamos un ejemplo:

.. code:: Bash

   > echo 
   "Pepe Pecas pica papas con un pico, 
   con un pico pica papas Pepe Pecas. 
   Si Pepe Pecas pica papas con un pico, 
   ¿donde esta el pico con que Pepe Pecas pica papas?" 
   >> Pepe_Pecas.txt

De este texto voy a reemplazar todas las palabras "papas" por "manzana":

.. code:: Bash

   sed 's/papas/manzana/g' Pepe_Pecas.txt
.. code:: Bash

   > cat Pepe_Pecas.txt
   
   "Pepe Pecas pica manzana con un pico, 
   con un pico pica manzana Pepe Pecas. 
   Si Pepe Pecas pica manzana con un pico, 
   ¿donde esta el pico con que Pepe Pecas pica manzana?"

Tambien podemos contar cuantas veces se menciona a Pepe en el texto:

.. code:: Bash

   > sed 's/Pepe/Pepe\n/g' Pepe_Pecas.txt | grep -c "Pepe"
   > 4

O porque no agregar una linea al final del texto:

.. code:: Bash

   > sed '$a\Definitivamente Pepe perdio el Pico' Pepe_Pecas.txt
   
   > cat Pepe_Pecas.txt
   
   "Pepe Pecas pica papas con un pico, 
   con un pico pica papas Pepe Pecas. 
   Si Pepe Pecas pica papas con un pico, 
   ¿donde esta el pico con que Pepe Pecas pica papas?
   Definitivamente Pepe perdio el Pico"

 `Aqui <https://www.digitalocean.com/community/tutorials/the-basics-of-using-the-sed-stream-editor-to-manipulate-text-in-linux>`_  te dejo un manual para más trucos con ``sed``

