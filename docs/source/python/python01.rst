Python
======

https://es.wikipedia.org/wiki/Python

Python es un lenguaje de alto nivel de programación interpretado cuya filosofía hace hincapié en la legibilidad de su código. Se 
trata de un lenguaje de programación multiparadigma, ya que soporta parcialmente la orientación a objetos, programación imperativa y, 
en menor medida, programación funcional. Es un lenguaje interpretado, dinámico y multiplataforma.

Administrado por Python Software Foundation, posee una licencia de código abierto, denominada Python Software Foundation License.[3]​ 
Python se clasifica constantemente como uno de los lenguajes de programación más populares, siendo ya en 2025 el más popular y además 
con una amplia diferencia récord histórico de más de 15 puntos porcentuales sobre el siguiente.[4]​

Historia


Python fue creado a finales de los años ochenta por Guido van Rossum en Stichting Mathematisch Centrum (CWI),[5]​ en Países Bajos, 
como un sucesor del lenguaje de programación ABC, capaz de manejar excepciones e interactuar con el sistema operativo Amoeba.[6]​

El nombre del lenguaje proviene de la afición de su creador por los humoristas británicos Monty Python.[7]​

Guido van Rossum es el principal autor de Python, y su continuo rol central en decidir la dirección de Python es reconocido, 
refiriéndose a él como Benevolente Dictador Vitalicio (en inglés: Benevolent Dictator for Life, BDFL); sin embargo el 12 de julio de 
2018 declinó de dicha situación de honor sin dejar un sucesor o sucesora y con una declaración altisonante:[8]​

Entonces, ¿qué van a hacer todos ustedes? ¿Crear una democracia? ¿Anarquía? ¿Una dictadura? ¿Una federación?
Guido van Rossum[9]​

El 20 de febrero de 1991, van Rossum publicó el código por primera vez en alt.sources, con el número de versión 0.9.0.[10]​ En esta 
etapa del desarrollo ya estaban presentes clases con herencia, manejo de excepciones, funciones y los tipos modulares, como: str, 
list, dict, entre otros. Además en este lanzamiento inicial aparecía un sistema de módulos adoptado de Modula-3; van Rossum describe 
el módulo como «una de las mayores unidades de programación de Python».[5]​ El modelo de excepciones en Python es parecido al de 
Modula-3, con la adición de una cláusula else.[6]​ En el año 1994 se formó comp.lang.python, el foro de discusión principal de Python, 
marcando un hito en el crecimiento del grupo de usuarios de este lenguaje.

Python alcanzó la versión 1.0 en enero de 1994. Una característica de este lanzamiento fueron las herramientas de la programación 
funcional: lambda, reduce, filter y map.[11]​ Van Rossum explicó que «hace 12 años, Python adquirió lambda, reduce(), filter() y 
map(), cortesía de Amrit Perm, un hacker informático de Lisp que las implementó porque las extrañaba».[12]​

La última versión liberada proveniente de CWI fue Python 1.2. En 1995, van Rossum continuó su trabajo en Python en la Corporation for 
National Research Initiatives (CNRI) en Reston, Virginia, donde lanzó varias versiones del software.

Durante su estancia en CNRI, van Rossum lanzó la iniciativa Computer Programming for Everybody (CP4E), con el fin de hacer la 
programación más accesible a más gente, con un nivel de 'alfabetización' básico en lenguajes de programación, similar a la 
alfabetización básica en inglés y habilidades matemáticas necesarias por muchos trabajadores. Python tuvo un papel crucial en este 
proceso: debido a su orientación hacia una sintaxis limpia, ya era idóneo, y las metas de CP4E presentaban similitudes con su 
predecesor, ABC. El proyecto fue patrocinado por DARPA.[13]​ Para el año 2007, el proyecto CP4E se encontraba inactivo;[14]​ a pesar de 
ello, Python continúa intentando ser fácil de aprender y no muy arcano en su sintaxis y semántica, con el objetivo de ser entendible 
incluso para no-programadores.

