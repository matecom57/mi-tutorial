SIMPLE LINEAR REGRESSION AND CORRELATION
========================================

**CHAPTER OVERVIEW**

This chapter provides an introduction and overview of two common techniques for exploring the strength of the 
relationship between two variables. The ﬁrst technique, linear regression, will help us ﬁnd an objective way 
to predict or estimate the value of one variable given a value of another variable. The second technique, 
correlation, will help us ﬁnd an objective measure of the strength of the relationship between two variables.

Este capítulo ofrece una introducción y una visión general de dos técnicas comunes para explorar la solidez de 
la relación entre dos variables. La primera, la regresión lineal, nos ayudará a encontrar una forma objetiva de 
predecir o estimar el valor de una variable dado el valor de otra. La segunda, la correlación, nos ayudará a 
encontrar una medida objetiva de la solidez de la relación entre dos variables.

**TOPICS**

9.1 INTRODUCTION

9.2 THE REGRESSION MODEL

9.3 THE SAMPLE REGRESSION EQUATION

9.4 EVALUATING THE REGRESSION EQUATION

9.5 USING THE REGRESSION EQUATION

9.6 THE CORRELATION MODEL

9.7 THE CORRELATION COEFFICIENT

9.8 SOME PRECAUTIONS

9.9 SUMMARY

**LEARNING OUTCOMES**

After studying this chapter, the student will

1. be able to obtain a simple linear regression model and use it to make predictions.

2. be able to calculate the coefﬁcient of determination and to interpret tests of regression coefﬁcients.

3. be able to calculate correlations among variables.

4. understand how regression and correlation differ and when the use of each is appropriate.

9.1 INTRODUCTION

In analyzing data for the health sciences disciplines, we ﬁnd that it is frequently desirable to learn 
something about the relationship between two numeric variables. We may, for example, be interested in studying 
the relationship between blood pressure and age, height and weight, the concentration of an injected drug and 
heart rate, the consumption level of some nutrient and weight gain, the intensity of a stimulus and reaction 
time, or total family income and medical care expenditures. The nature and strength of the relationships 
between variables such as these may be examined by regression and correlation analysis, two statistical 
techniques that, although related, serve different purposes.

Al analizar datos para las disciplinas de las ciencias de la salud, con frecuencia resulta deseable comprender 
la relación entre dos variables numéricas. Por ejemplo, podríamos estar interesados ​​en estudiar la relación 
entre la presión arterial y la edad, la altura y el peso, la concentración de una droga inyectable y la 
frecuencia cardíaca, el nivel de consumo de algún nutriente y el aumento de peso, la intensidad de un estímulo 
y el tiempo de reacción, o el ingreso familiar total y los gastos de atención médica. La naturaleza y la 
solidez de las relaciones entre variables como estas pueden examinarse mediante análisis de regresión y 
correlación, dos técnicas estadísticas que, aunque relacionadas, tienen propósitos diferentes.

**Regression**

Regression analysis is helpful in assessing speciﬁc forms of the relationship between variables, and the 
ultimate objective when this method of analysis is employed usually is to predict or estimate the value of one 
variable corresponding to a given value of another variable. The ideas of regression were ﬁrst elucidated by 
the English scientist Sir Francis Galton (1822–1911) in reports of his research on heredity—ﬁrst in sweet peas 
and later in human stature. He described a tendency of adult offspring, having either short or tall parents, to 
revert back toward the average height of the general population. He ﬁrst used the word reversion, and later 
regression, to refer to this phenomenon.

El análisis de regresión es útil para evaluar formas específicas de la relación entre variables, y el objetivo 
final cuando se emplea este método de análisis suele ser predecir o estimar el valor de una variable 
correspondiente a un valor dado de otra variable. Las ideas de regresión fueron dilucidadas por primera vez por 
el científico inglés Sir Francis Galton (1822-1911) en informes de su investigación sobre la herencia, primero 
en guisantes de olor y luego en la estatura humana. Describió una tendencia de la descendencia adulta, ya sea 
de padres bajos o altos, a volver a la estatura promedio de la población general. Utilizó primero el término 
"reversión", y posteriormente "regresión", para referirse a este fenómeno.

**Correlation**

Correlation analysis, on the other hand, is concerned with measuring the strength of the relationship between 
variables. When we compute measures of correlation from a set of data, we are interested in the degree of the 
correlation between variables. Again, the concepts and terminology of correlation analysis originated with 
Galton, who ﬁrst used the word correlation in 1888.

El análisis de correlación, por otro lado, se centra en medir la solidez de la relación entre variables. Al 
calcular medidas de correlación a partir de un conjunto de datos, nos interesa el grado de correlación entre 
las variables. Los conceptos y la terminología del análisis de correlación se originaron con Galton, quien 
utilizó por primera vez el término «correlación» en 1888.

In this chapter our discussion is limited to the exploration of the linear relationship between two variables. 
The concepts and methods of regression are covered ﬁrst, beginning in the next section. In Section 9.6 the 
ideas and techniques of correlation are introduced. In the next chapter we consider the case where there is an 
interest in the relationships among three or more variables.

En este capítulo, nuestra discusión se limita a la exploración de la relación lineal entre dos variables. Los 
conceptos y métodos de regresión se abordan primero, comenzando en la siguiente sección. En la Sección 9.6 se 
introducen las ideas y técnicas de correlación. En el siguiente capítulo, consideramos el caso donde existe 
interés en las relaciones entre tres o más variables.

Regression and correlation analysis are areas in which 
the speed and accuracy of a computer are most 
appreciated. The data for the exercises of this chapter, therefore, are presented in a way that makes them 
suitable for computer processing. As is always the case, the input requirements and output features of the 
particular programs and software packages to be used should be studied carefully.

El análisis de regresión y correlación es un área en la que la velocidad y la precisión de una computadora son 
muy valoradas. Por lo tanto, los datos de los ejercicios de este capítulo se presentan de forma que sean 
adecuados para su procesamiento informático. Como siempre, se deben estudiar cuidadosamente los requisitos de 
entrada y las características de salida de los programas y paquetes de software que se utilizarán.

