c09 - SIMPLE LINEAR REGRESSION AND CORRELATION
==============================================

9.2 THE REGRESSION MODEL

**Assumptions Underlying Simple Linear Regression**

1. Values of the independent variable X are said to be “fixed.” This means that the
values of X are preselected by the investigator so that in the collection of the data
they are not allowed to vary from these preselected values. In this model, X is
referred to by some writers as a nonrandom variable and by others as a mathematical
variable. It should be pointed out at this time that the statement of this assumption
classifies our model as the classical regression model. Regression analysis also
can be carried out on data in which X is a random variable.

2. The variable X is measured without error. Since no measuring procedure is perfect,
this means that the magnitude of the measurement error in X is negligible.

3. For each value of X there is a subpopulation of Y values. For the usual inferential
procedures of estimation and hypothesis testing to be valid, these subpopulations
must be normally distributed. In order that these procedures may be presented it
will be assumed that the Y values are normally distributed in the examples and
exercises that follow.

4. The variances of the subpopulations of Y are all equal and denoted by .

5. The means of the subpopulations of Y all lie on the same straight line. This is known
as the assumption of linearity. This assumption may be expressed symbolically as
(9.2.1)
where is the mean of the subpopulation of Y values for a particular value of
X, and and are called the population regression coefficients. Geometrically,
and represent the y-intercept and slope, respectively, of the line on which
all of the means are assumed to lie.

These assumptions may be summarized by means of the following equation, which
is called the regression model:
(9.2.2)
where y is a typical value from one of the subpopulations of Y, and are as defined
for Equation 9.2.1, and is called the error term. If we solve 9.2.2 for , we have
(9.2.3)
and we see that shows the amount by which y deviates from the mean of the subpopulation
of Y values from which it is drawn. As a consequence of the assumption that the
subpopulations of Y values are normally distributed with equal variances, the ’s for each
subpopulation are normally distributed with a variance equal to the common variance of
the subpopulations of Y values.

9.3 THE SAMPLE REGRESSION EQUATION

Obtaining the Least-Square Line
The least-squares regression line equation may be obtained from sample data by simple
arithmetic calculations that may be carried out by hand using the following equations

.. math::

   \hat{\beta}_1 = \frac{\sum_{i=1}^n (x_i - \bar{x})(y_i - \bar{y})}{\sum_{i=1}^n (x_i - \bar{x})^2}

   \hat{\beta}_0 = \bar{y} - \hat{\beta}_1 \bar{x}

**9.4 EVALUATING THE REGRESSION EQUATION**

* When :math:`H_0: \beta_1 = 0` Is Not Rejected

* When :math:`H_0: \beta_1 = 0` Is Rejected

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
