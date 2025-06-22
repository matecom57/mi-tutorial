Tutorial de fMRI n.° 1: Descarga de datos
=========================================

https://andysbrainbook-readthedocs-io.translate.goog/en/latest/fMRI_Short_Course/fMRI_01_DataDownload.html?_x_tr_sl=en&_x_tr_tl=es&_x_tr_hl=es&_x_tr_pto=tc


Descripción general

En este curso, analizaremos un conjunto de datos de fMRI que utilizó la tarea Flanker. El conjunto de datos se puede encontrar aquí , en el sitio web de OpenNeuro , un repositorio en línea de datos de neuroimagen. (Si el enlace de descarga en esa página web no funciona, vaya aquí y haga clic en el enlace "Todos los datos de los sujetos").
../_images/OpenNeuro_Flanker3.png

La página de OpenNeuro para el conjunto de datos Flanker incluye un árbol de archivos del conjunto de datos, que incluye las carpetas anat(que contiene la imagen anatómica) y func(que contiene las imágenes funcionales y los tiempos de inicio de cada ejecución). Hay archivos adicionales que contienen datos del sujeto, como sexo y edad ( participants.tsv) y parámetros de escaneo ( task-flanker_bold.json). Un árbol de directorios estandarizado como este facilita enormemente la creación de scripts, como veremos en un tutorial posterior.

Descargue el conjunto de datos haciendo clic en el botón "Descargar" en la parte superior de la página. El conjunto de datos ocupa aproximadamente 2 GB y viene en una carpeta comprimida. Extráigalo haciendo doble clic en la carpeta y luego muévalo a su escritorio.
../_images/OpenNeuro_DownloadButton3.png

Después de haber descargado y descomprimido el conjunto de datos, haga clic en el botón Siguiente para obtener una descripción general de la tarea experimental utilizada en este estudio.
Opciones de descarga alternativas

Si el botón de descarga no funciona, prueba con la opción de Amazon Web Services (AWS) . Visita esta página y descarga el cliente de AWS adecuado para tu sistema operativo. Una vez instalado, abre una terminal, ve al escritorio y escribe lo siguiente:

aws s3 sync --no-sign-request s3://openneuro.org/ds000102 ds000102-download/

La descarga debería tardar aproximadamente media hora.
Video

Para ver un videotutorial sobre cómo descargar los datos, haga clic aquí . (El video se titula "Tutorial AFNI n.° 1", pero como es básicamente lo mismo que hará para FSL, he decidido usar el mismo video para ambos tutoriales).

------------------------------------------------------------------------------------------------

Tutorial de fMRI n.º 2: Descripción general de la tarea Flanker

El conjunto de datos que descargaste utiliza la tarea Flanker, diseñada para aprovechar un proceso mental conocido como control cognitivo. En este curso, definiremos el control cognitivo como la capacidad de ignorar estímulos irrelevantes para realizar la tarea correctamente.

En la tarea Flanker, las flechas apuntan a la izquierda o a la derecha, y se le indica al sujeto que presione uno de los dos botones que indican la dirección de la flecha central. Si apunta a la izquierda, el sujeto presiona el botón "izquierda"; si apunta a la derecha, el botón "derecha". La flecha central está flanqueada por otras flechas que apuntan en la misma dirección o en la dirección opuesta.
../_images/Flanker_Example.png

Un ejemplo de las dos condiciones de la tarea Flanqueador. En la condición Incongruente, la flecha central (en la que se centra el sujeto) apunta en dirección opuesta a las flechas flanqueantes; en la condición Congruente, la flecha central apunta en la misma dirección que las flechas flanqueantes. En este ejemplo, la respuesta correcta en la condición Incongruente sería pulsar el botón "izquierda", y la respuesta correcta en la condición Congruente sería pulsar el botón "derecha". Para realizar una versión de la tarea Flanqueador, haga clic aquí .

Como puede imaginar, la tarea es más fácil si la flecha central apunta en la misma dirección que la flecha lateral, y más difícil si apunta en la dirección opuesta. Llamaremos a la primera condición "Congruente" y a la segunda "Incongruente". Los sujetos suelen ser más lentos y menos precisos en la condición Incongruente, y más rápidos y precisos en la condición Congruente. Dado que la diferencia en los tiempos de reacción es robusta y fiable, en nuestros datos de fMRI también deberíamos observar una diferencia notable en la señal BOLD .
../_images/Diseño de flanqueador.png

