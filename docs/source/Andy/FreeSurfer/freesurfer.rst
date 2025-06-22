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
Descarga del comando paralelo

Volviendo a FreeSurfer, normalmente solo se usa un núcleo cada vez que se ejecuta recon-all. Con un comando llamado parallel , cada instancia de recon-all se puede asignar a un núcleo diferente. Si usa una computadora Macintosh, puede ver el número de núcleos escribiendo lo siguiente:

sysctl hw.physicalcpu hw.logicalcpu

Lo cual debería devolver algo como esto:

hw.physicalcpu: 4
hw.logicalcpu: 8

La primera entrada es el número de núcleos físicos, que es 4; y la segunda entrada es el número de núcleos lógicos, que es 8. Nadie entiende realmente qué significa todo esto, pero todo lo que necesita saber es que el número de núcleos lógicos es el número de trabajos de reconstrucción individuales que puede ejecutar simultáneamente.

El comando paralelo no viene de serie con el sistema operativo Macintosh; deberá descargarlo. Es necesario descargar la aplicación Xcode, disponible en la App Store de Macintosh.
../../_images/04_AppStore.png

Luego, deberás ir a este sitio web e instalar Homebrew, un gestor de instalación de paquetes. Homebrew te permite instalar paquetes rápidamente mediante la línea de comandos. Por ejemplo, una vez instalado Homebrew, abre una terminal y escribe lo siguiente:

brew install parallel

Esto instalará el comando paralelo. (Verifique si se instaló correctamente escribiendo parallel -help en la línea de comandos y presionando Enter. Debería ver el manual de ayuda impreso en la ventana de su terminal).
Uso del comando paralelo

Nota

Debe usar la shell bash para usar paralelo. Si no está seguro de qué shell está usando, escriba . Si no está en la shell bash, simplemente escriba y presione Enter.echo $0bash

Si desea almacenar los resultados de recon-all en el directorio desde el que ejecuta en paralelo, escriba .export SUBJECTS_DIR=`pwd`

Parallel se ejecuta canalizando la salida del lscomando hacia el comando paralelo. Por ejemplo, si tiene seis imágenes anatómicas etiquetadas como sub1.nii, sub2.nii y sub6.nii, puede analizarlas en paralelo escribiendo lo siguiente:

ls *.nii | parallel --jobs 8 recon-all -s {.} -i {} -all -qcache

Analicemos qué hace este comando:

    El lscomando utiliza un comodín para expandir todas las imágenes anatómicas que tienen la .niiextensión.

    La lista se envía al parallelcomando, que utiliza la opción para indicar que se usarán 8 núcleos para analizar los datos. Cada instancia de recon-all se asignará a un núcleo diferente.--jobs 8

    El punto entre llaves para la -sopción significa que .niise debe eliminar la extensión; en otras palabras, la entrada -sserá sub1, sub2 … sub6.

    La -iopción indica utilizar la salida del lscomando como entrada al parallelcomando.

    Las opciones -ally -qcachetienen el mismo significado que lo discutido en el tutorial anterior sobre recon-all.

Ahora ejecute el comando y observe qué sucede. Si un trabajo típico de recon-all tarda 15 horas en su computadora, vuelva en 15 horas y vea cuántos sujetos se han procesado. Si tiene ocho núcleos y ocho sujetos, debería finalizar en el mismo tiempo que tarda en procesar un sujeto; y si tiene más de ocho sujetos, se procesará uno nuevo en cuanto se libere uno de los núcleos tras finalizar un sujeto.
Análisis del conjunto de datos sobre el cannabis

Si ha configurado el directorio correctamente, todos los temas deberían estar en una carpeta llamada Cannabis. Cree otro directorio llamado FSy acceda a él. Desde una consola bash (vea la nota anterior), escriba el siguiente código para ejecutar todos estos temas mediante el comando paralelo:

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
Video

Para ver una descripción general en video del parallelcomando, vea este video .
