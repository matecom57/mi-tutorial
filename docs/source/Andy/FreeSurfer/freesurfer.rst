Curso corto de FreeSurfer
=========================

https://andysbrainbook-readthedocs-io.translate.goog/en/latest/FreeSurfer/FreeSurfer_Introduction.html?_x_tr_sl=en&_x_tr_tl=es&_x_tr_hl=es&_x_tr_pto=tc

**Descripción general***

FreeSurfer es un paquete de software que permite analizar imágenes de resonancia magnética estructural ; en otras palabras, permite cuantificar la cantidad de materia gris y blanca en regiones específicas del cerebro. También permite calcular mediciones como el grosor, la curvatura y el volumen de los diferentes tipos de tejido y correlacionarlas con covariables; o bien, contrastar estas mediciones estructurales entre grupos.



Ejemplo de un mapa típico a nivel de grupo creado por FreeSurfer. Este mapa se basa en un contraste a nivel de grupo entre dos grupos, donde los colores rojo y azul indican las diferencias en el grosor cortical entre los grupos. Normalmente, estos resultados se representan en cerebros inflados; el gris más oscuro representa los surcos y el gris más claro las circunvoluciones.

Este curso te mostrará cómo descargar e instalar FreeSurfer y cómo analizar un conjunto de datos de principio a fin. Aprenderás el vocabulario básico de FreeSurfer y cómo realizar preprocesamiento, edición de volumen y análisis de regiones de interés.

++Análisis de principio a fin con FreeSurfer++

    Tutorial de FreeSurfer n.° 1: Términos básicos

    Tutorial n.º 2 de FreeSurfer: Cómo descargar e instalar

    Tutorial n.º 3 de FreeSurfer: Reconocimiento total

    Tutorial de FreeSurfer n.° 4: Ejecución de recon-all en paralelo

    Tutorial n.º 5 de FreeSurfer: Cómo usar la cuadrícula de ciencia abierta

    Tutorial de FreeSurfer n.º 6: Freeview

    Tutorial de FreeSurfer n.° 7: El archivo FSGD

    Tutorial de FreeSurfer n.° 8: Análisis de grupo

    Tutorial de FreeSurfer n.° 9: Corrección de clústeres

    Tutorial de FreeSurfer n.° 10: Análisis de correlación

    Tutorial de FreeSurfer n.º 11: Análisis de la región de interés

    Tutorial de FreeSurfer n.° 12: Introducción a los modos de fallo

    Tutorial de FreeSurfer n.° 13: Errores en la superficie de la piel y en el cráneo

    Tutorial de FreeSurfer n.º 14: Puntos de control y normalización de la intensidad

    Apéndice A: Índice de girificación local

    Apéndice B: PETSurfer

    Apéndice C: Anotación de imágenes anatómicas con Freeview

    Apéndice D: Segmentación de los subcampos del hipocampo, la amígdala, el tronco encefálico y el tálamo

Nota

Lo siguiente está en construcción; ¡vuelva pronto!

**Análisis de principio a fin con TRACULA**

    Tutorial de TRACULA n.° 1: Descripción general


Red publicitaria impulsada por IA para desarrolladores. Haz que tu mensaje llegue a los desarrolladores adecuados con EthicalAds.


---------------------------------------------------------------

**Tutorial de FreeSurfer n.° 1: Términos básicos***

**Descripción general**


Prácticamente todos los estudios de neuroimagen adquieren una exploración anatómica ponderada en T1 : una imagen de alta resolución con alto contraste entre la sustancia blanca y la sustancia gris. En estas imágenes, la sustancia blanca es más clara, la sustancia gris es más oscura y el líquido cefalorraquídeo es negro. Estas son las imágenes que FreeSurfer utilizará para dividir la superficie cortical y las estructuras subcorticales en áreas diferenciadas.

Sin embargo, en lugar de analizar el cerebro como un volumen 3D, FreeSurfer transforma la corteza en una superficie 2D. ¿Por qué una superficie 2D? Imagine un vóxel que abarca ambos bordes de un surco. El vóxel contiene una mezcla de señales de ambas regiones, y es imposible determinar qué región contribuyó a la señal; este problema se conoce como efecto de volumen parcial .




Ilustración del efecto de volumen parcial. Un vóxel, resaltado en rojo, contiene señal tanto de la región A (verde) como de la región B (amarilla). El efecto de volumen parcial también puede ocurrir cuando la señal contiene materia gris y blanca.

