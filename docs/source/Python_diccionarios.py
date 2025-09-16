Diccionarios
============

Los diccionarios se utilizan para almacenar valores de datos en pares clave:valor.

Un diccionario es una colección ordenada*, modificable y que no permite duplicados.

Los diccionarios se escriben entre llaves y tienen claves y valores:

.. code:: Python

   thisdict = {
     "brand": "Ford",
     "model": "Mustang",
     "year": 1964
   }

Elementos del diccionario
--------------------------

Los elementos del diccionario están ordenados, se pueden modificar y no se permiten duplicados.

Los elementos del diccionario se presentan en pares clave:valor y se puede hacer referencia a ellos utilizando el nombre de la clave.


¿Ordenado o desordenado?
-----------------------

A partir de la versión 3.7 de Python, los diccionarios están ordenados . En Python 3.6 y versiones anteriores, están desordenados .

Cuando decimos que los diccionarios están ordenados, significa que los elementos tienen un orden definido, y ese orden no cambiará.

Desordenado significa que los elementos no tienen un orden definido y no se puede hacer referencia a un elemento mediante un índice.

Cambiable
----------

Los diccionarios son modificables, lo que significa que podemos cambiar, agregar o eliminar elementos después de que se haya creado el diccionario.

No se permiten duplicados
-------------------------

Los diccionarios no pueden tener dos elementos con la misma clave:

Longitud del diccionario
------------------------

Para determinar cuántos elementos tiene un diccionario, utilice la función: ``len()``

Elementos del diccionario: tipos de datos
------------------------------------------

Los valores de los elementos del diccionario pueden ser de cualquier tipo de datos:

El constructor dict()
---------------------

También es posible utilizar el constructor dict() para crear un diccionario.

**Ejemplo**


Usando el método dict() para crear un diccionario:

.. code:: Python

   thisdict = dict(name = "John", age = 36, country = "Norway")
   print(thisdict)


Otro tipo de dato útil incluído en Python es el diccionario (ver Mapping Types — dict). Los diccionarios se encuentran a veces en otros lenguajes como «memorias asociativas» o «arreglos asociativos». A diferencia de las secuencias, que se indexan mediante un rango numérico, los diccionarios se indexan con claves, que pueden ser cualquier tipo inmutable; las cadenas y números siempre pueden ser claves. Las tuplas pueden usarse como claves si solamente contienen cadenas, números o tuplas; si una tupla contiene cualquier objeto mutable directa o indirectamente, no puede usarse como clave. No podés usar listas como claves, ya que las listas pueden modificarse usando asignación por índice, asignación por sección, o métodos como append() y extend().

Es mejor pensar en un diccionario como un conjunto de pares clave:valor con el requerimiento de que las claves sean únicas (dentro de un diccionario). Un par de llaves crean un diccionario vacío: {}. Colocar una lista de pares clave:valor separada por comas dentro de las llaves agrega, de inicio, pares clave:valor al diccionario; esta es, también, la forma en que los diccionarios se muestran en la salida.

Las operaciones principales sobre un diccionario son guardar un valor con una clave y extraer ese valor dada la clave. También es posible borrar un par clave:valor con del. Si usás una clave que ya está en uso para guardar un valor, el valor que estaba asociado con esa clave se pierde. Es un error extraer un valor usando una clave no existente.

Ejecutando list(d) en un diccionario devolverá una lista con todas las claves usadas en el diccionario, en el oden de inserción (si deseas que esté ordenada simplemente usa sorted(d) en su lugar). Para comprobar si una clave está en el diccionario usa la palabra clave in.

Un pequeño ejemplo de uso de un diccionario:

.. code:: Python

   tel = {'jack': 4098, 'sape': 4139}
   tel['guido'] = 4127
   tel

   tel['jack']
   del tel['sape']

   tel['irv'] = 4127
   tel

   list(tel)

   sorted(tel)

   'guido' in tel

   'jack' not in tel

El constructor dict() crea un diccionario directamente desde secuencias de pares clave-valor:

.. code:: Python

   dict([('sape', 4139), ('guido', 4127), ('jack', 4098)])
   {'sape': 4139, 'guido': 4127, 'jack': 4098}


Además, las comprensiones de diccionarios se pueden usar para crear diccionarios desde expresiones arbitrarias de clave y valor:

.. code:: Python

   {x: x**2 for x in (2, 4, 6)}
   {2: 4, 4: 16, 6: 36}

Cuando las claves son cadenas simples, a veces resulta más fácil especificar los pares usando argumentos por palabra clave:

.. code:: Python

   dict(sape=4139, guido=4127, jack=4098)
   {'sape': 4139, 'guido': 4127, 'jack': 4098}

Técnicas de iteración
---------------------

Cuando iteramos sobre diccionarios, se pueden obtener al mismo tiempo la clave y su valor correspondiente usando el método items().

.. code:: Python

   knights = {'gallahad': 'the pure', 'robin': 'the brave'}
   for k, v in knights.items():
     print(k, v)

Cuando se itera sobre una secuencia, se puede obtener el índice de posición junto a su valor correspondiente usando la función enumerate().

.. code:: Python

   for i, v in enumerate(['tic', 'tac', 'toe']):
     print(i, v)




