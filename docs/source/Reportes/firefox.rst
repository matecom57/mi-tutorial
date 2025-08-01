Firefox
=======

amonra@charon:~$ which firefox
/usr/bin/firefox

amonra@charon:~$ firefox&

monra@charon:~$ snap list | grep firefox
firefox            134.0.2-1        5647   latest/stable  mozilla**    -




echinocactus

Si todo lo demás falla o si no tienes tiempo para depurar, puedes desinstalar, borrar todas las preferencias y los datos del perfil, y 
reinstalar, eso debería funcionar:

.. code:: Bash

   sudo apt remove --purge firefox  
   sudo rm -rf ~/.mozilla/firefox  
   sudo rm -rf ~/.cache/mozilla/firefox  
   sudo apt install firefox

