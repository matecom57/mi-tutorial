DSIstudio
=========

tags: ``Tutorial``
----------------------------------------
Tutorial DWI 2022
----------------------------------------

:star: **Se pueden descargar los datos desde  `esta liga. <https://drive.google.com/drive/folders/1Nj_ECQ0qwe4l3Mr-vdUuESGwaLifsUiM?usp=sharing>`_ **
:tv: **El video del tutorial  `esta en youtube <https://youtu.be/QG6rU1RbcBQ>`_ **
:information_source: Los datos fueron adquiridos en un resonador GE MR Discovery 750 de 3 teslas.


Archivos:
----------------------------------------

* 1. ``dwis.nii.gz`` : Imágenes de difusión
* 2. ``dwis.bvec``   : Vectores del gradiente de difusión
* 3. ``dwis.bval``   : b-valores
* 4. ``revpe.nii.gz`` : Dos imágenes b=0 con codificación de fase en sentido inverso. Se usará 
para pre-procesamiento de ``dwis.nii.gz``
* 5. ``revpe.bvec`` : vectores de difusión
* 6. ``revpe.bval`` : b-valores.

Todos estos archivos fueron convertidos usando  ```dcm2niix`` <https://github.com/rordenlab/dcm2niix>`_ .

.. image:: ds01.png

Las imágenes ``dwis.nii.gz`` tienen los ojos alargados, porque fueron adquiridas con _EPI positive blips_ (P>>A); son muchos volúmenes (106). En cambio, las imágenes revpe (4.nii.gz) tienen negative blips y son solamente 2 volúmenes (una b=0 y una DWI).


Pre-procesamiento
----------------------------------------

No entraremos en detalles de preprocesamiento en este tutorial. Se recomienda leer  `la documentacion de eddy en el sitio de fsl <https://fsl.fmrib.ox.ac.uk/fsl/fslwiki/topup/TopupUsersGuide>`_ . Se sugiere usar una máquina con CUDA y fsl versión 6.0.2 o superior. No correrlo con CUDA implica varias horas de preprocesamiento.

Al terminar veremos que las imágenes están mucho menos distorsionadas:

.. image:: ds02.png


**Las imágenes preprocesadas de este tutorial, pre-cocinadas para fines prácticos, se llaman ``dwi_preproc_corrected.{bvec,bval,nii}``.**

Tensor de difusión
----------------------------------------

Revisamos que todo esté en orden. Usaré mrtrix3 para generar el tensor de difusión. Me gusta el formato ``.mif``, pero bien podría escribir ``.nii.gz`` si me diera la gana.

Primero genero una máscara:

    dwi2mask -fslgrad dwi_preproc_corrected.{bvec,bval,nii} dwi_preproc_corrected_mask.nii

Ahora estimo el tensor de difusión:

    dwi2tensor -fslgrad dwi_preproc_corrected.{bvec,bval,nii}  -mask dwi_preproc_corrected_mask.nii  dt.mif
    
extraigo métricas del tensor:

    tensor2metric -fa fa.mif -vector v1.mif -adc adc.mif dt.mif
    
Y para visualizar los tensores sin que me distraigan los tensores gigantes del LCR, le pongo una máscara basada en ADC:

     mrcalc adc.mif 0.001 -lt dt.mif -mul dt_masked.mif

Para finalmente visualizar:

.. image:: ds03.jpg


Tractografía
----------------------------------------

Aunque yo soy muy feliz con  `mrtrix <https://www.mrtrix.org/>`_ , en este documento utilizaré  `dsi-studio <https://dsi-studio.labsolver.org/>`_  para hacer tractografía de manera automática. Existen versiones para todos los sistemas operativos. El programa es muy lógico y nos muestra el orden de los pasos que haremos. En este tutorial nos quedaremos en la creación de tractografía, y no lo llevaremos al análisis de conectividad (_connectometry_).

Empezamos cargando los datos. Primero que nada, nos aseguramos que tenemos archivos ``.bvec`` y ``.bval`` con el mismo nombre que nuestro archivo ``.nii.gz``. En mi caso tenemos ``dwi_preproc_corrected.nii``, ``dwi_preproc_corrected.bvec``, y ``dwi_preproc_corrected.bval``. 

.. image:: ds04.png
.. image:: ds05.png

Al terminar de cargar (unos cuantos segundos), nos mostrará la _B-table_, una tabla que nos muestra los valores $b$, y la dirección del gradiente de difusión. Podemos notar que comenzamos con imágenes $b=0$ (sin vector asociado), y después muchas imágenes DWI con $b=2500 s/mm^2$,  luego otras $b=0$ y finalmente unas DWIs con $b=800$

.. image:: ds06.png

...

.. image:: ds07.png

La parte inferior de esta tabla me pregunta dónde guardar el archivo que se generará, y con qué nombre. Este archivo contendrá toda la información de las imágenes y los bvecs y bvals.

.. image:: ds08.png

En la pantalla principal de dsi-studio, ahora vemos el archivo que creamos (terminación ``.src.gz``). Le damos doble clic para comenzar a procesar.

En la primer pestaña podemos hacer control de calidad de nuestros datos. Dando clic en cada columna de la _B-table_ podemos ver la imagen correspondiente, y cambiar rebanadas. Los botones nos permiten identificar rebanadas o volúmenes como datos a ignorar (en caso de que tengan artefactos).

.. image:: ds09.png

..............................

.. image:: ds10.png

En el siguiente paso generamos una máscara binaria para únicamente procesar donde hay tejido. También seleccionamos el modelo de difusión a ajustar (DTI, GQI, o QSDR). Seleccionaré GQI, y doy clic a **Run Reconstruction**. Como podemos ver, podríamos seleccionar únicamente DTI si nos interesara, pero GQI de todas maneras va a hacer DTI, así que tenemos ambos con mínimo esfuerzo.

.. image:: ds11.png

Esto generará un archivo ``.fib`` en la misma carpeta donde habíamos creado el archivo ``.src.gz``, y podremos encontrarlo en la pantalla principal de dsi-studio. Le damos doble clic.

.. image:: ds12.png


Esto abrirá una nueva pantalla para todo lo relacionado a tractografía.

Agreguemos la imagen T1 para que podamos hacer un mejor registro de imágenes hacia el atlas y que la tractografía automática funcione mejor. Esto lo hacemos en **Slices** -> **Insert other images**. Y seleccionamos nuestra imagen T1 en formato ``.nii.gz``. En **Slices**-->**Adjust registration** podemos ver qué tan bien o mal fusionadas están.

Ahora habilitamos _autotrack_.

.. image:: ds13.png

Y en **Target** Podemos seleccionar el fascículo que queramos ver, y le damos **Fiber tracking**


Por ejemplo, el _Arcuate_Fasciculus_L_ :

.. image:: ds14.png

Esto aún lo podemos editar, usando regiones de interés que dibujamos en el panel inferior izquierdo, donde pueden apreciarse los streamlines que intersectan con el plano de imagen.

Por ejemplo, vemos unos streamlines que se van demasiado inferiores en el lóbulo temporal,  y queremos quitarlos:

.. image:: ds15.png

Dibujamos una región donde intersectan, y la convertimos en **ROA** (_region of avoidance_).

.. image:: ds16.png

Damos clic derecho a nuestro tracto _Arcuate_Fasciculus_L_ y seleccionamos **Filter Tracks by ROI/ROA/END**.

.. image:: ds17.png

Veremos que esos streamlines desaparecen.

.. image:: ds18.png
