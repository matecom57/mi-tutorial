Curso corto de FreeSurfer
=========================

https://andysbrainbook-readthedocs-io.translate.goog/en/latest/FreeSurfer/FreeSurfer_Introduction.html?_x_tr_sl=en&_x_tr_tl=es&_x_tr_hl=es&_x_tr_pto=tc

**Descripción general***

FreeSurfer es un paquete de software que permite analizar imágenes de resonancia magnética estructural ; en otras palabras, permite cuantificar la cantidad de materia gris y blanca en regiones específicas del cerebro. También permite calcular mediciones como el grosor, la curvatura y el volumen de los diferentes tipos de tejido y correlacionarlas con covariables; o bien, contrastar estas mediciones estructurales entre grupos.



Ejemplo de un mapa típico a nivel de grupo creado por FreeSurfer. Este mapa se basa en un contraste a nivel de grupo entre dos grupos, donde los colores rojo y azul indican las diferencias en el grosor cortical entre los grupos. Normalmente, estos resultados se representan en cerebros inflados; el gris más oscuro representa los surcos y el gris más claro las circunvoluciones.

Este curso te mostrará cómo descargar e instalar FreeSurfer y cómo analizar un conjunto de datos de principio a fin. Aprenderás el vocabulario básico de FreeSurfer y cómo realizar preprocesamiento, edición de volumen y análisis de regiones de interés.

Análisis de principio a fin con FreeSurfer

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

Análisis de principio a fin con TRACULA

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
La solución de FreeSurfer

FreeSurfer soluciona este problema trazando los límites entre los diferentes tejidos del cerebro (materia gris y blanca, materia gris y pial, etc.) y luego inflando esas superficies para formar esferas. La mayoría de los defectos restantes en la superficie inflada se corrigen automáticamente (aunque algunos deben corregirse manualmente). Estas superficies pueden renderizarse como cerebros parcialmente inflados, completamente inflados o esféricos.

Para comprender mejor la función de FreeSurfer, imagine lo siguiente: acaba de extraer el cerebro de alguien y lo coloca sobre la mesa. El cerebro es como un globo flácido, cuyas arrugas representan las circunvoluciones y los surcos de la corteza. Ahora, coloca la boca sobre el tronco encefálico seccionado (después de lavarlo con agua caliente y jabón, por supuesto) y sopla con todas sus fuerzas, inflando el cerebro al máximo. Las arrugas desaparecen y el cerebro se convierte en un globo completamente inflado, como una esfera. Esta es una forma diferente de ver los datos: en lugar de usar vóxeles como bloques de construcción de nuestra imagen, usamos vértices y aristas. Piense en estos vértices y aristas como una valla metálica que rodea la superficie de la corteza; los enlaces son las aristas y las intersecciones de los enlaces son los vértices. El vértice es ahora nuestro elemento de menor resolución, y en cada vértice podemos calcular medidas estructurales como el grosor, el volumen y la superficie.
../../_images/01_Recon_Example.png

Ilustración de muestra del proceso de reconstrucción (recon) de FreeSurfer. (A) El escáner crea el escaneo anatómico ponderado en T1, generalmente con una resolución de aproximadamente 1 mm cúbico. (B) El recon-all de FreeSurfer convierte la imagen anatómica 3D en una malla 2D. Aquí se muestra la superficie pial. (C) Un primer plano de la superficie de la malla, mostrando su composición de vértices (intersecciones de los triángulos que la conforman) y aristas (conexiones entre vértices).

Una vez reconstruida la superficie, puede remuestrear sus mapas estadísticos de fMRI y visualizarlos en una superficie inflada, o desinflarla para ver dónde se encuentra la activación en la corteza original arrugada. Esto le proporciona una mejor visión de cómo se ubican los mapas estadísticos a lo largo de las crestas y valles del cerebro. (Para un ejercicio práctico de análisis de datos de fMRI en las superficies generadas por FreeSurfer, consulte este módulo ).

FreeSurfer utiliza la superficie reconstruida, junto con el conocimiento previo sobre la topología de un cerebro humano típico, para etiquetar las estructuras corticales y subcorticales. El etiquetado de la corteza se denomina parcelación y el de las estructuras subcorticales, segmentación . Estos etiquetados se basan en los dos atlas incluidos en FreeSurfer: el atlas de Desikan-Killiany y el atlas de Destrieux. Este último contiene parcelaciones más detalladas. Las mediciones estructurales se promedian dentro de cada parcelación. Estas mediciones pueden compararse entre grupos o correlacionarse con alguna medida de diferencia individual, como la edad, el coeficiente intelectual o el sexo.
../../_images/01_Mapa estadístico_Superficie.png