Nos encontramos con un problema similar con un vóxel que contiene dos o más tipos de tejido diferentes. Imaginemos un vóxel que contiene materia gris, materia blanca y líquido cefalorraquídeo. En este caso, no podemos determinar la cantidad de cada uno de ellos: es un único número que representa cada uno de los diferentes tipos de tejido dentro del vóxel, pero es imposible determinar la cantidad de cada tipo de tejido dentro del vóxel.




El efecto de volumen parcial en una exploración estructural. El recuadro resaltado en rojo representa un vóxel que abarca tres tipos de tejido: materia blanca, materia gris y LCR. Si imaginamos que la imagen en escala de grises es un cerebro real, y nuestro recuadro rojo es el elemento de menor resolución de nuestra exploración, este recuadro sería un promedio de los diferentes tipos de tejido que contiene.

**La solución de FreeSurfer**

FreeSurfer soluciona este problema trazando los límites entre los diferentes tejidos del cerebro (materia gris y blanca, materia gris y pial, etc.) y luego inflando esas superficies para formar esferas. La mayoría de los defectos restantes en la superficie inflada se corrigen automáticamente (aunque algunos deben corregirse manualmente). Estas superficies pueden renderizarse como cerebros parcialmente inflados, completamente inflados o esféricos.

Para comprender mejor la función de FreeSurfer, imagine lo siguiente: acaba de extraer el cerebro de alguien y lo coloca sobre la mesa. El cerebro es como un globo flácido, cuyas arrugas representan las circunvoluciones y los surcos de la corteza. Ahora, coloca la boca sobre el tronco encefálico seccionado (después de lavarlo con agua caliente y jabón, por supuesto) y sopla con todas sus fuerzas, inflando el cerebro al máximo. Las arrugas desaparecen y el cerebro se convierte en un globo completamente inflado, como una esfera. Esta es una forma diferente de ver los datos: en lugar de usar vóxeles como bloques de construcción de nuestra imagen, usamos vértices y aristas. Piense en estos vértices y aristas como una valla metálica que rodea la superficie de la corteza; los enlaces son las aristas y las intersecciones de los enlaces son los vértices. El vértice es ahora nuestro elemento de menor resolución, y en cada vértice podemos calcular medidas estructurales como el grosor, el volumen y la superficie.
../../_images/01_Recon_Example.png

Ilustración de muestra del proceso de reconstrucción (recon) de FreeSurfer. (A) El escáner crea el escaneo anatómico ponderado en T1, generalmente con una resolución de aproximadamente 1 mm cúbico. (B) El recon-all de FreeSurfer convierte la imagen anatómica 3D en una malla 2D. Aquí se muestra la superficie pial. (C) Un primer plano de la superficie de la malla, mostrando su composición de vértices (intersecciones de los triángulos que la conforman) y aristas (conexiones entre vértices).

Una vez reconstruida la superficie, puede remuestrear sus mapas estadísticos de fMRI y visualizarlos en una superficie inflada, o desinflarla para ver dónde se encuentra la activación en la corteza original arrugada. Esto le proporciona una mejor visión de cómo se ubican los mapas estadísticos a lo largo de las crestas y valles del cerebro. (Para un ejercicio práctico de análisis de datos de fMRI en las superficies generadas por FreeSurfer, consulte este módulo ).

FreeSurfer utiliza la superficie reconstruida, junto con el conocimiento previo sobre la topología de un cerebro humano típico, para etiquetar las estructuras corticales y subcorticales. El etiquetado de la corteza se denomina parcelación y el de las estructuras subcorticales, segmentación . Estos etiquetados se basan en los dos atlas incluidos en FreeSurfer: el atlas de Desikan-Killiany y el atlas de Destrieux. Este último contiene parcelaciones más detalladas. Las mediciones estructurales se promedian dentro de cada parcelación. Estas mediciones pueden compararse entre grupos o correlacionarse con alguna medida de diferencia individual, como la edad, el coeficiente intelectual o el sexo.
../../_images/01_Mapa estadístico_Superficie.png

Actividad cerebral mapeada en la superficie. Aquí se muestra la superficie pial inflada. Verde: circunvoluciones; Rojo: surcos. El mapa de activación umbralizada se muestra en azul. Cabe destacar que este tipo de representación ofrece al observador una mejor idea de la ubicación de la actividad dentro de los surcos, que de otro modo quedaría oculta en una vista volumétrica 3D.

**Próximos pasos**

Ahora que ya comprende las funciones de FreeSurfer y la utilidad de las superficies reconstruidas, puede descargar e instalar el software. Haga clic en el Nextbotón para acceder a un enlace y un video que muestra cómo instalar FreeSurfer en su computadora.

**Video**

