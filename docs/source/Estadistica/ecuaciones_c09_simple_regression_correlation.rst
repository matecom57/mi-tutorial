c09 - SIMPLE LINEAR REGRESSION AND CORRELATION
==============================================

**9.2 THE REGRESSION MODEL**

**Assumptions Underlying Simple Linear Regression**

**Supuestos subyacentes a la regresión lineal simple**

1. Values of the independent variable X are said to be “fixed.” This means that the
values of X are preselected by the investigator so that in the collection of the data
they are not allowed to vary from these preselected values. In this model, X is
referred to by some writers as a nonrandom variable and by others as a mathematical
variable. It should be pointed out at this time that the statement of this assumption
classifies our model as the classical regression model. Regression analysis also
can be carried out on data in which X is a random variable.

1. Se dice que los valores de la variable independiente X son fijos. Esto significa que el investigador preselecciona los valores de X para que, al 
recopilar los datos, no puedan variar. En este modelo, algunos autores se refieren a X como una variable no aleatoria y otros como una variable 
matemática. Cabe señalar que este supuesto clasifica nuestro modelo como un modelo de regresión clásico. El análisis de regresión también puede 
realizarse con datos donde X es una variable aleatoria.


2. The variable X is measured without error. Since no measuring procedure is perfect,
this means that the magnitude of the measurement error in X is negligible.

2. La variable X se mide sin error. Dado que ningún procedimiento de medición es perfecto, la magnitud del error de medición en X es insignificante.

3. For each value of X there is a subpopulation of Y values. For the usual inferential
procedures of estimation and hypothesis testing to be valid, these subpopulations
must be normally distributed. In order that these procedures may be presented it
will be assumed that the Y values are normally distributed in the examples and
exercises that follow.

3. Para cada valor de X existe una subpoblación de valores de Y. Para que los procedimientos inferenciales habituales de estimación y prueba de 
hipótesis sean válidos, estas subpoblaciones deben tener una distribución normal. Para que estos procedimientos puedan presentarse, se asumirá que los 
valores de Y tienen una distribución normal en los ejemplos y ejercicios siguientes.

4. The variances of the subpopulations of Y are all equal and denoted by :math:`\sigma^2`.

Las varianzas de las subpoblaciones de Y son todas iguales y se denotan por :math:`\sigma^2`.

5. The means of the subpopulations of Y all lie on the same straight line. This is known
as the assumption of linearity. This assumption may be expressed symbolically as

5. Las medias de las subpoblaciones de Y se encuentran todas en la misma línea recta. Esto se conoce como el supuesto de linealidad. Este supuesto puede 
expresarse simbólicamente como

.. math::

   \mu_{y|x} = \beta_0 + \beta_1 x


(9.2.1)

where :math:`\mu_{y|x}` is the mean of the subpopulation of Y values for a particular value of
X, and :math:`\beta_0` and :math:`\beta_1` are called the population regression coefficients. Geometrically, :math:`\beta_0`
and :math:`\beta_1` represent the y-intercept and slope, respectively, of the line on which
all of the means are assumed to lie.

6. The Y values are statistically independent. In other words, in drawing the sample, it is assumed that the values of Y chosen at one value of X in no 
way depend on the values of Y chosen at another value of X.

6. Los valores de Y son estadísticamente independientes. En otras palabras, al extraer la muestra, se supone que los valores de Y elegidos en un valor 
de X no dependen en absoluto de los valores de Y elegidos en otro valor de X.


These assumptions may be summarized by means of the following equation, which
is called the regression model:

Estos supuestos pueden resumirse mediante la siguiente ecuación, denominada modelo de regresión:

.. math::

   y = \beta_0 + \beta_1 x + \varepsilon

(9.2.2)

where y is a typical value from one of the subpopulations of Y, :math:`\beta_0` and :math:`\beta_1` are as defined
for Equation 9.2.1, and is called the error term. If we solve 9.2.2 for :math:`\varepsilon`, we have

.. math::

   \varepsilon = y - (\beta_0 + \beta_1 x) 

   = y - \mu_{y|x}

(9.2.3)

and we see that shows the amount by which y deviates from the mean of the subpopulation
of Y values from which it is drawn. As a consequence of the assumption that the
subpopulations of Y values are normally distributed with equal variances, the :math:`\varepsilon`’s for each
subpopulation are normally distributed with a variance equal to the common variance of
the subpopulations of Y values.

Y vemos que muestra la desviación de y respecto a la media de la subpoblación de valores Y de la que se extrajo. Como consecuencia del supuesto de que 
las subpoblaciones de valores Y se distribuyen normalmente con varianzas iguales, los valores de cada subpoblación se distribuyen normalmente con una 
varianza igual a la varianza común de las subpoblaciones de valores Y.


**9.3 THE SAMPLE REGRESSION EQUATION**

LA ECUACIÓN DE REGRESIÓN MUESTRAL

**Obtaining the Least-Square Line**

Obtención de la recta de mínimos cuadrados

The least-squares regression line equation may be obtained from sample data by simple
arithmetic calculations that may be carried out by hand using the following equations

La ecuación de la línea de regresión de mínimos cuadrados se puede obtener a partir de datos de muestra mediante cálculos aritméticos simples que pueden 
realizarse manualmente utilizando las siguientes ecuaciones