**9.2 THE REGRESSION MODEL**

In the typical regression problem, as in most problems in applied statistics, researchers have available for 
analysis a sample of observations from some real or hypothetical population. Based on the results of their 
analysis of the sample data, they are interested in reaching decisions about the population from which the 
sample is presumed to have been drawn. It is important, therefore, that the researchers understand the nature 
of the population in which they are interested. They should know enough about the population to be able either 
to construct a mathematical model for its representation or to determine if it reasonably 
ﬁts some established model.

En el problema típico de regresión, como en la mayoría de los problemas de estadística aplicada, los 
investigadores disponen de una muestra de observaciones de una población real o hipotética para su análisis. 
Con base en los resultados de su análisis de los datos muestrales, les interesa tomar decisiones sobre la 
población de la que se presume que se extrajo la muestra. Por lo tanto, es importante que los investigadores 
comprendan la naturaleza de la población que les interesa. Deben conocerla lo suficiente como para construir un 
modelo matemático que la represente o determinar si se ajusta razonablemente a un modelo establecido.


A researcher about to analyze a set of data by the methods of simple linear 
regression, for example, should be secure in the knowledge that the simple linear regression model is, at 
least, an approximate representation of the population. It is unlikely that the model will be a perfect 
portrait of the real situation, since this characteristic is seldom found in models of practical value. A model 
constructed so that it corresponds precisely with the details of the situation is usually too complicated to 
yield any information of value. On the other hand, the results obtained from the analysis of data that have 
been forced into a model that does not ﬁt are also worthless. Fortunately, however, a perfectly ﬁtting model 
is not a requirement for obtaining useful results. Researchers, then, should be able to distinguish between the 
occasion when their chosen models and the data are sufﬁciently compatible for them to proceed and the case 
where their chosen model must be abandoned.

Un investigador que se dispone a analizar un conjunto de datos mediante métodos de regresión lineal simple, por 
ejemplo, debería tener la certeza de que el modelo de regresión lineal simple es, al menos, una representación 
aproximada de la población. Es improbable que el modelo sea un retrato perfecto de la situación real, ya que 
esta característica rara vez se encuentra en modelos de valor práctico. Un modelo construido de forma que se 
corresponda con precisión con los detalles de la situación suele ser demasiado complejo para proporcionar 
información valiosa. Por otro lado, los resultados obtenidos del análisis de datos que se han forzado en un 
modelo que no se ajusta también son inútiles. Afortunadamente, sin embargo, un modelo que se ajuste 
perfectamente no es un requisito para obtener resultados útiles. Los investigadores, por lo tanto, deberían 
poder distinguir entre la ocasión en que sus modelos elegidos y los datos son suficientemente compatibles para 
que puedan continuar y el caso en que su modelo elegido debe abandonarse.

**Assumptions Underlying Simple Linear Regression**

In the simple linear regression model two variables, usually labeled X and Y, are of interest. The letter X is 
usually used to designate a variable referred to as the independent variable, since frequently it is controlled 
by the investigator; that is, values of X may be selected by the investigator and, corresponding to each 
preselected value of X, one or more values of another variable, labeled Y, are obtained. The variable, Y, 
accordingly, is called the dependent variable, and we speak of the regression of Y on X. The following are the 
assumptions underlying the simple linear regression model.

En el modelo de regresión lineal simple, dos variables, generalmente denominadas X e Y, son de interés. La 
letra X se utiliza generalmente para designar una variable denominada variable independiente, ya que 
frecuentemente es controlada por el investigador; es decir, el investigador puede seleccionar valores de X y, 
correspondientes a cada valor preseleccionado de X, se obtienen uno o más valores de otra variable, denominada 
Y. Por consiguiente, la variable Y se denomina variable dependiente, y hablamos de la regresión de Y sobre X. A 
continuación, se presentan los supuestos subyacentes al modelo de regresión lineal simple.

1. Values of the independent variable X are said to be “ﬁxed.” This means that the values of X are preselected 
by the investigator so that in the collection of the data they are not allowed to vary from these preselected 
values. In this model, X is referred to by some writers as a nonrandom variable and by others as a mathematical 
variable. It should be pointed out at this time that the statement of this assumption classiﬁes our model as 
the classical regression model. Regression analysis also can be carried out on data in which X is a random 
variable.

1. Se dice que los valores de la variable independiente X son fijos. Esto significa que el investigador 
preselecciona los valores de X para que, al recopilar los datos, no puedan variar con respecto a estos valores. 
En este modelo, algunos autores se refieren a X como una variable no aleatoria y otros como una variable 
matemática. Cabe señalar que este supuesto clasifica nuestro modelo como un modelo de regresión clásico. El 
análisis de regresión también puede realizarse con datos donde X es una variable aleatoria.

 2. The variable X 
is measured without error. Since 
no measuring procedure is perfect, this means that the magnitude of the measurement error in X is negligible.

3. For each value of X there is a subpopulation of Y values. For the usual inferential procedures of estimation 
and hypothesis testing to be valid, these subpopulations must be normally distributed. In order that these 
procedures may be presented it will be assumed that the Y values are normally distributed in the examples and 
exercises that follow.

4. The variances of the subpopulations of Y are all equal and denoted by s2 .

5. The means of the subpopulations of Y all lie on the same straight line. This is known as the assumption of 
linearity. This assumption may be expressed symbolically as

.. math::

   \mu_{y|x} = \beta_0 + \beta_1 x

(9.2.1)

where m y|x is the mean of the subpopulation of Y values for a particular value of X, and b 0 and b 1 are 
called the population regression coefﬁcients. Geometrically, b 0 and b 1 represent the y-intercept and slope, 
respectively, of the line on which all of the means are assumed to lie.

6. The Y values are statistically independent. In other words, in drawing the sample, it is assumed that the 
values of Y chosen at one value of X in no way depend on the values of Y chosen at another value of X.

These assumptions may be summarized by means of the following equation, which is called the regression model:

.. math::

   y = \beta_0 + \beta_1 x + \varepsilon

(9.2.2)