Para ver una descripción general en video de FreeSurfer y una definición de sus términos básicos, vea este video .
Monetice su audiencia: financie un proyecto o sitio web de OSS con EthicalAds, una red publicitaria que prioriza la privacidad.

-----------------------------------------------------------------------

**Tutorial n.º 2 de FreeSurfer: Cómo descargar e instalar**

**Descargando FreeSurfer**

La página de instalación de FreeSurfer ofrece instrucciones detalladas para descargar e instalar el paquete. Esto incluye el registro de una licencia, que deberá colocar en el directorio de FreeSurfer para poder usar el software.

Una vez que haya terminado de descargar e instalar el paquete, utilice Freeview para comprobar si el software se instaló correctamente. Explicaremos las funciones más avanzadas de Freeview en un tutorial posterior.

**Nota**

FreeSurfer está diseñado para sistemas operativos Unix y Macintosh. Es posible instalar FreeSurfer en Windows mediante un emulador de Unix, pero no existe documentación sistemática en el sitio web de FreeSurfer que muestre cómo hacerlo. Consulte aquí los fundamentos de la instalación en Windows.

**Descargar el conjunto de datos de ejemplo**

Para el resto de nuestros tutoriales, utilizaremos un conjunto de datos de openneuro.org que contiene exploraciones anatómicas de usuarios de cannabis y controles. Se trata de un estudio longitudinal con dos puntos temporales: una exploración basal y otra de seguimiento, y medidas de diferencias individuales como la edad y el sexo. Esto nos permitirá realizar diversos tipos de análisis, como comparaciones de grupos, análisis longitudinales y correlaciones de diferencias individuales con mediciones de materia gris. Descargue el conjunto de datos y descomprímalo haciendo doble clic en el archivo; luego, cambie el nombre de la carpeta escribiendo .mv ds000174-1.0.1 Cannabis

El conjunto de datos contiene un grupo de 20 fumadores de cannabis y un grupo de 22 controles (es decir, personas que nunca han fumado cannabis). Los sujetos cuyo ID numérico empieza por "1" pertenecen al grupo de cannabis, y los sujetos cuyo ID numérico empieza por "2" o "3" pertenecen al grupo de control. Por ejemplo, un nivel inferior a 108 pertenecería al grupo de cannabis y uno inferior a 320, al grupo de control.

El directorio de cada sujeto contiene dos subdirectorios denominados ses-BL, que indica la sesión de referencia, y ses-FU, que indica la sesión de seguimiento. Dentro de cada una de estas carpetas hay otro subdirectorio denominado anat, que contiene el escaneo anatómico de esa sesión. Para explorar la organización del conjunto de datos, diríjase al directorio Cannabis y escriba el siguiente comando:

.. code:: Bash

   ls sub-112/ses-BL/anat

**Advertencia**

Al probar la instalación con el comando mri_convert, podría aparecer un error como este: . En ese caso, intente instalar libgomp manualmente con este comando: . Además, si aparece este error: , intente escribir: .mir_convert.bin: error while loading shared libraries: libgomp.so.1: cannot open shared object filesudo apt-get install libgomp1/home/$USERNAME/freesurfer/license.txt exists but you do not have read permissionchmod a+r /home/$USERNAME/freesurfer/license.txt

**Próximos pasos**

Ahora que ha descargado FreeSurfer y algunos datos de ejemplo, está listo para aprender sobre el comando recon-all de FreeSurfer , que procesa un conjunto de datos de principio a fin. Haga clic en el Nextbotón para saber más sobre su funcionamiento.

**Video**

Para ver un video tutorial que le muestra cómo descargar e instalar FreeSurfer, haga clic aquí .
Llegue a la audiencia adecuada en una red publicitaria que prioriza la privacidad solo para desarrolladores de software: EthicalAds

--------------------------------------------------------------------------------

**Tutorial n.º 3 de FreeSurfer: Reconocimiento total**

**Descripción general: reconstrucción de la superficie cortical**

FreeSurfer contiene un amplio conjunto de programas que pueden tardar varias horas en procesar un solo sujeto y días en procesar un conjunto de datos completo. Afortunadamente, el procesamiento en sí es muy sencillo: FreeSurfer cuenta con un único comando que, al ejecutarse, realiza prácticamente todas las partes más tediosas del preprocesamiento de un solo sujeto. Este comando, recon-all , es fácil de usar y solo requiere unos pocos argumentos para ejecutarse. Más adelante, aprenderá a ejecutar varios comandos recon-all simultáneamente, lo que le ahorrará mucho tiempo.

