/home
======

¿Qué es el Home?
----------------------------------------

El home es un espacio que pertenece a cada usuario, es el lugar dónde nos encontramos al iniciar sesión. Suele tener permisos de 
**escritura/lectura** exclusivos para el usuario al que pertenece. También aquí suelen residir los archivos de configuración exclusivos 
para el usuario.

¿Dónde está?
----------------------------------------

En la estructura de los sistemas **Unix** suelen encontrarse en la dirección

.. code:: Bash

   /home/usuario

Pero en el clúster del laboratorio, la ruta correcta es:

.. code:: Bash

   /home/inb/usuario

Donde usuario es sustituido por el usuario en curso. Se puede acceder mediante:

Ruta absoluta
----------------------------------------

.. code:: Bash

   cd /home/inb/usuario

Ruta con "wildcard" (comodín)
----------------------------------------

.. code:: Bash

   cd ~/

También nos podemos trasladar usando el comando cd sin argumentos
----------------------------------------

.. code:: Bash

   cd

O sea, los tres formatos del comando ``cd`` tienen la misma función.

En el caso de los equipos que forma parte del clúster, el directorio home se encuentra físicamente en el servidor central.



Y ¿qué debo escribir?
----------------------------------------

Es importate señalar, que debido a la configuración de :doc:`Cluster-Respaldo-de-datos` y :doc:`Cluster-Folder-almacenamiento-(misc`) del clúster, es recomendable que en la carpeta home no se coloquen archivos de gran tamaño, dando preferencía a archivos como scripts, archivos de configuración, documentos. En el caso de requrir guardar archivos que se consideren grandes y que no se deseen respaldar se puede recurrir al uso de la carpeta :doc:`Cluster-Folder-temporal-(tmp`) o una carpeta con el título nobackup (revisar :doc:`Cluster-Folder-almacenamiento-misc`).

Qué otras cosas hay en ``$HOME``?
----------------------------------------

En esa carpeta suelen vivir todos los archivos de configuración y cache del usuario. Ojo, que ésto puede llegar a crecer mucho, sobre todo por el cache de google-chrome. Se recomienda vaciar el cache del navegador cada par de meses para evitar tener demasiados archivos.

Moviendo las configuraciones y cache de ``$HOME``
----------------------------------------

Dado que ``$HOME`` está en una carpeta que físicamente reside en el servidor, cada vez que se consulta un archivo de configuración, la información debe viajar a través de la red local. Aunque la mayoría de las veces esto es muy rápido, algunos usuarios han decidido cambiar el lugar donde residen físicamente tales archivos de configuración, para que estén en una carpeta de un disco duro local en la PC que habitualmente utilizan. **Los usuarios que siempre se conectan remotamente, entonces, no tienen ningún beneficio de lo que se explica a continuación.**

En distribuciones modernas de linux (como ubuntu), la carpeta de configuración se define dentro de las variables de entorno que comienzan con ``$XDG_``. Si te gustaría saber más al respecto, lee las especificaciones  `aqui <https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html>`_ . 

Usa el script ``inb_config_XDG.sh`` para mover tus carpetas de configuración a un disco duro local. 

.. important:: :doc:`Cluster_XDG`  


.. code:: Bash

   Uso: inb_config_XDG.sh </misc/DISCO/USUARIO/newXDG>

Donde ``newXDG`` representa una carpeta en un lugar de ``/misc`` donde tienes permisos de escritura.
Se recomienda que la carpeta se llame XDG, por ejemplo ``/misc/mansfield/lconcha/XDG``

.. important:: El inconveniente de mover tus configuraciones y cache, es que si no está disponible la PC donde está el disco duro 
que contiene 
tus carpetas XDG, tus sesiones remotas tendrán problemas. Claro, esto también sucede si tu XDG está en el servidor, pero si el servidor se 
cae, estamos frente a un problema mayor que afecta a todos los usuarios, no solo a tí, y muy seguramente será atendido a la brevedad. Por 
lo tanto, valora **conveniencia/velocidad/robustez** antes de correr el script mencionado arriba. Buena suerte!