.. math::

   \hat{\beta}_1 = \frac{\sum_{i=1}^n (x_i - \bar{x})(y_i - \bar{y})}{\sum_{i=1}^n (x_i - \bar{x})^2}

   \hat{\beta}_0 = \bar{y} - \hat{\beta}_1 \bar{x}

**9.4 EVALUATING THE REGRESSION EQUATION**

EVALUACIÓN DE LA ECUACIÓN DE REGRESIÓN

* When :math:`H_0: \beta_1 = 0` Is Not Rejected

If in the population the relationship between X and Y is linear, :math:`\beta_1`, the slope of the line that describes this relationship, will be 
either positive, 
negative, or zero. If :math:`\beta_1` is zero, sample data drawn from the population will, in the long run, yield regression equations that are of 
little or no 
value for prediction and estimation purposes. Furthermore, even though we assume that the relationship between X and Y is linear, it may be that the 
relationship could be described better by some nonlinear model. When this is the case, sample data when fitted to a linear model will tend to yield 
results compatible with a population slope of zero. 

Thus, following a test in which the null hypothesis that b 1 equals zero is not rejected, we may 
conclude (assuming that we have not made a type II error by accepting a false null hypothesis) either (1) that although the relationship between X and Y 
may be linear it is not strong enough for X to be of much value in predicting and estimating Y, or (2) that the relationship between X and Y is not 
linear; that is, some curvilinear model provides a better fit to the data. Figure 9.4.1 shows the kinds of relationships between X and Y in a population 
that may prevent rejection of the null hypothesis that :math:`\beta_1 = 0`.

* When :math:`H_0: \beta_1 = 0` Is Rejected

Now let us consider the situations in a population that may lead to rejection of the null hypothesis that :math:`\beta_1 = 0`. Assuming that we do not 
commit a type 
I error, rejection of the null hypothesis that :math:`\beta_1 = 0`  may be attributed to one of the following conditions in the population: (1) 
the relationship is 
linear and of sufficient strength to justify the use of sample regression equations to predict and estimate Y for given values of X; and (2) there is a 
good fit of the data to a linear model, but some curvilinear model might provide an even better fit. Figure 9.4.2 illustrates the two population 
conditions that may lead to rejection of :math:`H_0 : \beta_1 = 0`.

Thus, we see that before using a sample regression equation to predict and estimate, it is desirable to test H 0 : b 1 = 0. We may do this either by 
using analysis of variance and the F statistic or by using the t statistic. We will illustrate both methods. Before we do this, however, let us see how 
we may investigate the strength of the relationship between X and Y.


**The Coefficient of Determination**

The Total Deviation

The Explained Deviation

Unexplained Deviation

.. math::

   (y_i - \bar{y}) = (\hat{y}_i - \bar{y}) + (y_i - \hat{y}_i)

Entonces

.. math::

   \sum (y_i - \bar{y})^2 = \sum (\hat{y}_i - \bar{y})^2 + \sum (y_i - \hat{y}_i)^2

Total Sum of Squares

Explained Sum of Squares

Unexplained Sum of Squares

.. math::

   SST = SSR * SSE

Calculando :math:`r^2`

.. math::

   r^2 = \frac{\sum (\hat{y}_i - \bar{y})^2}{\sum (y_i - \bar{y})^2} = \frac{SSR}{SST}


**Estimating the Population Coefficient of Determination**

.. math::

   \widetilde{r}^2 = 1-  \frac{\sum (\hat{y}_i - \bar{y})^2/(n-2)}{\sum (y_i - \bar{y})^2/(n-1)} = \frac{SSR}{SST}


Testing :math:`H_0: \beta_1 = 0` with the t Statistic

.. math::

   \mu_{\hat{\beta}_0} = \beta_0

   \sigma_{\hat{\beta}_0}^2 = \frac{\sigma_{y|x}^2 \sum x_i^2}{n \sum (x_i - \bar{x})^2}

   \mu_{\hat{\beta}_1} = \beta_1

y

.. math::

   \sigma_{\hat{\beta}_1}^2 = \frac{\sigma_{y|x}^2}{ \sum (x_i - \bar{x})^2}


**The Test Statistic**

For testing hypotheses about the test statistic when
is known is
(9.4.8)
where is the hypothesized value of . The hypothesized value of does not
have to be zero, but in practice, more often than not, the null hypothesis of interest is
that
As a rule is unknown. When this is the case, the test statistic is
(9.4.9)
where is an estimate of and t is distributed as Student’s t with degrees of
freedom.
If the probability of observing a value as extreme as the value of the test statistic
computed by Equation 9.4.9 when the null hypothesis is true is less than (since we
have a two-sided test), the null hypothesis is rejected.
EXAMPLE 9.4.2
Refer to Example 9.3.1. We wish to know if we can conclude that the slope of the
population regression line describing the relationship between X and Y is zero.
Solution:
1. Data. See Example 9.3.1.
2. Assumptions. We presume that the simple linear regression model and
its underlying assumptions are applicable.
a>2
sb n - 2
N
1 sb
N
1
t =
N
b1 - 1b120
sb1
N
s2
y|x
b1 = 0.
1b120 b1 b1
z =
N
b1 - 1b120
