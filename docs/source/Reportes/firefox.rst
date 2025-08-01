Firefox
=======

Si todo lo demás falla o si no tienes tiempo para depurar, puedes desinstalar, borrar todas las preferencias y los datos del perfil, y 
reinstalar, eso debería funcionar:

.. code:: Bash

   sudo apt remove --purge firefox  
   sudo rm -rf ~/.mozilla/firefox  
   sudo rm -rf ~/.cache/mozilla/firefox  
   sudo apt install firefox