Recon-all significa reconstrucción , es decir, la reconstrucción de una superficie cortical bidimensional a partir de un volumen tridimensional. Las imágenes que obtenemos de un escáner de resonancia magnética son bloques tridimensionales, y recon-all las transforma en una superficie bidimensional lisa y continua, similar a tomar una bolsa de papel para el almuerzo, arrugada hasta el tamaño de una bolita, y luego soplarla para expandirla como un globo.
../../_images/03_Reconstrucción.png

El comando recon-all convierte un volumen anatómico tridimensional (mostrado a la izquierda, representado por un corte sagital típico de un volumen) en una superficie bidimensional (derecha). Como verá en el tutorial de Freeview , FreeSurfer crea varios tipos de cerebros inflados que puede usar para visualizar sus resultados.

**La salida de Recon-all**

Antes de explicar cómo usar el comando recon-all, es útil ver ejemplos de lo que crea. Recon-all primero separa el cráneo de la imagen anatómica para generar un conjunto de datos llamado brainmask.mgz . (La extensión .mgz corresponde a un archivo comprimido del Hospital General de Massachusetts; es una extensión específica de FreeSurfer, similar a la extensión BRIK/HEAD de AFNI). Los archivos generados como volúmenes tridimensionales se almacenan en una carpeta llamada mri . Recon-all luego estima la superficie de contacto entre la materia blanca y la materia gris en ambos hemisferios. Estas estimaciones de superficie se almacenan en los archivos lh.orig y rh.orig .

Esta estimación inicial se refina y se guarda en los archivos lh.white y rh.white . Este límite se utiliza como base para que recon-all extienda sensores para buscar el borde de la materia gris. Una vez alcanzado este borde, se crea un tercer par de conjuntos de datos: lh.pial y rh.pial . Estos conjuntos de datos representan la superficie pial, que es como una película de plástico que envuelve el borde de la materia gris. Cada uno de estos conjuntos de datos puede visualizarse como una superficie o en el volumen 3D original mediante freeview .
../../_images/03_Orig_White_Pial.png

Una ilustración de cómo recon-all crea diferentes superficies. La estimación original de la ubicación de la interfaz entre la materia blanca y la materia gris (amarilla) se refina para obtener una estimación más precisa (azul). Esta estimación refinada se utiliza para detectar el borde de la materia gris (roja). Estas superficies, tal como se ven en Freeview (el visor de FreeSurfer), se muestran a la derecha.

Una de las ventajas de usar estas superficies es la capacidad de representar, dentro de los surcos, mediciones como las diferencias de grosor cortical o la señal BOLD. En un volumen tridimensional, un solo vóxel puede abarcar dos crestas de materia gris independientes, lo que impide determinar qué parte de la corteza genera la señal observada. Para visualizar con mayor facilidad la ubicación de los mapas de activación a lo largo de las orillas de los surcos y las crestas de las circunvoluciones, los conjuntos de datos de superficie pueden ampliarse para crear los conjuntos de datos lh.inflated y rh.inflated . (Para un ejemplo de cómo analizar datos de fMRI en una superficie generada por FreeSurfer, consulte este tutorial sobre SUMA ).
../../_images/03_Pial_Inflado.png

Una ilustración de cómo convertir el archivo lh.pial en lh.inflated.

Estas superficies infladas pueden volver a inflarse, esta vez formando una esfera. Esta no es una imagen que se usaría para visualizar los resultados; es una imagen normalizada a una imagen plantilla llamada fsaverage , un promedio de 40 sujetos, y luego remodelada en una superficie inflada o una superficie pial. Una vez normalizado el mapa de superficie del sujeto individual a esta plantilla, se puede usar un atlas para parcelar la corteza en regiones anatómicamente distintas. Recon-all parcelará el cerebro del sujeto individual según dos atlas: el atlas de Desikan-Killiany y el atlas de Destrieux. El atlas de Destrieux contiene más parcelaciones; cuál utilice para su análisis dependerá de cuán detallado desee realizar el análisis.
../../_images/03_FreeSurfer_Atlases.png

Comparación de los atlas de Desikan-Killiany (izquierda) y Destrieux (derecha). Obsérvese el mayor número de parcelaciones en el atlas de Destrieux en comparación con el de Desikan-Killiany.

**Usando el comando Recon-all**

Generaremos todas las imágenes mencionadas anteriormente con el comando recon-all, que solo requiere una imagen anatómica ponderada en T1 con buen contraste entre la sustancia blanca y la sustancia gris. Si se encuentra en el directorio de Cannabis, navegue al directorio anatómico de sub-101 escribiendo . A continuación, puede ejecutar recon-all con el siguiente comando:cd sub-101/ses-BL/anat

.. code:: Bash

    recon-all -s sub-101 -i sub-101_ses-BL_T1w.nii.gz -all