Ilustración de la tarea de Flanker para este estudio, adaptada de Kelly et al. (2008). Se muestra al sujeto una cruz de fijación para que enfoque el centro de la pantalla, y luego se presenta una prueba de Flanker congruente o incongruente de 2000 ms. Durante la prueba, el sujeto presiona el botón izquierdo o derecho. A continuación, se produce un intervalo de fluctuación que dura entre 8000 ms y 14 000 ms. (Tenga en cuenta que los intervalos de fluctuación suelen incrementarse en segundos; en este caso, la fluctuación para una prueba dada sería una selección aleatoria de uno de los siguientes: 8000 ms, 9000 ms, 10 000 ms, 11 000 ms, 12 000 ms, 13 000 ms y 14 000 ms). Se presenta otra cruz de fijación para comenzar la siguiente prueba.

Nuestro objetivo es estimar la magnitud de la señal BOLD para cada condición y luego contrastar (es decir, tomar la diferencia de) las dos condiciones para ver si son significativamente diferentes entre sí.

Nota

Esta descripción de la tarea plantea un punto importante sobre las buenas prácticas para diseñar estudios de fMRI: si puede diseñar una tarea conductual que produzca un efecto fuerte y confiable, aumentará sus probabilidades de encontrar un efecto en sus datos de imágenes. Los datos de fMRI son notoriamente ruidosos: si no ve un efecto conductual en su estudio, lo más probable es que tampoco encuentre un efecto en sus datos de imágenes.
Monetice su audiencia: financie un proyecto o sitio web de OSS con EthicalAds, una red publicitaria que prioriza la privacidad.
----------------------------------------------------------------------------------


Tutorial de fMRI n.º 3: Análisis de los datos
Descripción general

Ahora que ha descargado el conjunto de datos, veamos cómo se ve. Si el conjunto de datos se ha descargado en su directorio de Descargas, vaya al Escritorio y escriba lo siguiente:

mv ~/Downloads/ds000102_0001/ Flanker

Esto cambiará el nombre de la carpeta Flankery la colocará en su escritorio.
../_images/Mover_Carpeta_Flanquera.png

Después de descargar el conjunto de datos de Flanker, escriba el comando anterior para moverlo a su escritorio.

Como se vio en la página anterior de Descarga de Datos , el conjunto de datos tiene una estructura estandarizada: cada carpeta de sujeto contiene un directorio anatómico y un directorio funcional denominados anaty func, que a su vez contienen las imágenes anatómicas y funcionales, respectivamente. (El funcdirectorio también contiene las horas de inicio o las marcas de tiempo de cuándo el sujeto se sometió a una prueba congruente o incongruente). Este formato se conoce como BIDS (Estructura de Datos de Imágenes Cerebrales), lo que facilita la organización y la búsqueda de los datos.
../_images/Flanker_DataStructure.png

Ejemplo del formato BIDS. Tenga en cuenta que el funcdirectorio contiene datos funcionales (en este caso, dos ejecuciones de datos funcionales) y los archivos "events.tsv" correspondientes, que contienen los inicios o marcas de tiempo de la condición ocurrida y el momento en que ocurrió. Puede abrirlos como archivo de texto o como hoja de cálculo.
Inspección de la imagen anatómica

Al descargar datos de imágenes, revise las imágenes anatómicas y funcionales para detectar cualquier problema (picos en el escáner, orientación incorrecta, contraste deficiente, etc.). Aprender a identificar estos problemas llevará tiempo, pero con la práctica será más rápido y fácil.

Echemos un vistazo a la imagen anatómica en la anatcarpeta sub-08. Vaya a la carpeta sub-08 y escriba

fsleyes anat/sub-08_T1w.nii.gz

Esto abrirá la imagen anatómica en fsleyesel visor de imágenes de FSL.
../_images/anat_firstLook.png

La imagen anatómica mostrada en fsleyes. El contraste entre la sustancia gris y la blanca parece bajo, pero esto se debe a que los vasos sanguíneos del cuello (indicados por flechas naranjas) son mucho más brillantes que el resto del cerebro.
../_images/anat_changeContrast.png

Esto se puede solucionar modificando los valores en el cuadro de contraste. En este caso, el Máximo se ha reducido a 800, limitando la señal más brillante a ese valor. Esto facilita la visualización del contraste entre los tejidos.

Inspeccione la imagen haciendo clic y arrastrando el ratón. Puede cambiar de panel de visualización haciendo clic en la ventana correspondiente. Tenga en cuenta que las demás ventanas se actualizan en tiempo real al mover el ratón. Esto se debe a que los datos de resonancia magnética se recopilan como una imagen tridimensional, y al desplazarse por una de las dimensiones, también se modificarán las demás ventanas.