En el año 2000, el equipo principal de desarrolladores de Python se cambió a BeOpen.com para formar el equipo BeOpen PythonLabs. CNRI 
pidió que la versión 1.6 fuera pública, continuando su desarrollo hasta que el equipo de desarrollo abandonó CNRI; su programa de 
lanzamiento y el de la versión 2.0 tenían una significativa cantidad de traslapo.[15]​ Python 2.0 fue el primer y único lanzamiento de 
BeOpen.com. Después que Python 2.0 fuera publicado por BeOpen.com, Guido van Rossum y los otros desarrolladores de PythonLabs se 
unieron en Digital Creations.

Python 2.0 tomó una característica mayor del lenguaje de programación funcional Haskell: listas por comprensión. La sintaxis de 
Python para esta construcción es muy similar a la de Haskell, salvo por la preferencia de los caracteres de puntuación en Haskell, y 
la preferencia de Python por palabras claves alfabéticas. Python 2.0 introdujo además un sistema de recolección de basura capaz de 
recolectar referencias cíclicas.[15]​

Posterior a este doble lanzamiento, y después que van Rossum dejara CNRI para trabajar con desarrolladores de software comercial, 
quedó claro que la opción de usar Python con software disponible bajo la GNU GPL era muy deseable. La licencia usada entonces, la 
Python License, incluía una cláusula estipulando que la licencia estaba gobernada por el estado de Virginia, por lo que, bajo la 
óptica de los abogados de Free Software Foundation (FSF), se hacía incompatible con GPL. Para las versiones 1.61 y 2.1, CNRI y FSF 
hicieron compatibles la licencia de Python con GPL, renombrándola como Python Software Foundation License. En el año 2001, van Rossum 
fue premiado con el FSF Award for the Advancement of Free Software.

Python 2.1 fue un trabajo derivado de las versiones 1.6.1 y 2.0. Es a partir de este momento que Python Software Foundation (PSF) 
pasa a dirigir el proyecto, organizada como una organización sin ánimo de lucro fundada en el año 2001, tomando como modelo a la 
Apache Software Foundation.[3]​ Incluida con este lanzamiento estuvo una implementación del alcance de variables más parecida a las 
reglas del static scoping originado por Scheme.[16]​

Una innovación mayor en Python 2.2 fue la unificación de los tipos en Python (tipos escritos en C), y clases (tipos escritos en 
Python) dentro de una jerarquía. Esa unificación logró un modelo de objetos de Python puro y consistente.[17]​ También fueron 
agregados los generadores, que fueron inspirados por el lenguaje Icon.[18]​

Las adiciones a la biblioteca estándar de Python y las decisiones sintácticas fueron influenciadas fuertemente por Java en algunos 
casos: el paquete logging,[19]​ introducido en la versión 2.3, está basado en log4j; el parser SAX, introducido en 2.0; el paquete 
threading,[20]​ cuya clase Thread expone un subconjunto de la interfaz de la clase homónima en Java.

Python 2.7.x (última versión de la serie Python 2.x) fue oficialmente descontinuado el 1 de enero de 2020 (paso inicialmente planeado 
para 2015), por lo que ya no se publicarán parches de seguridad y otras mejoras para él.[21]​[22]​ Con el final del ciclo de vida de 
Python 2, solo tienen soporte la rama Python 3.6.x[23]​ y posteriores.

Con Python 3.5 llegaría el soporte incluido para entrada/salida asíncrona a través de la biblioteca asyncio, orientada a aplicaciones 
que requieren alto rendimiento de código concurrente, como servidores web, bibliotecas de conexión de bases de datos y colas de 
tareas distribuidas.[24]​

Evolución de Python 3.x
------------------------

A continuación, se detallan las características más destacadas de las versiones recientes de Python 3.x:

Python 3.6[25]​ (23 de diciembre de 2016):

* Literales de cadena formateados (f-strings): Introducción de una nueva forma de formatear cadenas utilizando una sintaxis más 
sencilla y legible.

* Guiones bajos en literales numéricos: Permite mejorar la legibilidad de los números grandes al permitir el uso de guiones bajos 
como 
separadores.

* Anotaciones de variables: Se añadió una sintaxis estándar para las anotaciones de tipo en variables.

* Generadores y comprensiones asíncronos: Facilitan la escritura de código asíncrono más claro y eficiente.

Python 3.7[26]​ (27 de junio de 2018):
--------------