Esta -s opción especifica el nombre del sujeto, que puede configurarse como desee. Esta -iopción apunta a la imagen anatómica que analizará y -allejecutará todos los pasos de preprocesamiento de sus datos. Excepto cuando vuelva a ejecutar el comando recon-all después de editar los datos , siempre deberá usar esta -allopción.

Mientras se ejecuta el comando, la salida se guardará en un directorio llamado $SUBJECTS_DIR. Por defecto, $SUBJECTS_DIR es una variable que apunta al directorio $FREESURFER_HOME/subjects, donde $FREESURFER_HOME es otra variable que apunta al directorio donde se instaló FreeSurfer, por ejemplo /usr/local/freesurfer, . En otras palabras, la salida de este comando recon-all estará en /usr/local/freesurfer/subjects.

**Nota**

Si recibe un error de permiso al ejecutar recon-all, escriba lo siguiente: Sudo chmod -R a+w $SUBJECTS_DIR Y luego vuelva a ejecutar el comando recon-all.

También recomiendo añadir la opción qcache, que suavizará los datos en diferentes niveles y los almacenará en el directorio de salida del sujeto. Esto será útil para los análisis a nivel de grupo , que abordaremos en un próximo tutorial. Si ya ha ejecutado el preprocesamiento recon-all en sus sujetos, puede ejecutar qcache con el siguiente comando:

.. code:: Bash

   recon-all -s <subjectName> -qcache

Lo cual debería tomar alrededor de 10 minutos por tema.

**Próximos pasos**

Podríamos ejecutar recon-all para cada uno de nuestros sujetos, uno por uno. Sin embargo, pronto descubrirás que esto es tedioso y poco práctico para analizar grandes conjuntos de datos. Aprenderemos a acelerar el proceso en el siguiente capítulo usando un comando llamado parallel.

**Video**

Para ver una descripción general en video de recon-all y cómo usarlo, haga clic aquí .

----------------------------------------------------------------------------------------


**Tutorial de FreeSurfer n.° 4: Ejecución de recon-all en paralelo**

**Restricciones de tiempo con Recon-All**

Como pronto descubrirá, FreeSurfer tarda mucho en procesar un sujeto individual: entre dieciséis y veinticuatro horas en un iMac típico, con algunas variaciones debido a factores como la calidad de los datos de entrada. Para muchos investigadores, este tiempo de espera puede ser prohibitivo, especialmente si el estudio incluye docenas o cientos de sujetos.
../../_images/04_Recon_all_Length.png

Una forma de reducir el tiempo que lleva analizar tantos sujetos es ejecutar los análisis en paralelo. Las computadoras modernas suelen tener una unidad central de procesamiento con varios núcleos , que pueden usarse individualmente para diferentes tareas. Para ilustrar qué son los núcleos, imaginemos ocho personas y ocho cocinas, cada una con el tamaño justo para que una persona prepare su comida. En esta analogía, cada núcleo de computadora es una cocina. Ocho personas no caben en una cocina, pero si las demás cocinas se desbloquean y se ponen a disposición, cada persona puede preparar su propia comida en cada habitación.

Supongamos que cada comida tarda una hora en prepararse. En lugar de que cada hombre espere su turno en la misma cocina cada hora, todos preparan sus comidas simultáneamente. Lo que de otro modo tomaría ocho horas (es decir, que todos los hombres prepararan su comida en la misma cocina), ahora toma una hora. Si pudiéramos hacer algo similar con nuestro análisis de datos, podríamos terminar de procesar las imágenes anatómicas en un tiempo más razonable.

**Descarga del comando paralelo**

Volviendo a FreeSurfer, normalmente solo se usa un núcleo cada vez que se ejecuta recon-all. Con un comando llamado parallel , cada instancia de recon-all se puede asignar a un núcleo diferente. Si usa una computadora Macintosh, puede ver el número de núcleos escribiendo lo siguiente:

.. code:: Bash

   sysctl hw.physicalcpu hw.logicalcpu

Lo cual debería devolver algo como esto:

.. code:: Bash

   hw.physicalcpu: 4
   hw.logicalcpu: 8

La primera entrada es el número de núcleos físicos, que es 4; y la segunda entrada es el número de núcleos lógicos, que es 8. Nadie entiende realmente qué significa todo esto, pero todo lo que necesita saber es que el número de núcleos lógicos es el número de trabajos de reconstrucción individuales que puede ejecutar simultáneamente.

El comando paralelo no viene de serie con el sistema operativo Macintosh; deberá descargarlo. Es necesario descargar la aplicación Xcode, disponible en la App Store de Macintosh.
../../_images/04_AppStore.png