where y is a typical value from one of the subpopulations of Y, b 0 and b 1 are as deﬁned for Equation 9.2.1, 
and P is called the error term. If we solve 9.2.2 for P, we have

.. math::

   \varepsilon = y - (\beta_0 + \beta_1 x
   
   = y - \mu_{y|x}


(9.2.3)

and we see that P shows the amount by which y deviates from the mean of the subpopulation of Y values from 
which it is drawn. As a consequence of the assumption that the subpopulations of Y values are normally 
distributed with equal variances, the P’s for each subpopulation are normally distributed with a variance equal 
to the common variance of the subpopulations of Y values.

The following acronym will help the reader remember most of the assumptions necessary for inference in linear 
regression analysis:

LINE [Linear (assumption 5), Independent (assumption 6), Normal (assumption 3), Equal variances (assumption 4)]

A graphical representation of the regression model is given in Figure 9.2.1.

**9.3 THE SAMPLE REGRESSION EQUATION**

In simple linear regression the object of the researcher’s interest is the population regression equation—the 
equation that describes the true relationship between the dependent variable Y and the independent variable X. 
The variable designated by Y is sometimes called the response variable and X is sometimes called the predictor 
variable.

En la regresión lineal simple, el objeto de interés del investigador es la ecuación de regresión poblacional, 
la ecuación que describe la verdadera relación entre la variable dependiente Y y la variable independiente X. 
La variable designada por Y a veces se denomina variable de respuesta y X a veces se denomina variable 
predictora.

In an effort to reach a decision regarding the likely form of this relationship, the researcher draws a sample 
from the population of interest and using the resulting data, computes a sample regression equation that forms 
the basis for reaching conclusions regarding the unknown population regression equation.

En un esfuerzo por llegar a una decisión sobre la forma probable de esta relación, el investigador extrae una 
muestra de la población de interés y, utilizando los datos resultantes, calcula una ecuación de regresión de 
muestra que forma la base para llegar a conclusiones con respecto a la ecuación de regresión de población 
desconocida.

 **Steps in Regression Analysis**

In the absence of extensive information regarding the nature of the variables of interest, a frequently 
employed strategy is to assume initially that they are linearly related. Subsequent analysis, then, involves 
the following steps.

1. Determine whether or not the assumptions underlying a linear relationship are met in the data available for 
analysis.

2. Obtain the equation for the line that best ﬁts the sample data.

3. Evaluate the equation to obtain some idea of the strength of the relationship and the usefulness of the 
equation for predicting and estimating.

4. If the data appear to conform satisfactorily to the linear model, use the equation obtained from the sample 
data to predict and to estimate.

When we use the regression equation to predict, we will be predicting the value Y is likely to have when X has 
a given value. When we use the equation to estimate, we will be estimating the mean of the subpopulation of Y 
values assumed to exist at a given value of X. Note that the sample data used to obtain the regression equation 
consist of known values of both X and Y. When the equation is used to predict and to estimate Y, only the 
corresponding values of X will be known. We illustrate the steps involved in simpler linear regression analysis 
by means of the following example.

Al usar la ecuación de regresión para predecir, se predice el valor probable de Y cuando X tiene un valor dado. 
Al usar la ecuación para estimar, se estima la media de la subpoblación de valores de Y que se supone que 
existen para un valor dado de X. Cabe destacar que los datos muestrales utilizados para obtener la ecuación de 
regresión consisten en valores conocidos tanto de X como de Y. Al usar la ecuación para predecir y estimar Y, 
solo se conocen los valores correspondientes de X. El siguiente ejemplo ilustra los pasos de un análisis de 
regresión lineal más simple.

 **EXAMPLE 9.3.1**

Després et al. (A-1) point out that the topography of adipose tissue (AT) is associated with metabolic 
complications considered as risk factors for cardiovascular disease. It is important, they state, to measure 
the amount of intraabdominal AT as part of the evaluation of the cardiovascular-disease risk of an individual. 
Computed tomography (CT), the only available technique that precisely and reliably measures the amount of deep 
abdominal AT, however, is costly and requires irradiation of the subject. In addition, the technique is not 
available to many physicians. Després and his colleagues conducted a study to develop equations to predict the 
amount of deep abdominal AT from simple anthropometric measurements. Their subjects were men between the ages 
of 18 and 42 years who were free from metabolic disease that would require treatment.



Among the measurements taken on each subject were deep abdominal AT obtained by CT and waist circumference as 
shown in Table 9.3.1. A question of interest is how well one can predict and estimate deep abdominal AT from 
knowledge of the waist circumference. This question is typical of those that can be answered by means of 
regression analysis. Since deep abdominal AT is the variable about which we wish to make predictions and 
estimations, it is the dependent variable. The variable waist measurement, knowledge of which will be used to 
make the predictions and estimations, is the independent variable.

The Scatter Diagram

A ﬁrst step that is usually useful in studying the relationship between two variables is to prepare a scatter 
diagram of the data such as is shown in Figure 9.3.1. The points are plotted by assigning values of the 
independent variable X to the horizontal axis and values of the dependent variable Y to the vertical axis.

The pattern made by the points plotted on the scatter diagram usually suggests the basic nature and strength of 
the relationship between two variables. As we look at Figure 9.3.1, for example, the points seem to be 
scattered around an invisible straight line. The scatter diagram also shows that, in general, subjects with 
large waist circumferences also have larger amounts of deep abdominal AT. These impressions suggest that the 
relationship between the two variables may be described by a straight line crossing the Y-axis below the origin 
and making approximately a 45-degree angle with the X-axis. It looks as if it would be simple to draw, 
freehand, through the data points the line that describes the relationship between X and Y. It is highly 
unlikely, however, that the lines drawn by any two people would be exactly the same. In other words, for every 
person drawing such a line by eye, or freehand, we would expect a slightly different line. The question then 
arises as to which line best describes the relationship between the two variables. We cannot obtain an answer 
to this question by inspecting the lines. In fact, it is not likely that any freehand line drawn

through the data will be the line that best describes the relationship between X and Y, since freehand lines 
will reﬂect any defects of vision or judgment of the person drawing the line. Similarly, when judging which of 
two lines best describes the relationship, subjective evaluation is liable to the same deﬁciencies.

What is needed for obtaining the desired line is some method that is not fraught with these difﬁculties.

The Least-Squares Line

The method usually employed for obtaining the desired line is known as the method of least squares, and the 
resulting line is called the least-squares line. The reason for calling the method by this name will be 
explained in the discussion that follows.

We recall from algebra that the general equation for a straight line may be written as

y = a + bx

(9.3.1)

where y is a value on the vertical axis, x is a value on the horizontal axis, a is the point where the line 
crosses the vertical axis, and b shows the amount by which y changes for each unit change in x. We refer to a 
as the y-intercept and b as the slope of the line. To draw a line based on Equation 9.3.1, we need the 
numerical values of the constants a and b. Given these constants, we may substitute various values of x into 
the equation to obtain corresponding values of y. The resulting points may be plotted. Since any two such 
coordinates determine a straight line, we may select any two, locate them on a graph, and connect them to 
obtain the line corresponding to the equation.

Obtaining the Least-Square Line

The least-squares regression line equation may be obtained from sample data by simple arithmetic calculations 
that may be carried out by hand using the following equations

N b 1 =

n a i=1

1x i - x21y 1 - y2

n a i=1

1x i - x2 2

(9.3.2)

N b 0 = y -

N1  bx

(9.3.3)

where x i and y i are the corresponding values of each data point (X, Y), x and y are the N N means of the X 
and Y sample data values, respectively, and b 0 and b 1 are the estimates of the intercept b 0 and slope b1 , 
respectively, of the population regression line. Since the necessary hand calculations are time consuming, 
tedious, and subject to error, the regression line equation is best obtained through the use of a computer 
software package. Although the typical researcher need not be concerned with the arithmetic involved, the 
interested reader will ﬁnd them discussed in references listed at the end of this chapter.

For the data in Table 9.3.1 we obtain the least-squares regression equation by means of MINITAB. After entering 
the X values in Column 1 and the Y values in Column 2 we proceed as shown in Figure 9.3.2.

For now, the only information from the output in Figure 9.3.2 that we are interested in is the regression 
equation. Other information in the output will be discussed later.

From Figure 9.3.2 we see that the linear equation for the least-squares line that describes the relationship 
between waist circumference and deep abdominal AT may be written, then, as

N y = -216 + 3.46x

N This equation tells us that since b 0 is negative, the line crosses the Y-axis below the N origin, and that 
since b 1 the slope, is positive, the line extends from the lower left-hand corner of the graph to the upper 
right-hand corner. We see further that for each unit increase in x, y increases by an amount equal to 3.46. The 
symbol y denotes a value of y computed from the equation, rather than an observed value of Y.

By substituting two convenient values of X into Equation 9.3.2, we may obtain the necessary coordinates for 
drawing the line. Suppose, ﬁrst, we let X = 70 and obtain

N y = -216 + 3.461702 = 26.2

If we let X = 110 we obtain

N y = -216 + 3.4611102 = 164

The line, along with the original data, is shown in Figure 9.3.3.

The Least-Squares Criterion

Now that we have obtained what we call the “best ﬁt” line for describing the relationship between our two 
variables, we need to determine by what criterion it is considered best. Before the criterion is stated, let us 
examine Figure 9.3.3. We note that generally the least-squares line does not pass through the observed points 
that are plotted on the scatter diagram. In other words, most of the observed points deviate from the line by 
varying amounts.

The line that we have drawn through the points is best in this sense:

The sum of the squared vertical deviations of the observed data points (yi ) from the least-squares line is 
smaller than the sum of the squared vertical deviations of the data points from any other line.

In other words, if we square the vertical distance from each observed point ( yi ) to the least-squares line 
and add these squared values for all points, the resulting total will be smaller than the similarly computed 
total for any other line that can be drawn through the points. For this reason the line we have drawn is called 
the least-squares line.

9.4 EVALUATING THE REGRESSION EQUATION

Once the regression equation has been obtained it must be evaluated to determine whether it adequately 
describes the relationship between the two variables and whether it can be used effectively for prediction and 
estimation purposes.

When H 0 : B 1 " 0 Is Not Rejected

If in the population the relationship between X and Y is linear, b1 , the slope of the line that describes this 
relationship, will be either positive, negative, or zero. If b 1 is zero, sample data drawn from the population 
will, in the long run, yield regression equations that are of little or no value for prediction and estimation 
purposes. Furthermore, even though we assume that the relationship between X and Y is linear, it may be that 
the relationship could be described better by some nonlinear model. When this is the case, sample data when 
fitted to a linear model will tend to yield results compatible with a population slope of zero. Thus, following 
a test in which the null hypothesis that b 1 equals zero is not rejected, we may conclude (assuming that we 
have not made a type II error by accepting a false null hypothesis) either (1) that although the relationship 
between X and Y may be linear it is not strong enough for X to be of much value in predicting and estimating Y, 
or (2) that the relationship between X and Y is not linear; that is, some curvilinear model provides a better 
fit to the data. Figure 9.4.1 shows the kinds of relationships between X and Y in a population that may prevent 
rejection of the null hypothesis that

b 1 = 0.

When H 0 : B 1 " 0 Is Rejected

Now let us consider the situations in a population that may lead to rejection of the null hypothesis that b 1 = 
0. Assuming that we do not commit a type I error, rejection of the null hypothesis that b 1 = 0 may be 
attributed to one of the following conditions in the population: (1) the relationship is linear and of 
sufficient strength to justify the use of sample regression equations to predict and estimate Y for given 
values of X; and (2) there is a good fit of the data to a linear model, but some curvilinear model might 
provide an even better fit. Figure 9.4.2 illustrates the two population conditions that may lead to rejection 
of H 0 : b 1 = 0.

Thus, we see that before using a sample regression equation to predict and estimate, it is desirable to test H 
0 : b 1 = 0. We may do this either by using analysis of variance and the F statistic or by using the t 
statistic. We will illustrate both methods. Before we do this, however, let us see how we may investigate the 
strength of the relationship between X and Y.

The Coefﬁcient of Determination

One way to evaluate the strength of the regression equation is to compare the scatter of the points about the 
regression line with the scatter about y, the mean of the sample values of Y. If we take the scatter diagram 
for Example 9.3.1 and draw through the points a line that intersects the Y-axis at y and is parallel to the 
X-axis, we may obtain a visual impression of the relative magnitudes of the scatter of the points about this 
line and the regression line. This has been done in Figure 9.4.3.

It appears rather obvious from Figure 9.4.3 that the scatter of the points about the regression line is much 
less than the scatter about the y line. We would not wish, however, to decide on this basis alone that the 
equation is a useful one. The situation may not be always this clear-cut, so that an objective measure of some 
sort would be much more desirable. Such an objective measure, called the coefﬁcient of determination, is 
available.

The Total Deviation

Before deﬁning the coefﬁcient of determination, let us justify its use by examining the logic behind its 
computation. We begin by considering the point corresponding to any observed value, y i , and by measuring its 
vertical distance from the y line. We call this the total deviation and designate it 1y i - y2.

If we measure the vertical distance from the regresNi  sion line to the y line, we obtain 1y - y2, which is 
called the explained deviation, since

observed point from the regression line to obtain 1y i - y 2, which is called the unexplained deviation, since 
it represents the portion of the total deviation not “explained” or accounted for by the introduction of the 
regression line. These three quantities are shown for a typical value of Y in Figure 9.4.4. The difference 
between the observed value N of Y and the predicted value of Y, 1y i - y i 2, is also referred to as a 
residual. The set of residuals can be used to test the underlying linearity and equal-variances assumptions of 
the regression model described in Section 9.2. This procedure is illustrated at the end of this section.

It is seen, then, that the total deviation for a particular y i is equal to the sum of the explained and 
unexplained deviations. We may write this symbolically as

N i Ni  1y i - y2 = 1y - y2 + 1y i - y 2

total deviation

explained unexplained deviation deviation

(9.4.1)

If we measure these deviations for each value of y i and y i , square each deviation, and add up the squared 
deviations, we have N Ni  g 1y i - y2 2 = g 1y i - y2 2 + g 1y i - y 2 2 (9.4.2)

total sum of squares

explained sum of squares

unexplained sum of squares

These quantities may be considered measures of dispersion or variability.

Total Sum of Squares

The total sum of squares (SST), for example, is a measure of the dispersion of the observed values of Y about 
their mean y; that is, this term is a measure of the total variation in the observed values of Y. The reader 
will recognize this term as the numerator of the familiar formula for the sample variance.

Explained Sum of Squares

The explained sum of squares measures the amount of the total variability in the observed values of Y that is 
accounted for by the linear relationship between the observed values of X and Y. This quantity is referred to 
also as the sum of squares due to linear regression (SSR).

Unexplained Sum of Squares

The unexplained sum of squares is a measure of the dispersion of the observed Y values about the regression 
line and is sometimes called the error sum of squares, or the residual sum of squares (SSE). It is this 
quantity that is minimized when the least-squares line is obtained.

We may express the relationship among the three sums of squares values as

SST = SSR + SSE

The numerical values of these sums of squares for our illustrative example appear in the analysis of variance 
table in Figure 9.3.2. Thus, we see that SST = 354531,

SSR = 237549, SSE = 116982, and

354531 = 237549 + 116982

354531 = 354531

Calculating r2 

It is intuitively appealing to speculate that if a regression equation does a good job of describing the 
relationship between two variables, the explained or regression sum of squares should constitute a large 
proportion of the total sum of

squares. It would be of interest, then, to determine the magnitude of this proportion by computing the ratio of 
the explained sum of squares to the total sum of squares. This is exactly what is done in evaluating a 
regression equation based on sample data, and the result is called the sample coefﬁcient of determination, r2 
. That is,

r 2 =

N g1y i - y2 2 g1y i - y2 2

SSR = SST

In our present example we have, using the sums of squares values from Figure 9.3.2,

237549 r 2 = = .67 354531

The sample coefﬁcient of determination measures the closeness of ﬁt of the sample Ni  regression equation to 
the observed values of Y. When the quantities 1y i - y 2, the vertical distances of the observed values of Y 
from the equations, are small, the unexplained sum of squares is small. This leads to a large explained sum of 
squares that leads, in turn, to a large value of r2 . This is illustrated in Figure 9.4.5.

In Figure 9.4.5(a) we see that the observations all lie close to the regression line, and we would expect r 2 
to be large. In fact, the computed r 2 for these data is .986, indicating that about 99 percent of the total 
variation in the y i is explained by the regression.

In Figure 9.4.5(b) we illustrate a case in which the y i are widely scattered about the regression line, and 
there we suspect that r 2 is small. The computed r 2 for the data is .403; that is, less than 50 percent of the 
total variation in the y i is explained by the regression.

The largest value that r 2 can assume is 1, a result that occurs when all the variation in the y i is explained 
by the regression. When r 2 = 1 all the observations fall on the regression line. This situation is shown in 
Figure 9.4.5(c).

The lower limit of r 2 is 0. This result is obtained when the regression line and the line drawn through y 
coincide. In this situation none of the variation in the y i is explained by the regression. Figure 9.4.5(d) 
illustrates a situation in which r 2 is close to zero.

When r 2 is large, then, the regression has accounted for a large proportion of the total variability in the 
observed values of Y, and we look with favor on the regression equation. On the other hand, a small r 2 which 
indicates a failure of the regression to account for a large proportion of the total variation in the observed 
values of Y, tends to cast doubt on the usefulness of the regression equation for predicting and estimating 
purposes. We do not, however, pass final judgment on the equation until it has been subjected to an objective 
statistical test.

Testing H 0 : B 1 " 0 with the F Statistic

The following example illustrates one method for reaching a conclusion regarding the relationship between X and 
Y.

EXAMPLE 9.4.1

Refer to Example 9.3.1. We wish to know if we can conclude that, in the population from which our sample was 
drawn, X and Y are linearly related.

Solution:

The steps in the hypothesis testing procedure are as follows:

1. Data. The data were described in the opening statement of Example

9.3.1.

2. Assumptions. We presume that the simple linear regression model and its underlying assumptions as given in 
Section 9.2 are applicable.

3. Hypotheses.

H0 :b 1 = 0

a = .05

4. Test statistic. The test statistic is V.R. as explained in the discussion that follows. From the three 
sums-of-squares terms and their associated degrees of freedom the analysis of variance table of Table 9.4.1 may 
be constructed. In general, the degrees of freedom associated with the sum of squares due to regression is 
equal to the number of constants in the regression equation minus 1. In the simple linear case we have two 
estimates, b 0 and b1 ; hence the degrees of freedom for regression are 2 - 1 = 1.

5. Distribution of test statistic. It can be shown that when the hypothesis of no linear relationship between X 
and Y is true, and when the assumptions underlying regression are met, the ratio obtained by dividing the 
regression mean square by the residual mean square is distributed as F with 1 and n - 2 degrees of freedom.

6. Decision rule. Reject H 0 if the computed value of V.R. is equal to or greater than the critical value of F.

7. Calculation of test statistic. As shown in Figure 9.3.2, the computed value of F is 217.28.

8. Statistical decision. Since 217.28 is greater than 3.94, the critical value of F (obtained by interpolation) 
for 1 and 107 degrees of freedom, the null hypothesis is rejected.

9. Conclusion. We conclude that the linear model provides a good ﬁt to the data.

10. p value. For this test, since 217.28 7 8.25, we have p 6 .005. !

Estimating the Population Coefﬁcient of Determination

The sample coefﬁcient of determination provides a point estimate of r 2 the population coefﬁcient of 
determination. The population coefﬁcient of determination, r 2 has the same function relative to the 
population as r 2 has to the sample. It shows what proportion of the total population variation in Y is 
explained by the regression of Y on X. When the number of degrees of freedom is small, r 2 is positively 
biased. That is, r 2 tends to be

large. An unbiased estimator of r 2 is provided by N g1y - y i 22 2 >1n - 22 ~2 r = 1 g1y i i - y2 >1n - 12

(9.4.3)

Observe that the numerator of the fraction in Equation 9.4.3 is the unexplained mean square and the denominator 
is the total mean square. These quantities appear in the analysis of variance table. For our illustrative 
example we have, using the data from Figure 9.3.2,

116982>107 ~2 r = 1 = .66695 354531>108

This quantity is labeled R-sq(adj) in Figure 9.3.2 and is reported as 66.7 percent. We see that this value is 
less than

116982 r 2 = 1 = .67004 354531

~2 We see that the difference in r 2 and r is due to the factor 1n - 12>1n - 22. When n is ~2 large, this 
factor will approach 1 and the difference between r 2 and r will approach zero.

Testing H 0 : B 1 " 0 with the t Statistic N N

When the assumptions stated in Section 9.2 are met, b 0 and b 1 are unbiased point estimators of the 
corresponding parameters b 0 and b1 . Since, under these assumptions, the subpopulations of Y values are 
normally distributed, we may construct conﬁdence intervals for and test hypotheses about b 0 and b1 . When the 
assumptions of Section 9.2 hold true, the sampling distriN N butions of b 0 and b 1 are each normally 
distributed with means and variances as follows:

m b 0 N = b0  sy>x 2 gxi 2  s b 0 2 N = ng1x i - x22 

(9.4.4)

(9.4.5)

m b 1 N = b1 

(9.4.6)

and

s 2 y>x s b 1 2 N = g1x i - x22 

(9.4.7)

In Equations 9.4.5 and 9.4.7 s y>x 2 is the unexplained variance of the subpopulations of Y values. N N

With knowledge of the sampling distributions of b 0 and b 1 we may construct confidence intervals and test 
hypotheses relative to b 0 and b 1 in the usual manner. Inferences regarding a are usually not of interest. On 
the other hand, as we have seen, N a great deal of interest centers on inferential procedures with respect to 
b1 . The reason for this is the fact that b 1 tells us so much about the form of the relationship N between X 
and Y. When X and Y are linearly related a positive b 1 indicates that, in general, Y increases as X increases, 
and we say that there is a direct linear relationship N between X and Y. A negative b 1 indicates that values 
of Y tend to decrease as values of X increase, and we say that there is an inverse linear relationship between 
X and

Y. When there is no linear relationship between X and Y, b 1 is equal to zero. These three situations are 
illustrated in Figure 9.4.6.

The Test Statistic

is known is

For testing hypotheses about b 1 the test statistic when sy>x 2 

z =

N1  b

- b N 1b 1 2 0

(9.4.8)

s where 1 1b 1 2 0 is the hypothesized value of b 1 . The hypothesized value of b 1 does not have to be zero, 
but in practice, more often than not, the null hypothesis of interest is that b = 0.

1

As a rule s y|x 2 is unknown. When this is the case, the test statistic is

t =

N1  b

- 1b 1 2 0

N1  s b

(9.4.9)

where s b 1 N is an estimate of s b 1 N and t is distributed as Student’s t with n - 2 degrees of freedom.

If the probability of observing a value as extreme as the value of the test statistic computed by Equation 
9.4.9 when the null hypothesis is true is less than a>2 (since we have a two-sided test), the null hypothesis 
is rejected.

EXAMPLE 9.4.2

Refer to Example 9.3.1. We wish to know if we can conclude that the slope of the population regression line 
describing the relationship between X and Y is zero.

Solution:

1. Data. See Example 9.3.1.

2. Assumptions. We presume that the simple linear regression model and its underlying assumptions are 
applicable.

3. Hypotheses.

H0 :b 1 = 0

HA :b 1 Z 0

a = .05

4. Test statistic. The test statistic is given by Equation 9.4.9.

5. Distribution of test statistic. When the assumptions are met and H 0 is true, the test statistic is 
distributed as Student’s t with n - 2 degrees of freedom.

6. Decision rule. Reject H 0 if the computed value of t is either greater than or equal to 1.9826 or less than 
or equal to -1.9826.

7. Calculation of statistic. The output in Figure 9.3.2 shows that

N b 1 = 3.4589, s b 1 N = .2347, and

3.4589 - 0 t = = 14.74 .2347

8. Statistical decision. Reject H 0 because 14.74 7 1.9826.

9. Conclusion. We conclude that the slope of the true regression line is not zero.

10. p value. The p value for this test is less than .01, since, when H 0 is true, the probability of getting a 
value of t as large as or larger than 2.6230 (obtained by interpolation) is .005, and the probability of 
getting a value of t as small as or smaller than -2.6230 is also .005. Since 14.74 is greater than 2.6230, the 
probability of observing a value of t as large as or larger than 14.74 (when the null hypothesis is true) is 
less than .005. We double this value to obtain 21.0052 = .01. Either the F statistic or the t statistic may be 
used for testing H 0 : b 1 = 0. The value of the variance ratio is equal to the square of the value of the t 
statistic 1i.e., t 2 = F2 and, therefore, both statistics lead to 2 the same conclusion. For the current 
example, we see that 114.742 = 217.27, the value obtained by using the F statistic in Example 9.4.1. The 
practical implication of our results is that we can expect to get better predictions and estimates of Y if we 
use the sample regression equation than we would get if we ignore the relationship between X and Y. The fact 
that b is positive leads us to believe that b 1 is positive and that the relationship between X and Y is a 
direct linear relationship. !

As has already been pointed out, Equation 9.4.9 may be used to test the null hypothesis that b 1 is equal to 
some value other than 0. The hypothesized value for b1 , 1b 1 2 0 is substituted into Equation 9.4.9. All other 
quantities, as well as the computations, are the same as in the illustrative example. The degrees of freedom 
and the method of determining signiﬁcance are also the same.

A Conﬁdence Interval for B1 

Once we determine that it is unlikely, in light of sample evidence, that b 1 is zero, we may be interested in 
obtaining an interval estimate of b 1 . The general formula for a conﬁdence interval,

estimator ; 1reliability factor21standard error of the estimate2

N1  may be used. When obtaining a conﬁdence interval for b1 , the estimator is b , the reliability factor is 
some value of z or t (depending on whether or not s y ƒ x 2 is known), and the standard error of the estimator 
is

N s b 1 =

C

s 2 ƒx y

g1x i - x2 2

C

When s y 2 ƒ x is unknown, s b is estimated by

N s b 1 =

2 s y ƒx g1x i - x2 2

2 where s y ƒx = MSE In most practical situations our 10011 - a2 percent conﬁdence interval for b is N1  b ; 
t11-a>22 s b N 1 (9.4.10)

For our illustrative example we construct the following 95 percent confidence interval for b :

3.4589 ; 1.98261.23472

2.99, 3.92

We interpret this interval in the usual manner. From the probabilistic point of view we say that in repeated 
sampling 95 percent of the intervals constructed in this way will include b1 . The practical interpretation is 
that we are 95 percent conﬁdent that the single interval constructed includes b1 .

Using the Conﬁdence Interval to Test H0 : B 1 " 0

It is instructive to note that the conﬁdence interval we constructed does not include zero, so that zero is 
not a candidate for the parameter being estimated. We feel, then, that it is unlikely that b 1 = 0. This is 
compatible with the results of our hypothesis test in which we rejected the null hypothesis that b 1 = 0. 
Actually, we can always test H0 : b 1 = 0 at the a signiﬁcance level by constructing the 10011 - a2 percent 
conﬁdence interval for b1 , and we can reject or fail to reject the hypothesis on the basis of whether or not 
the interval includes zero. If the interval contains zero, the null hypothesis is not rejected; and if zero is 
not contained in the interval, we reject the null hypothesis.

Interpreting the Results

It must be emphasized that failure to reject the null hypothesis that b 1 = 0 does not mean that X and Y are 
not related. Not only is it possible that a type II error may have been committed but it may be true that X and 
Y are related in some nonlinear manner. On the other hand, when we reject the null hypothesis that b 1 = 0, we 
cannot conclude that the true relationship between X and Y is

linear. Again, it may be that although the data ﬁt the linear regression model fairly well (as evidenced by 
the fact that the null hypothesis that b 1 = 0 is rejected), some nonlinear model would provide an even better 
fit. Consequently, when we reject H 0 that b 1 = 0, the best we can say is that more useful results (discussed 
below) may be obtained by taking into account the regression of Y on X than in ignoring it.

The values of the set of residuN als, 1y i - y i 2, for a data set are often used to test the linearity and 
equal-variances assumptions (assumptions 4 and 5 of Section 9.2) underlying the regression model. This is done 
by plotting the values of the residuals on the y-axis and the predicted values of y on the x-axis. If these 
plots show a relatively random scatter of points above and below N a horizontal line at 1y i - y i 2 = 0, these 
assumptions are assumed to have been met for a given set of data. A non-random pattern of points can indicate 
violation of the linearity assumption, and a funnel-shaped pattern of the points can indicate violation of the 
equal-variances assumption. Examples of these patterns are shown in Figure 9.4.7. Many

computer packages will provide residual plots automatically. These plots often use standardized values 1i.e., 
ei >1MSE2 of the residuals and predicted values, but are interpreted in the same way as are plots of 
unstandardized values.

EXAMPLE 9.4.3

Refer to Example 9.3.1. We wish to use residual plots to test the assumptions of linearity and equal variances 
in the data.

Solution:

A residual plot is shown in Figure 9.4.8.

Since there is a relatively equal and random scatter of points above N and below the residual 1y i - y i 2 = 0 
line, the linearity assumption is presumed to be valid. However, the funneling tendency of the plot suggests 
that as the predicted value of deep abdominal AT area increases, so does the amount of error. This indicates 
that the assumption of equal variances may not be valid for these data.

9.5 USING THE REGRESSION EQUATION

If the results of the evaluation of the sample regression equation indicate that there is a relationship 
between the two variables of interest, we can put the regression equation to practical use. There are two ways 
in which the equation can be used. It can be used to predict what value Y is likely to assume given a 
particular value of X. When the normality assumption of Section 9.2 is met, a prediction interval for this 
predicted value of Y may be constructed.

We may also use the regression equation to estimate the mean of the subpopulation of Y values assumed to exist 
at any particular value of X. Again, if the assumption of normally distributed populations holds, a confidence 
interval for this parameter may be constructed. The predicted value of Y and the point estimate of the mean of 
the subpopulation of Y will be numerically equivalent for any particular value of X but, as we will see, the 
prediction interval will be wider than the confidence interval.

Predicting Y for a Given X

If it is known, or if we are willing to assume that the assumptions of Section 9.2 are met, and when s y 2 ƒ x 
is unknown, then the 10011 - a2 percent prediction interval for Y is given by

N y ;t11-a>22 sy ƒ x 

1 + + C n

1

1x p - x2 2

g1x i - x2 2

(9.5.1)

where x p is the particular value of x at which we wish to obtain a prediction interval for Y and the degrees 
of freedom used in selecting t are n - 2.

Estimating the Mean of Y for a Given X

The 10011 - a2 percent conﬁdence interval for m y ƒ x when s y 2 ƒ x is unknown, is given by

,

N y ; t11-a>22 s y ƒ x

+ C n

1

1x p - x2 2

g1x i - x2 2

(9.5.2)

We use MINITAB to illustrate, for a speciﬁed value of X, the calculation of a 95 percent conﬁdence interval 
for the mean of Y and a 95 percent prediction interval for an individual Y measurement.

Suppose, for our present example, we wish to make predictions and estimates about AT for a waist circumference 
of 100 cm. In the regression dialog box click on “Options.” Enter 100 in the “Prediction interval for new 
observations” box. Click on “Conﬁdence limits,” and click on “Prediction limits.”

We obtain the following output:

Fit 129.90

Stdev.Fit 3.69

95.0% C.I. (122.58, 137.23)

95.0% P.I. (63.93, 195.87)

We interpret the 95 percent conﬁdence interval (C.I.) as follows.

If we repeatedly drew samples from our population of men, performed a regression analysis, and estimated m y ƒ 
x =100 with a similarly constructed conﬁdence interval, about 95 percent of such intervals would include the 
mean amount of deep abdominal AT for the population. For this reason we are 95 percent conﬁdent that the 
single interval constructed contains the population mean and that it is somewhere between 122.58 and 137.23.

Our interpretation of a prediction interval (P.I.) is similar to the interpretation of a conﬁdence interval. 
If we repeatedly draw samples, do a regression analysis, and construct prediction intervals for men who have a 
waist circumference of 100 cm, about 95 percent of them will include the man’s deep abdominal AT value. This is 
the probabilistic interpretation. The practical interpretation is that we are 95 percent conﬁdent that a man 
who has a waist circumference of 100 cm will have a deep abdominal AT area of somewhere between 63.93 and 
195.87 square centimeters.

Simultaneous conﬁdence intervals and prediction intervals can be calculated for all possible points along a 
ﬁtted regression line. Plotting lines through these points will then provide a graphical representation of 
these intervals. Since the mean data point 1X, Y2 is always included in the regression equation, as illustrated 
by equations 9.3.2 and 9.3.3, plots of the simultaneous intervals will always provide the best estimates at the 
middle of the line and the error will increase toward the ends of the line. This illustrates the fact that 
estimation within the bounds of the data set, called interpolation, is acceptable, but that estimation outside 
of the bounds of the data set, called extrapolation, is not advisable since the pridiction error can be quite 
large. See Figure 9.5.1.

Figure 9.5.2 contains a partial printout of the SAS ® simple linear regression analysis of the data of Example 
9.3.1.

Resistant Line

Frequently, data sets available for analysis by linear regression techniques contain one or more “unusual” 
observations; that is, values of x or y, or both, may be either considerably larger or considerably smaller 
than most of the other measurements. In the output of Figure 9.3.2, we see that the computer detected seven

unusual observations in the waist circumference and deep abdominal AT data shown in Table 9.3.1.

The least-squares method of ﬁtting a straight line to data is sensitive to unusual observations, and the 
location of the ﬁtted line can be affected substantially by them. Because of this characteristic of the 
least-squares method, the resulting least-squares line is said to lack resistance to the inﬂuence of unusual 
observations. Several methods have been devised for dealing with this problem, including one developed by John 
W. Tukey. The resulting line is variously referred to as Tukey’s line and the resistant line.

Based on medians, which, as we have seen, are descriptive measures that are themselves resistant to extreme 
values, the resistant line methodology is an exploratory data analysis tool that enables the researcher to 
quickly fit a straight line to a set of data consisting of paired x, y measurements. The technique involves 
partitioning, on the basis of the independent variable, the sample measurements into three groups of as near 
equal size as possible: the smallest measurements, the largest measurements, and those in between. The 
resistant line is the line fitted in such a way that there are

an equal number of values above and below it in both the smaller group and the larger group. The resulting 
slope and y-intercept estimates are resistant to the effects of either extreme y values, extreme x values, or 
both. To illustrate the fitting of a resistant line, we use the data of Table 9.3.1 and MINITAB. The procedure 
and output are shown in Figure 9.5.3.

We see from the output in Figure 9.5.3 that the resistant line has a slope of 3.2869 and a y-intercept of 
-203.7868. The half-slope ratio, shown in the output as equal to .690, is an indicator of the degree of 
linearity between x and y. A slope, called a half-slope, is computed for each half of the sample data. The 
ratio of the right half-slope, bR , and the left half-slope, b L , is equal to b R >b L . If the relationship 
between x and y is straight, the half-slopes will be equal, and their ratio will be 1. A half-slope ratio that 
is not close to 1 indicates a lack of linearity between x and y.

The resistant line methodology is discussed in more detail by Hartwig and Dearing (1), Johnstone and Velleman 
(2), McNeil (3), and Velleman and Hoaglin (4).

9.6 THE CORRELATION MODEL