* Módulo dataclasses: Proporciona un decorador y funciones para crear clases que solo contienen datos, reduciendo el código 
repetitivo.

* Módulo contextvars: Permite manejar variables de contexto, útiles en programación asíncrona.

* Nuevas funciones en asyncio: Mejoras significativas en el módulo asyncio, incluyendo nuevas funciones y optimizaciones.

Python 3.8[27]​ (14 de octubre de 2019):
--------------

* Operador de asignación en expresiones (:=): Conocido como el "operador morsa", permite asignar valores a variables como parte de 
una 
expresión.

* Parámetros posicionales-only: Permite especificar que ciertos parámetros de una función deben ser pasados solo por posición, no por 
nombre.

* Módulo importlib.metadata: Proporciona una forma de acceder a la metadata de los paquetes instalados.

Python 3.9[28]​ (5 de octubre de 2020):
--------------

* Operadores de unión y actualización en diccionarios: Se introdujeron los operadores | y |= para unir y actualizar diccionarios de 
manera más intuitiva.

* Soporte para anotaciones de tipo genéricas en las colecciones estándar: Simplifica la especificación de tipos en estructuras de 
datos.
* Módulo zoneinfo: Incorpora la base de datos de zonas horarias IANA directamente en la biblioteca estándar.

Python 3.10[29]​ (4 de octubre de 2021):
---------------

* Estructuras de control match y case: Implementación de la coincidencia de patrones estructurales, similar a switch en otros 
lenguajes.

* Mejoras en los mensajes de error: Mensajes de error más precisos y descriptivos para facilitar la depuración.

* Soporte para anotaciones de tipo más precisas: Incluye la unión de tipos con el operador |.

Python 3.11[30]​ (24 de octubre de 2022):
--------------

* Mejoras significativas en el rendimiento: Python 3.11 es entre un 10% y un 60% más rápido que Python 3.10.

* Grupos de excepciones y except*: Permite manejar múltiples excepciones simultáneamente de manera más eficiente.

* Módulo tomllib: Añade soporte para analizar archivos TOML en la biblioteca estándar.
* Mejoras en los rastreos de errores: Señala con mayor precisión la ubicación exacta de los errores en el código.

En la actualidad, Python se aplica en los campos de inteligencia artificial y machine learning.[31]​

Características y paradigmas
----------------------------

Python es un lenguaje de programación multiparadigma. Esto significa que más que forzar a los programadores a adoptar un estilo 
particular de programación, permite varios estilos: programación orientada a objetos, programación imperativa y programación 
funcional. Otros paradigmas están soportados mediante el uso de extensiones.

Python usa tipado dinámico y conteo de referencias para la gestión de memoria.

Una característica importante de Python es la resolución dinámica de nombres; es decir, lo que enlaza un método y un nombre de 
variable durante la ejecución del programa (también llamado enlace dinámico de métodos).

Otro objetivo del diseño del lenguaje es la facilidad de extensión. Se pueden escribir nuevos módulos fácilmente en C o C++. Python 
puede incluirse en aplicaciones que necesitan una interfaz programable.[32]​

Aunque la programación en Python podría considerarse en algunas situaciones hostil a la programación funcional tradicional expuesta 
por Lisp, existen bastantes analogías entre Python y los lenguajes minimalistas de la familia Lisp (como Scheme).

Filosofía
---------

Los usuarios de Python se refieren a menudo a la filosofía de Python, que es bastante similar a la filosofía de Unix. El código que 
siga los principios de Python es reconocido como «pythónico». Estos principios fueron descritos por el desarrollador de Python Tim 
Peters en El Zen de Python:

Bello es mejor que feo.
Explícito es mejor que implícito.
Simple es mejor que complejo.
Complejo es mejor que complicado.
Plano es mejor que anidado.
Disperso es mejor que denso.
La legibilidad cuenta.
Los casos especiales no son tan especiales como para quebrantar las reglas.
Lo práctico gana a lo puro.
Los errores nunca deberían dejarse pasar silenciosamente.
A menos que hayan sido silenciados explícitamente.
Frente a la ambigüedad, rechaza la tentación de adivinar.
Debería haber una —y preferiblemente solo una— manera obvia de hacerlo.
Aunque esa manera puede no ser obvia al principio a menos que usted sea holandés.[33]​
Ahora es mejor que nunca.
Aunque nunca es a menudo mejor que ya mismo.
Si la implementación es difícil de explicar, es una mala idea.
Si la implementación es fácil de explicar, puede que sea una buena idea.
Los espacios de nombres (namespaces) son una gran idea. ¡Hagamos más de esas cosas!
Tim Peters, El Zen de Python