Luego, deberás ir a este sitio web e instalar Homebrew, un gestor de instalación de paquetes. Homebrew te permite instalar paquetes rápidamente mediante la línea de comandos. Por ejemplo, una vez instalado Homebrew, abre una terminal y escribe lo siguiente:

.. code:: Bash

   brew install parallel

Esto instalará el comando paralelo. (Verifique si se instaló correctamente escribiendo parallel -help en la línea de comandos y presionando Enter. Debería ver el manual de ayuda impreso en la ventana de su terminal).

**Uso del comando paralelo**

**Nota**

Debe usar la shell bash para usar paralelo. Si no está seguro de qué shell está usando, escriba . Si no está en la shell bash, simplemente escriba y presione Enter.echo $0bash

Si desea almacenar los resultados de recon-all en el directorio desde el que ejecuta en paralelo, escriba .export SUBJECTS_DIR=`pwd`

Parallel se ejecuta canalizando la salida del lscomando hacia el comando paralelo. Por ejemplo, si tiene seis imágenes anatómicas etiquetadas como sub1.nii, sub2.nii y sub6.nii, puede analizarlas en paralelo escribiendo lo siguiente:

.. code:: Bash

   ls *.nii | parallel --jobs 8 recon-all -s {.} -i {} -all -qcache

Analicemos qué hace este comando:

1. El lscomando utiliza un comodín para expandir todas las imágenes anatómicas que tienen la .niiextensión.

2. La lista se envía al parallelcomando, que utiliza la opción para indicar que se usarán 8 núcleos para analizar los datos. Cada instancia de recon-all se asignará a un núcleo diferente.--jobs 8

3. El punto entre llaves para la -sopción significa que .niise debe eliminar la extensión; en otras palabras, la entrada -sserá sub1, sub2 … sub6.

4. La -iopción indica utilizar la salida del lscomando como entrada al parallelcomando.

5. Las opciones -ally -qcachetienen el mismo significado que lo discutido en el tutorial anterior sobre recon-all.

Ahora ejecute el comando y observe qué sucede. Si un trabajo típico de recon-all tarda 15 horas en su computadora, vuelva en 15 horas y vea cuántos sujetos se han procesado. Si tiene ocho núcleos y ocho sujetos, debería finalizar en el mismo tiempo que tarda en procesar un sujeto; y si tiene más de ocho sujetos, se procesará uno nuevo en cuanto se libere uno de los núcleos tras finalizar un sujeto.

**Análisis del conjunto de datos sobre el cannabis**

Si ha configurado el directorio correctamente, todos los temas deberían estar en una carpeta llamada Cannabis. Cree otro directorio llamado FSy acceda a él. Desde una consola bash (vea la nota anterior), escriba el siguiente código para ejecutar todos estos temas mediante el comando paralelo:

.. code:: Bash

   ls .. | grep ^sub- > subjList.txt

   for sub in `cat subjList.txt`; do
   cp ../${sub}/ses-BL/anat/*.gz .
   done

   gunzip *.gz

   SUBJECTS_DIR=`pwd`

   ls *.nii | parallel --jobs 8 recon-all -s {.} -i {} -all -qcache

   rm *.nii

   for sub in `cat subjList.txt`; do
   mv ${sub}_ses-BL_T1w.nii ${sub}
   done

El siguiente tutorial le mostrará otra forma de agrupar todos sus procesos de reconocimiento mediante una supercomputadora: Open Science Grid.

**Video**

Para ver una descripción general en video del parallelcomando, vea este video .

--------------------------------------------------------------------------------

**Tutorial n.º 5 de FreeSurfer: Cómo usar la cuadrícula de ciencia abierta**

**Restricciones de tiempo con Recon-All**

Incluso si puede ejecutar varios trabajos con el comando paralelo, puede que no sea práctico para conjuntos de datos muy grandes, por ejemplo, un estudio que incluya cientos de sujetos. Además, es posible que no desee tener todos sus núcleos de procesamiento ocupados en la ejecución de recon-all y prefiera tener su computadora libre para otros proyectos.

Una opción es usar una supercomputadora , disponible en la mayoría de las universidades. Si no tiene acceso a una, puede usar una supercomputadora pública alojada en Open Science Grid , que utiliza núcleos de procesamiento en computadoras ubicadas en más de cien sitios: laboratorios, universidades y otras instituciones. Puede enviar un comando recon-all a Open Science Grid, que luego se distribuye a uno de los muchos núcleos disponibles. Para la mayoría de los investigadores en imágenes, prácticamente no hay límite en la cantidad de trabajos que puede enviar; un lote de cien o doscientos trabajos no es muy grande para los estándares de una supercomputadora, y el lote completo generalmente se puede completar en menos de una semana.

**Preparación de sus datos para la Red de Ciencia Abierta**

Antes de poder utilizar cualquiera de los recursos de Open Science Grid, debe crear una cuenta aquí .

También necesitará un comando fsurfpara enviar todos los trabajos de reconstrucción a la supercomputadora Open Science Grid. Para descargar este comando, escriba:

.. code:: Bash

   curl -L -o fsurf 'http://stash.osgconnect.net/+fsurf/fsurf'
   chmod +x fsurf

Y luego mueva el ejecutable de fsurf a un directorio al que apunte su PATH. Por ejemplo, la mayoría de los sistemas operativos tienen una ruta que, por defecto, apunta al /bindirectorio, el mismo que contiene comandos como ls, cdy pwd. Si mueve fsurfa /bin, podrá ejecutar el comando desde cualquier directorio:

.. code:: Bash

   sudo mv fsurf /bin

**Nota**

En el ejemplo de código anterior, sudose usa para mover fsurf al directorio /bin. Esto se debe a que este directorio se considera confidencial: nadie debe modificarlo a menos que sepa lo que hace. Por lo tanto, sudo le solicitará su contraseña antes de mover el archivo.

A continuación, cree una lista de todos los temas escribiendo el siguiente código:

.. code:: Bash

   ls | grep sub- > subjList.txt

Esto canalizará los resultados del lscomando a un archivo llamado subjList.txt. Usaremos esta lista para crear un bucle for y enviar todos nuestros trabajos de recon-all a la supercomputadora Open Science Grid.

**Envío de trabajos de Recon-All**

Open Science Grid tiene un sistema particular en cuanto al modo en que se envían los trabajos: cada imagen anatómica debe empaquetarse de una manera determinada, tal como se deben empaquetar los artículos cuando se dejan en la oficina de correos.

Primero deberá ejecutar recon-all en sus imágenes anatómicas, omitiendo la -allopción. Esto creará una serie de directorios y luego convertirá la imagen anatómica al formato .mgz y la colocará en el mri/origdirectorio. El siguiente código puede copiarse y pegarse en la terminal o copiarse en un script de shell y ejecutarse con tcsh:

.. code::Bash

   foreach subj (`cat subjList.txt`)
      cd $subj/ses-BL/anat
      if (! -d $subj ) then #If the FS directory doesn't exist, then run recon-all
              recon-all -s $subj -i *.nii.gz -sd .
              #zip the FreeSurfer directories, so they can be submitted to fsurf
              zip -r $subj.zip $subj
              cd ../../..
      else
              echo "FreeSurfer folder for $subj already exists; if you want to rerun recon-all for this subject, delete the folder and rerun this script."
              cd ../../..
      endif
   end

Una vez finalizado, puedes enviar los trabajos usando fsurf. En este ejemplo, he incluido fsurfun bucle for:

.. code:: Bash

   foreach subj (`cat subjList.txt`)
      cd $subj/ses-BL/anat
      fsurf submit --subject=$subj --input=$subj.zip --defaced --deidentified --version 6.0.0 --freesurfer-options='-all -qcache -3T'
      cd ../../..
   end

El estado de los trabajos se puede comprobar escribiendo , lo que mostrará varias columnas en la pantalla. La primera columna es el nombre del sujeto, la segunda es el ID del sujeto asignado por la supercomputadora Open Science Grid y la penúltima columna especifica si el trabajo está en ejecución, se ha completado o ha fallado. Revise periódicamente el estado de estos trabajos para ver cuáles se pueden descargar.fsurf list

**Nota**

Los ejemplos de código anteriores están escritos en [nombre del archivo ] tcshen lugar de [nombre del archivo] bash. Puedes escribirlo en cualquiera de los dos; yo estaba usando [nombre del archivo] tcshen ese momento.

**Descargar o eliminar trabajos**

Una vez finalizado recon-all, puedes descargar la salida escribiendo este código:

.. code:: Bash

   fsurf output --id <subjID>

Donde subjIDse encuentra el código de identificación asignado por la supercomputadora. Es el número en la segunda columna de la salida del comando . Los datos descargados tendrán la extensión .; puede descomprimirlos escribiendo , reemplazando con el nombre del conjunto de datos descargado.fsurf list.bz2tar xvjf <subjName>subjName

Por otro lado, si deseas eliminar un trabajo en cualquier momento y por cualquier motivo, puedes hacerlo escribiendo:

.. code:: Bash

   fsurf remove --id <subjID>

subjIDSe encuentra de la misma manera que arriba.

-------------------------------------------------------------------------------

**Tutorial de FreeSurfer n.º 6: Freeview**

**Visualización de sus datos**

Cada paquete de software de neuroimagen cuenta con un visor de datos , o una aplicación que permite consultar los datos. AFNI, SPM y FSL cuentan con visores de datos que básicamente hacen lo mismo: el usuario carga datos de imágenes, generalmente imágenes anatómicas o funcionales, y puede visualizarlos en tres dimensiones. La mayoría de los visores permiten cargar archivos NIFTI que contienen cualquier tipo de datos de imágenes.

FreeSurfer cuenta con su propio visor, Freeview , que se inicia desde la Terminal escribiendo freeviewy pulsando Intro. Puede cargar imágenes NIFTI al igual que otros paquetes, y además, formatos específicos de FreeSurfer, como datos con extensiones .mgzy .inflated. La imagen se puede visualizar en tres dimensiones en el Panel de Visualización, o se puede cambiar el diseño para que solo se muestre una dimensión.
../../_images/06_Freeview_Example.png

**El panel de control**

La esquina superior izquierda de Freeview contiene el Panel de Control , que muestra los volúmenes cargados actualmente en la memoria. La casilla de verificación junto a cada imagen se puede marcar o desmarcar para hacerla visible o invisible, respectivamente. Al igual que en los demás visores, la imagen superior es la superposición : cubre todas las demás. Las flechas arriba y abajo permiten colocar una imagen en la parte superior de la pila o bajarla para que deje de ser la superposición. El Opacitycontrol deslizante permite mantener una imagen como superposición, pero cambiar su transparencia para ver la imagen inmediatamente inferior.

La barra de herramientas se encuentra debajo del Panel de control y contiene opciones para cambiar la opacidad, el contraste y el mapa de color de las imágenes. Al cargar una imagen como aseg.mgz, por ejemplo, se usa una paleta de colores en escala de grises por defecto. Sin embargo, un mapa de color más informativo es FreeSurferColorLUT (LUT = Tabla de consulta), que codifica por color cada segmento de la imagen según una tabla predefinida.

Muchas de las imágenes en FreeSurfer están codificadas así. Tomará tiempo determinar cuáles lo están, pero una heurística útil es asumir una tabla de consulta para cualquier imagen segmentada (como aseg.mgz) o parcelada (como uno de los atlas).

**Volúmenes y superficies de carga**

Freeview puede cargar volúmenes y superficies simultáneamente. Para cargar una superficie, haga clic en y seleccione una imagen en el directorio, como . Esto superpondrá una representación 3D de la superficie en el cuadro tridimensional de la ventana Vista y trazará su contorno en los cuadros ortogonales (es decir, las vistas sagital, axial y coronal). El color de la superficie en las vistas ortogonales se puede cambiar seleccionando un nuevo .File -> Load Surfacesurflh.pialEdge color
../../_images/06_Volúmenes_Superficies_Freeview.png

**Opciones de Freeview desde la línea de comandos**

Freeview ofrece varias opciones de línea de comandos que puede usar para ahorrar tiempo. Por ejemplo, si desea crear el mismo diseño de la figura anterior (es decir, cargar el archivo orig.mgz, el archivo aseg.mgz con la tabla de consulta de colores y el archivo lh.pial con un borde amarillo), puede escribir lo siguiente desde el directorio subject que contiene los directorios mriy surf(por ejemplo, navegar al directorio sub-101_ses_BL_T1w):

.. code:: Bash

   freeview -v mri/orig.mgz mri/aseg.mgz:colormap=LUT -f surf/lh.pial:edgecolor=yellow

La -vopción indica que los siguientes archivos son volúmenes y que -fel siguiente archivo es una superficie. Los dos puntos indican una opción para el archivo al que están adjuntos; por ejemplo, aseg.mgz:colormap=LUTsignifica asignar un mapa de colores de tabla de consulta al archivo aseg.mgz. Asimismo, la edgecolor=yellowopción significa establecer el color del borde del archivo lh.pial en amarillo. Se pueden encontrar otras opciones para Freeview escribiendo desde la línea de comandos; también puede encontrar un buen resumen de otras opciones y atajos de línea de comandos visitando la demo de Freeview de Inés Pereira .freeview -h

**Nota**

Si usa Conda y encuentra un error con la cadena , intente desactivar su entorno Conda actual escribiendo . Esto debería resolver el problema en la mayoría de los casos.Segmentation Faultconda deactivate

**Video**

Para ver una descripción general en video de la estructura de directorio creada por recon-all y cómo usar freeview con la salida, haga clic aquí .