Nota

Quizás haya notado que a este sujeto parece faltarle el rostro. Esto se debe a que los datos de OpenNeuro.org han sido desidentificados : no solo se ha eliminado del encabezado información como el nombre y la fecha del escaneo, sino que también se han borrado los rostros. Esto se hace para garantizar el anonimato del sujeto.

A medida que continúa inspeccionando la imagen, aquí hay dos cosas que puede tener en cuenta:

    Líneas que parecen ondas en un estanque. Estas ondas pueden deberse a que el sujeto se mueve demasiado durante el escaneo y, si son lo suficientemente grandes, pueden provocar fallos en los pasos de preprocesamiento, como la extracción cerebral o la normalización.

    Diferencias anormales de intensidad en la sustancia gris o blanca. Estas pueden indicar patologías como aneurismas o cavernomas, y deben reportarse a su radiólogo de inmediato; asegúrese de familiarizarse con los protocolos de su laboratorio para reportar artefactos.

Inspección de las imágenes funcionales

Cuando termine de ver la imagen anatómica, haga clic en en el menú superior de la pantalla. Luego, haga clic en , navegue al directorio func y seleccione la imagen que termina en . Esta imagen también se asemeja a un cerebro, pero no está tan claramente definida como la imagen anatómica. Esto se debe a una resolución menor. Es habitual que un estudio recopile una imagen ponderada en T1 de alta resolución (es decir, anatómica) e imágenes funcionales de menor resolución, en parte porque recopilamos las imágenes funcionales con mayor rapidez.Overlay -> Remove AllFile -> Add from Filesub-08run-1_bold.nii.gz
../_images/funcional_primeravista.png

Muchos de los controles de calidad de la imagen funcional son los mismos que los de la imagen anatómica: Preste atención a las manchas extremadamente brillantes o extremadamente oscuras en la sustancia gris o blanca, así como a las distorsiones de la imagen, como estiramientos o deformaciones anormales. Un lugar donde es común observar una ligera distorsión es en la región orbitofrontal del cerebro, justo por encima de los globos oculares. Hay maneras de reducir esta distorsión, pero por ahora la ignoraremos.

Otra comprobación de calidad consiste en asegurar que no haya movimiento excesivo. Las imágenes funcionales suelen recopilarse como series temporales; es decir, se concatenan varios volúmenes en un único conjunto de datos. Puede hojear rápidamente todos los volúmenes como si fueran páginas de un libro haciendo clic en el icono del carrete de película en fsleyes. Observe cualquier movimiento repentino o brusco en cualquiera de los paneles de visualización. Durante el preprocesamiento, cuantificaremos la cantidad de movimiento para decidir si se conservan o se descartan los datos de ese sujeto.
Video

--------------------------------------------------------------------------------------------

Tutorial de fMRI n.° 4: Preprocesamiento

Nota

Muchos de los ejemplos se ejecutan desde el Flanker/sub-08directorio; recomiendo navegar a ese directorio con su Terminal antes de leer el resto del capítulo.
Descripción general

Ahora que sabemos dónde están nuestros datos y cómo se ven, realizaremos el primer paso del análisis fMRI: preprocesamiento .

Piensa en el preprocesamiento como la limpieza de las imágenes. Al tomar una foto con una cámara, por ejemplo, hay varias cosas que puedes hacer para mejorarla:

    Eliminar ojos rojos;

    Aumentar la saturación del color;

    Eliminar sombras.

../_images/Antes_Después_Edición.png

Una foto que tomamos con una cámara puede ser oscura, borrosa o con ruido (panel izquierdo). Tras editar la imagen mejorando el contraste, reduciendo el desenfoque y aumentando el brillo, obtenemos una imagen más definida y nítida.

De forma similar, al preprocesar datos de fMRI, se depuran las imágenes tridimensionales que se adquieren en cada TR . Un volumen de fMRI contiene no solo la señal que nos interesa (cambios en la sangre oxigenada), sino también fluctuaciones que no nos interesan, como el movimiento de la cabeza, las desviaciones aleatorias, la respiración y los latidos cardíacos. A estas fluctuaciones las llamamos ruido , ya que queremos separarlas de la señal que nos interesa. Algunas de estas fluctuaciones pueden eliminarse de los datos mediante su modelado (lo cual se explica en el capítulo sobre ajuste de modelos), y otras pueden reducirse o eliminarse mediante el preprocesamiento.

Para comenzar a preprocesar los datos del sub-08, lea las siguientes descripciones de cada paso.

Pasos de preprocesamiento

    Capítulo 1: Extracción cerebral (también conocida como “skullstripping”)
    Capítulo 2: La GUI de FEAT y la carga de datos funcionales
    Capítulo 3: Corrección de movimiento
    Capítulo 4: Corrección de la sincronización de segmentos
    Capítulo 5: Suavizado
    Capítulo 6: Registro y normalización
    Capítulo 7: Comprobación de los datos preprocesados
    Punto de control: preprocesamiento

Video

Cuando haya terminado todos los capítulos, haga clic aquí para ver una lista de reproducción que contiene todos los videos utilizados para demostrar los pasos de preprocesamiento.

Nota

Los distintos paquetes de software realizan estos pasos en un orden ligeramente distinto; por ejemplo, FSL normaliza los mapas estadísticos tras el ajuste del modelo. También existen análisis que omiten ciertos pasos; por ejemplo, quienes realizan análisis de patrones multivóxel no suavizan sus datos. En cualquier caso, la lista anterior representa los pasos más comunes que se realizan en un conjunto de datos típico.

----------------------------------------------------------------------------------------------------

Capítulo 1: Extracción cerebral (también conocida como “skullstripping”)

Dado que los estudios de fMRI se centran en el tejido cerebral, el primer paso es eliminar el cráneo y las áreas no cerebrales de la imagen. FSL cuenta con una herramienta para esto llamada bet , o Herramienta de Extracción Cerebral. Es el primer botón de la interfaz gráfica de usuario de FSL (indicado con una "A" en la figura siguiente). Al hacer clic en este botón, se abre otra ventana que permite especificar la imagen de entrada que se va a eliminar del cráneo y cómo etiquetar la imagen de salida eliminada (B), así como una subventana expandible que permite especificar opciones avanzadas (C).
../../_images/FSL_BET_GUI.png

Nota

Para BET y muchas otras herramientas FSL, es necesario especificar una imagen de entrada y una etiqueta para la imagen de salida: se realiza una operación en la imagen de entrada (por ejemplo, la eliminación de cráneos) y la imagen de salida es el resultado de dicha operación. Normalmente, las demás opciones se configuran con valores predeterminados que funcionan bien para la mayoría de los conjuntos de datos, pero se pueden anular si se desea.

Abra la interfaz gráfica de FSL desde el sub-08directorio, haga clic en el icono de carpeta junto al campo y navegue hasta él. Seleccione el archivo y haga clic en el botón Aceptar. Observe que el campo se rellena automáticamente con la palabra adjunta a su imagen de entrada, que es la predeterminada de FSL. Puede cambiar el nombre si lo desea, pero en este tutorial lo dejaremos como está.Input imageanatsub-08_T1w.nii.gzOutput imagebrain

Ahora haz clic en el Gobotón en la parte inferior de la ventana. Verás un texto escrito en tu terminal que muestra los comandos que se utilizan para ejecutar un comando llamado bet2. Observa cómo la interfaz gráfica de usuario (GUI) se corresponde con la terminal. Más adelante, aprovecharemos esta ventaja creando una plantilla a través de la GUI y modificándola en la terminal para preprocesar automáticamente todos los sujetos de nuestro conjunto de datos.
Mirando los datos

Cuando la terminal indique "Finalizado", bet2habrá terminado. Dado que ha creado una nueva imagen, debe revisar sus datos , lo cual haremos después de cada paso de preprocesamiento.

Nota

Los principiantes suelen escuchar la frase "Mira tus datos" como un mantra. Sin saber cómo analizar los datos, estas palabras pierden sentido en el mejor de los casos y, en el peor, resultan un falso consuelo. Cada paso de preprocesamiento de este capítulo irá seguido de recomendaciones sobre qué buscar y ejemplos concretos de qué es correcto y qué constituye un problema, y ​​qué hacer al respecto. Aunque no podemos abarcar todos los ejemplos posibles, a medida que adquiera experiencia, desarrollará su criterio para distinguir qué imágenes son de buena calidad y cuáles deben corregirse o eliminarse.

Haz clic en el FSLeyesbotón en la parte inferior de la interfaz gráfica de usuario. Cuando se abra, mantén pulsada la tecla Mayús para seleccionar tanto la imagen anatómica original como la imagen del cráneo despojado que acabas de crear. Como viste en un capítulo anterior , deberás ajustar el contraste para distinguir claramente la materia gris de la blanca.File -> Add from File

Al cargar ambas imágenes, puede comparar la imagen antes y después de extraer el cráneo. En el panel de la esquina inferior izquierda de FSLeyes, haga clic en el icono del ojo para ocultar la imagen correspondiente. Por ejemplo, si hace clic en el icono del ojo junto a , la imagen anatómica original T1 se volverá invisible y solo verá el cerebro sin cráneo. Si vuelve a hacer clic en el ojo, verá el T1 original. Para que las diferencias entre los cerebros sean más evidentes, resalte la imagen sin cráneo en el panel Lista de superposiciones y cambie el contraste de a . La siguiente animación le muestra cómo hacerlo.Overlay Listsub-08_T1wGreyscaleBlue-Light blue

Advertencia

Con la versión de fsleyes de noviembre de 2019, algunos usuarios se encuentran con el siguiente mensaje de error al intentar cargar una imagen generada por cualquiera de los comandos FSL: "Error al cargar la superposición: No parece un archivo BIDS". Si recibe este mensaje de error, intente mover los archivos .json de los directorios anat y func a una carpeta independiente y vuelva a intentar cargar las imágenes.

Haga clic en la imagen con el ratón y observe dónde se extrajo demasiado cerebro o muy poco cráneo. Recuerde que intentamos crear una imagen en la que se ha eliminado completamente el cráneo y la cara, dejando solo el cerebro (por ejemplo, corteza, estructuras subcorticales, tronco encefálico y cerebelo).
../../_images/BET_Demonstration.gif

Demostración de cómo usar la BET para examinar la imagen anatómica antes y después de la extracción del cráneo. Observe que en la corteza frontal se ha extirpado parte del cerebro. Asegúrese de revisar los tres paneles de visualización para detectar problemas.
Arreglando una tira de cráneo defectuosa

Si no está satisfecho con la extracción del cráneo, ¿qué puede hacer? Recuerde que la ventana BET contiene opciones que podemos modificar. Uno de los campos, etiquetado como , está configurado en 0,5 por defecto. El texto contiguo explica que valores menores dan estimaciones mayores del contorno cerebral (y, a la inversa, valores mayores dan estimaciones menores). En otras palabras, si consideramos que se ha extraído demasiado cerebro, debemos establecer un valor menor, y viceversa si consideramos que se ha extraído muy poco cráneo.Fractional intensity threshold

Dado que parece que BET ha extraído demasiado cerebro, intente reducir el umbral de intensidad fraccional a 0,2. Asegúrese también de cambiar el nombre de la salida a algo que le ayude a recordar lo que hizo, por ejemplo, sub-08_T1w_brain_f02. Haga clic en el Gobotón para volver a ejecutar la extracción de cráneo.
../../_images/BET_f02_GUI.png

Una vez finalizado, cargue la imagen más reciente del cráneo en FSLeyes. Haga clic en el icono del ojo junto a la imagen anatómica original y, a continuación, en el icono del ojo junto a la imagen más reciente que acabamos de crear. Observe dónde se ha conservado más corteza, especialmente en la corteza frontal y la corteza parietal. También habrá notado que en esta imagen aún queda más duramadre y fragmentos de cráneo. Por regla general, es mejor optar por dejar demasiado cráneo que por eliminar demasiada corteza; la presencia de fragmentos de cráneo no provocará fallos en futuros pasos de preprocesamiento (como la normalización), pero una vez eliminada la corteza, no podrá recuperarla.
Ceremonias

    Cambie el umbral de intensidad fraccional a 0,1 y vuelva a ejecutar BET, asegurándose de elegir un nombre de salida adecuado para mantener los archivos organizados. Vea el resultado en FSLeyes. Repita estos pasos con un umbral de intensidad fraccional de 0,9. ¿Qué observa? ¿Cuál parece ser un umbral adecuado?

    Experimenta con diferentes colores de contraste para la imagen superpuesta en FSLeyes para ver cuál te gusta más. Usa el control deslizante de Zoom (junto al icono de la lupa) para enfocar una zona que creas que no se ha eliminado correctamente. Toma una foto del montaje (es decir, de los tres paneles de visualización) haciendo clic en el icono de la cámara en la barra de herramientas sobre el montaje.

Video

Para ver una captura de pantalla que muestra cómo revisar la imagen de tu cráneo, haz clic aquí . Esto puede ayudarte con los ejercicios anteriores.

----------------------------------------------------------------------------------------