Desde la versión 2.1.2, Python incluye estos puntos (en su versión original en inglés) como un huevo de Pascua que se muestra al 
ejecutar import this.[34]​

Modo interactivo
----------------

El intérprete de Python estándar incluye un modo interactivo en el cual se escriben las instrucciones en una especie de intérprete de 
comandos: las expresiones pueden ser introducidas una a una, pudiendo verse el resultado de su evaluación inmediatamente, lo que da 
la posibilidad de probar porciones de código en el modo interactivo antes de integrarlo como parte de un programa. Esto resulta útil 
tanto para las personas que se están familiarizando con el lenguaje como para los programadores más avanzados.

Existen otros programas, como IDLE, bpython e IPython,[35]​ que añaden funcionalidades extra al modo interactivo, como completamiento 
automático de código y coloreado de la sintaxis del lenguaje.

Elementos del lenguaje y sintaxis
Python está destinado a ser un lenguaje de fácil lectura. Su formato es visualmente ordenado y, a menudo, usa palabras clave en 
inglés donde otros idiomas usan puntuación. A diferencia de muchos otros lenguajes, no utiliza corchetes para delimitar bloques y se 
permiten puntos y coma después de las declaraciones, pero rara vez, si es que alguna vez, se utilizan. Tiene menos excepciones 
sintácticas y casos especiales que C o Pascal.

Diseñado para ser leído con facilidad, una de sus características es el uso de palabras donde otros lenguajes utilizarían símbolos. 
Por ejemplo, los operadores lógicos !, || y && en Python se escriben not, or y and, y los operadores aritméticos en python 
respectivamente.

El contenido de los bloques de código (bucles, funciones, clases, etc.) es delimitado mediante espacios o tabuladores, conocidos como 
sangrado o indentación, antes de cada línea de órdenes pertenecientes al bloque.[36]​ Python se diferencia así de otros lenguajes de 
programación que mantienen como costumbre declarar los bloques mediante un conjunto de caracteres, normalmente entre llaves 
{}.[37]​[38]​ Se pueden utilizar tanto espacios como tabuladores para sangrar el código, pero se recomienda no mezclarlos.[39]​

Debido al significado sintáctico de la sangría, cada instrucción debe estar contenida en una sola línea. No obstante, si por 
legibilidad se quiere dividir la instrucción en varias líneas, añadiendo una barra invertida \ al final de una línea, se indica que 
la instrucción continúa en la siguiente.

Comentarios
Los comentarios se pueden poner de dos formas. La primera y más apropiada para comentarios largos es utilizando la notación ''' 
comentario ''', tres apóstrofos de apertura y tres de cierre. La segunda notación utiliza el símbolo #, que se extiende hasta el 
final de la línea.

El intérprete no tiene en cuenta los comentarios, lo cual es útil si deseamos poner información adicional en el código. Por ejemplo, 
una explicación sobre el comportamiento de una sección del programa.

Variables
Las variables se definen de forma dinámica, lo que significa que no se tiene que especificar cuál es su tipo de antemano y puede 
tomar distintos valores en otro momento, incluso de un tipo diferente al que tenía previamente. Se usa el símbolo = para asignar 
valores.

Los nombres de variables pueden contener números y letras pero deben comenzar con una letra. Además, existen 35 palabras reservadas 
en python:[40]​[41]​

and
as
assert
async
await
break
class
continue
def
del
elif
else
except
False
finally
for
from
global
if
import
in
is
lambda
None
nonlocal
not
or
pass
raise
return
True
try
while
with
yield
A partir de Python 3.10 existen también soft keywords, palabras que son reservadas en ciertos contextos, pero que normalmente pueden 
ser usadas como nombres de variables. Estos identificadores son match, case y _.

Tipos de datos

Jerarquía de los tipos básicos en Python 3.
Los tipos de datos básicos se pueden resumir en esta tabla:



