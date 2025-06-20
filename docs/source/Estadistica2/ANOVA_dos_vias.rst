ANOVA de dos vías
=================

https://datatab.es/tutorial/two-factorial-anova-without-repeated-measures

https://rpubs.com/luis_fernandez_bernal/anova_2_vias

**INTRODUCCIÓN**

El análisis de varianza de dos vías, también conocido como plan factorial con dos factores, sirve para estudiar la relación entre una variable dependiente 
cuantitativa y dos variables independientes cualitativas (factores) cada uno con varios niveles. El ANOVA de dos vías permite estudiar cómo influyen por sí 
solos cada uno de los factores sobre la variable dependiente (modelo aditivo) así como la influencia de las combinaciones que se pueden dar entre ellas (modelo 
con interacción).

Supóngase que se quiere estudiar el efecto de un fármaco sobre la presión sanguínea (variable cuantitativa dependiente) dependiendo del sexo del paciente 
(niveles: hombre, mujer) y de la edad (niveles: niño, adulto, anciano).

El efecto simple de los factores consiste en estudiar cómo varía el efecto del fármaco dependiendo del sexo sin diferenciar por edades, así como estudiar cómo 
varia el efecto del fármaco dependiendo de la edad sin tener en cuenta el sexo.

El efecto de la interacción doble consiste en estudiar si la influencia de uno de los factores varía dependiendo de los niveles del otro factor. Es decir, si 
la influencia del factor sexo sobre la actividad del fármaco es distinta según la edad del paciente o lo que es lo mismo, si la actividad del fármaco para una 
determinada edad es distinta según si se es hombre o mujer.

**CONDICIONES ANOVA**

Las condiciones necesarias para que un ANOVA de dos vías sea válido, así como el proceso a seguir para realizarlo son semejantes al ANOVA de una vía. Las 
únicas diferencias son:

**Hipótesis**: El ANOVA de dos vías con repeticiones combina 3 hipótesis nulas, que las medias de las observaciones agrupadas por un factor son iguales, que 
las 
medias de las observaciones agrupadas por el otro factor son iguales; y que no hay interacción entre los dos factores.

Requiere calcular la Suma de Cuadrados y Cuadrados Medios para ambos factores. Es frecuente encontrar que a un factor se le llama “tratamiento” y al otro 
“bloque o block”

Es importante tener en cuenta que el orden en el que se multiplican los factores no afecta al resultado del ANOVA únicamente si el tamaño de los grupos es 
igual (modelo equilibrado) de lo contrario sí importa. Por esta razón es muy recomendable que el diseño sea equilibrado.

El estudio de la interacción de los dos factores sólo es posible si se disponen varias observaciones para cada una de las combinaciones de los niveles.

En R se puede realizar este tipo de ANOVA con las funciones:

* Modelo aditivo: aov(variable_respuesta ~ factor1 + factor2, data)
* Modelo con interacción: aov(variable_respuesta ~ factor1 x factor2, data)

**TAMAÑO DEL EFECTO**

En el caso del ANOVA con dos factores se puede calcular el tamaño del efecto η2 para cada uno de los dos factores así como para la interacción

**EJERCICIO**

Una empresa de materiales de construcción quiere estudiar la influencia que tienen el grosor y el tipo de templado sobre la resistencia máxima de unas láminas 
de acero. Para ello miden el estrés hasta la rotura (variable cuantitativa dependiente) para dos tipos de templado (lento y rápido) y tres grosores de lámina 
(8mm, 16mm y 24 mm).

.. code:: R

   resistencia <- c(15.29, 15.89, 16.02, 16.56, 15.46, 16.91, 16.99, 17.27, 16.85,
                 16.35, 17.23, 17.81, 17.74, 18.02, 18.37, 12.07, 12.42, 12.73,
                 13.02, 12.05, 12.92, 13.01, 12.21, 13.49, 14.01, 13.30, 12.82,
                 12.49, 13.55, 14.53)
   templado <- c(rep(c("rapido", "lento"), c(15,15)))
   grosor <- rep(c(8, 16, 24), each = 5, times = 2)
   datos <- data.frame(templado = templado, grosor = as.factor(grosor),
                    resistencia = resistencia)
   head(datos)

**Análisis descriptivo y Boxplot**

.. code:: R

   library(ggplot2)
   library(gridExtra)

   p1 <- ggplot(data = datos, aes(x = templado, y = resistencia)) + 
      geom_boxplot() + theme_bw()
   p2 <- ggplot(data = datos, aes(x = grosor, y = resistencia)) +
      geom_boxplot() + theme_bw()
   p3 <- ggplot(data = datos, aes(x = templado, y = resistencia, colour = grosor)) +
      geom_boxplot() + theme_bw()
   grid.arrange(p1, p2, ncol = 2)
 
Que la resistencia promedio del templado lento es muy inferior al templado rápido. En cuanto a dispersión, se observa que el templado lento muestra una 
dispersión ligeramente inferior al templado rápido.

La resistencia promedio es similar (ya que comparten valores), los tres tipos de grosor en cuanto a la resistencia. Se observa que la dispersión de la 
resistencia en los tres grosores es similar.

.. code:: R

   p3

Para el templado lento existen diferencias entre el grosor de 8mm respecto a los otros grosores. No obstante, el grosor 16 y 24 mm tienen un promedio similar 
en la resistencia. Las dispersiones de los tres grosores en la resistencia parecen similares.

La media de resistencia es diferente en cada grosor para el templado rápido. Concretamente, se observa una resistencia media superior a la media que aumenta el 
grosor. Se observan diferentes dispersiones para cada grosor en cuanto a la resistencia analizando el templado rápido.

**Medias**

.. code:: R

   with(data=datos,  expr=tapply(resistencia, templado, mean))

.. code:: R

   with(data=datos,  expr=tapply(resistencia, grosor, mean))

.. code:: R

   with(data=datos,  expr=tapply(resistencia, list(grosor, templado), mean))

**Varianzas**

.. code::

   with(data=datos,  expr=tapply(resistencia, templado, var))


.. code::

   with(data=datos,  expr=tapply(resistencia, grosor, var))

.. code::

   with(data=datos,  expr=tapply(resistencia, list(grosor, templado), var))

A partir de la representación gráfica y el cálculo de las medias se puede intuir que existe una diferencia en la resistencia alcanzada dependiendo del tipo de 
templado. La resistencia parece incrementarse a medida que aumenta el grosor de la lámina, si bien no está clara que la diferencia en las medias sea 
significativa. La distribución de las observaciones de cada nivel parece simétrica sin presencia de valores atípicos. A priori parece que se satisfacen las 
condiciones necesarias para un ANOVA, aunque habrá que confirmarlas estudiando los residuos.

También es posible identificar posibles interacciones de los dos factores de forma gráfica mediante lo que se conocen como “gráficos de interacción”. Si las 
líneas que describen los datos para cada uno de los niveles son paralelas, significa que el comportamiento es similar, independientemente del nivel del factor, 
es decir, no hay interacción.

.. code:: R

   interaction.plot(templado, grosor, resistencia, data = datos, col= 1:3, type="b")

.. code:: R

   interaction.plot(grosor, templado, resistencia, data = datos, col= 2:3, type="b")

.. code:: R

   ggplot(data = datos , aes(x = templado, y = resistencia, colour = grosor, group = grosor))+
      stat_summary(fun = mean, geom = "point")+
      stat_summary(fun = mean, geom = "line") +
      labs(y = "mean(resistencia)")+
      theme_bw()

.. code:: R

   ggplot(data = datos , aes(x = grosor, y = resistencia, colour = templado, group = templado))+
     stat_summary(fun = mean, geom = "point")+
     stat_summary(fun = mean, geom = "line") +
     labs(y = "mean(resistencia)")+
     theme_bw()
 
Los gráficos de interacción parecen indicar (a falta de obtener los p-values mediante el ANOVA) que el incremento de resistencia entre los dos tipos de 
templado es proporcional para los tres grosores. Al representar la resistencia en función del grosor para los dos tipos de templado, parece observarse cierta 
desviación en el grosor 24mm. Esta ligera desviación podría deberse a simple variabilidad o porque existe interacción entre las variables grosor y templado, 
por lo que tiene que ser confirmada mediante el ANOVA.

**ANOVA**

.. code:: R

   anova <- aov(resistencia ~templado*grosor, data=datos)
   summary(anova)

Templado tiene un F de 380.082 con un p-valor de 0.000 < 0.05. Tenemos evidencia empírica suficiente para rechazar la igualdad de medias de resistencia 
respecto al templado.

Grosor tiene un F de 17.56 con un p-valor de 0.000 < 0.05. Tenemos evidencia empírica suficiente para rechazar la igualdad de medias de resistencia respecto al 
templado.

El efecto de interacción entre templado y grosor al estudiar la resistencia no permite rechazar la hipótesis de igualdad de resistencias medias al 5% (p-valor 
ess 0.08>0.05).

**El efecto de interacción no es estadísticamente significativo**

**Tamaño del efecto**

.. code:: R

   library(lsr)
   etaSquared(anova)

Templado es mayor al 5% (>50%), el tamaño del efecto es elevado.

Grosor es mayor al 5% (>50%), el tamaño del efecto es elevado.

Templado x Grosor es 1.21% (<50%) < 5%; por tanto, el efecto de la interacción es reducido.

**Condiciones del ANOVA**

.. code:: R

   plot(anova)


Se aceptan las 4 hipótesis. Tenemos algún dato anómalo, pero no es significativo. Se acepta la normalidad y la homocedasticidad. Por tanto, el análisis anova 
de 2 vías es concluyente.

**EJERCICIO (REPASO DE ANOVA DE 2 VÍAS)**

Supóngase un estudio clínico que analiza la eficacia de un medicamento teniendo en cuenta dos factores, el sexo (masculino y femenino) y la juventud (joven, 
adulto). Se quiere analizar si el efecto es diferente entre alguno de los niveles de cada variable por si sola o en combinación.

Este estudio implica comprobar si el efecto medio del fármaco es significativamente distinto entre alguno de los siguientes grupos: hombres, mujeres, jóvenes, 
adultos, hombres jóvenes, hombres adultos, mujeres jóvenes y mujeres adultas.

.. code:: R

   subject <- as.factor(c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17,
                       18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30))
   sex <- c("female", "male", "male", "female", "male", "male", "male", "female",
         "female", "male", "male", "male", "male", "female", "female", "female",
         "male", "female", "female", "male", "male", "female", "male", "male",
         "male", "male", "male", "male", "female", "male" )
   age <- c("adult", "adult", "adult", "adult", "adult", "adult", "young", "young",
         "adult", "young", "young", "adult", "young", "young", "young", "adult",
         "young", "adult", "young", "young", "young", "young", "adult", "young",
         "young", "young", "young", "young", "young", "adult")
   result <- c(7.1, 11.0, 5.8, 8.8, 8.6, 8.0, 3.0, 5.2, 3.4, 4.0, 5.3, 11.3, 4.6, 6.4,
            13.5, 4.7, 5.1, 7.3, 9.5, 5.4, 3.7, 6.2, 10.0, 1.7, 2.9, 3.2, 4.7, 4.9,
            9.8, 9.4)

   datos <- data.frame(subject, sex, age, result)
   head(datos, 4)

.. code:: R

   p1 <- ggplot(data = datos, mapping = aes(x = age, y = result)) +
      geom_boxplot() +
      theme_bw()
   p2 <- ggplot(data = datos, mapping = aes(x = sex, y = result)) +
      geom_boxplot() +
      theme_bw()
   p3 <- ggplot(data = datos, mapping = aes(x = age, y = result, colour = sex)) +
      geom_boxplot() +
      theme_bw()
   grid.arrange(p1, p2, ncol = 2)


El resultado promedio de la prueba es mayor para los adultos que para los jóvenes. Parece ser que la dispersión es similar entre los dos grupos.

El resultado promedio de la prueba es similar entre hombres y mujeres, pues los boxplots comparten valores. Por otro lado, la dispersión entre el diagrama de 
hombres y el de mujeres al analizar el resultado de la prueba.

.. code:: R

   p3


**Female**

El promedio del resultado es similar, con similar dispersión.

**Male**

Los adultos varones muestran un promedio de resultado superior al de los jóvenes. Con similar dispersión.

**Female x age**

En el resultado de los adultos los hombres muestran un resultado mayor al de las mujeres.

En el resultado de los jóvenes el resultado de las mujeres es muy superior al de los hombres.

**Puede existir un efecto de interacción significativo.**

**Medias**

.. code:: R

   with(data = datos,expr = tapply(result, sex, mean))

.. code:: R

   with(data = datos,expr = tapply(result, age, mean))

.. code:: R

   with(data = datos,expr = tapply(result, list(sex, age), mean))

**Varianzas**

.. code:: R
   
   with(data = datos,expr = tapply(result, sex, var))

.. code:: R

   with(data = datos,expr = tapply(result, age, var))

.. code:: R

   with(data = datos,expr = tapply(result, list(sex, age), var))

A partir de la representación gráfica y el cálculo de las medias se puede intuir que existe una diferencia en el efecto del fármaco dependiendo de la edad y 
también del sexo. El efecto parece ser mayor en mujeres que en hombres y en adultos que en jóvenes, si bien la significancia se tendrá que confirmar con el 
ANOVA. La distribución de las observaciones de cada nivel parece simétrica con la presencia de un único valor atípico. A priori parece que se satisfacen las 
condiciones necesarias para un ANOVA, aunque habrá que confirmarlas estudiando los residuos.

Es posible identificar posibles interacciones de los dos factores de forma gráfica mediante lo que se conocen como “gráficos de interacción”. Si las líneas que 
describen los datos para cada uno de los niveles son paralelas significa que el comportamiento es similar independientemente del nivel del factor, es decir, no 
hay interacción.

.. code:: R

   ggplot(data = datos, aes(x = age, y = result, colour = sex, group = sex)) +
    stat_summary(fun = mean, geom = "point") +
    stat_summary(fun = mean, geom = "line") +
    labs(y  =  'mean (result)') + 
    theme_bw()


.. code:: R

   ggplot(data = datos, aes(x = sex, y = result, colour = age, group = age)) +
    stat_summary(fun = mean, geom = "point") +
    stat_summary(fun = mean, geom = "line") +
    labs(y  =  'mean (result)') + 
    theme_bw()


Cuando las gráficas se intersectan en un punto indican que existe un efecto de interacción significativo.

Se observa una clara interacción entre ambos factores. La respuesta al fármaco es distinta entre adultos y jóvenes, y de tendencia inversa dependiendo del 
sexo. En mujeres, la respuesta es mayor cuando son jóvenes que cuando son adultas y en hombres mayor cuando son adultos y menor cuando son jóvenes. El ANOVA 
permite saber si las diferencias observadas son significativas.

**ANOVA**

.. code:: R

   anova2 <- aov(result~sex*age, data=datos)
   summary(anova2)

El efecto del fármaco (result) no encuentra diferencias entre hombres y mujeres, pues el p-valor es 0.055 > 0.05. Tenemos evidencia a favor de la hipótesis 
nula de igualdad de medias. No obstante, para un nivel de significación del 10%, sí existirían diferencias significativas del efecto del fármaco ante el sexo 
del individuo (p-valor de 0.055 < 0.10 rechaza H0).

El efecto de la edad en cuanto al efecto del fármaco sí es diferente, pues el p valor es 0.004 < 0.005. Tenemos evidencia empírica suficiente para rechazar H0 
al 5%.

El efecto de interacción es significativo, pues el p-valor es 0.000 < 0.05. Tenemos evidencia empírica suficiente para rechazar H0 al nivel del 5%.

.. code:: R

   etaSquared(anova2)

El análisis de varianza no encuentra diferencias significativas en el efecto del fármaco entre hombres y mujeres (factor sex) pero sí encuentra diferencias 
significativas entre jóvenes y adultos y entre al menos dos grupos de las combinaciones de sexo y edad, es decir, hay significancia para la interacción. El 
tamaño del efecto η2 es grande tanto para edad como para la interacción de edad y sexo.

**Condiciones del ANOVA**

.. code:: R

   plot(anova2)

Se acepta la normalidad, no existen datos anómalos influyentes y tenemos homocedasticidad.

Los resultados del informe sobre el anova de dos vías son concluyentes. Es decir, sí existe un efecto significativo en la interacción del sexo y la edad en 
cuanto al resultado del fármaco.