Actividad cerebral mapeada en la superficie. Aquí se muestra la superficie pial inflada. Verde: circunvoluciones; Rojo: surcos. El mapa de activación umbralizada se muestra en azul. Cabe destacar que este tipo de representación ofrece al observador una mejor idea de la ubicación de la actividad dentro de los surcos, que de otro modo quedaría oculta en una vista volumétrica 3D.
Próximos pasos

Ahora que ya comprende las funciones de FreeSurfer y la utilidad de las superficies reconstruidas, puede descargar e instalar el software. Haga clic en el Nextbotón para acceder a un enlace y un video que muestra cómo instalar FreeSurfer en su computadora.
Video

Para ver una descripción general en video de FreeSurfer y una definición de sus términos básicos, vea este video .
Monetice su audiencia: financie un proyecto o sitio web de OSS con EthicalAds, una red publicitaria que prioriza la privacidad.

-----------------------------------------------------------------------

Tutorial n.º 2 de FreeSurfer: Cómo descargar e instalar
Descargando FreeSurfer

La página de instalación de FreeSurfer ofrece instrucciones detalladas para descargar e instalar el paquete. Esto incluye el registro de una licencia, que deberá colocar en el directorio de FreeSurfer para poder usar el software.

Una vez que haya terminado de descargar e instalar el paquete, utilice Freeview para comprobar si el software se instaló correctamente. Explicaremos las funciones más avanzadas de Freeview en un tutorial posterior.

Nota

FreeSurfer está diseñado para sistemas operativos Unix y Macintosh. Es posible instalar FreeSurfer en Windows mediante un emulador de Unix, pero no existe documentación sistemática en el sitio web de FreeSurfer que muestre cómo hacerlo. Consulte aquí los fundamentos de la instalación en Windows.
Descargar el conjunto de datos de ejemplo

Para el resto de nuestros tutoriales, utilizaremos un conjunto de datos de openneuro.org que contiene exploraciones anatómicas de usuarios de cannabis y controles. Se trata de un estudio longitudinal con dos puntos temporales: una exploración basal y otra de seguimiento, y medidas de diferencias individuales como la edad y el sexo. Esto nos permitirá realizar diversos tipos de análisis, como comparaciones de grupos, análisis longitudinales y correlaciones de diferencias individuales con mediciones de materia gris. Descargue el conjunto de datos y descomprímalo haciendo doble clic en el archivo; luego, cambie el nombre de la carpeta escribiendo .mv ds000174-1.0.1 Cannabis

El conjunto de datos contiene un grupo de 20 fumadores de cannabis y un grupo de 22 controles (es decir, personas que nunca han fumado cannabis). Los sujetos cuyo ID numérico empieza por "1" pertenecen al grupo de cannabis, y los sujetos cuyo ID numérico empieza por "2" o "3" pertenecen al grupo de control. Por ejemplo, un nivel inferior a 108 pertenecería al grupo de cannabis y uno inferior a 320, al grupo de control.

El directorio de cada sujeto contiene dos subdirectorios denominados ses-BL, que indica la sesión de referencia, y ses-FU, que indica la sesión de seguimiento. Dentro de cada una de estas carpetas hay otro subdirectorio denominado anat, que contiene el escaneo anatómico de esa sesión. Para explorar la organización del conjunto de datos, diríjase al directorio Cannabis y escriba el siguiente comando:

ls sub-112/ses-BL/anat

Advertencia

Al probar la instalación con el comando mri_convert, podría aparecer un error como este: . En ese caso, intente instalar libgomp manualmente con este comando: . Además, si aparece este error: , intente escribir: .mir_convert.bin: error while loading shared libraries: libgomp.so.1: cannot open shared object filesudo apt-get install libgomp1/home/$USERNAME/freesurfer/license.txt exists but you do not have read permissionchmod a+r /home/$USERNAME/freesurfer/license.txt
Próximos pasos

Ahora que ha descargado FreeSurfer y algunos datos de ejemplo, está listo para aprender sobre el comando recon-all de FreeSurfer , que procesa un conjunto de datos de principio a fin. Haga clic en el Nextbotón para saber más sobre su funcionamiento.
Video

Para ver un video tutorial que le muestra cómo descargar e instalar FreeSurfer, haga clic aquí .
Llegue a la audiencia adecuada en una red publicitaria que prioriza la privacidad solo para desarrolladores de software: EthicalAds


