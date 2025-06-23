Numerical_Analysis_Ord_Delay_Diff_Equ_c01
=========================================

Preface
-------

The aim of the book is to provide a concise textbook for students on an advanced undergraduateor aﬁrst-year 
graduatecoursefromvarious disciplines, suchas applied 
mathematics,controlandengineering,whowanttolearnamodernstandardofnumerical methods of ordinary and delay 
differential equations. Their stability analysis is also explained. Experts in applied mathematics, control and 
engineering ﬁelds can also learn the recent developments in numerical analysis of such differential systems. Major 
algorithms of numerical solution are clearly described.

El objetivo de este libro es proporcionar un libro de texto conciso para estudiantes de grado avanzado o de primer 
año de posgrado en diversas disciplinas, como matemáticas aplicadas, control e ingeniería, que deseen aprender un 
estándar moderno de métodos numéricos para ecuaciones diferenciales ordinarias y de retardo. También se explica su 
análisis de estabilidad. Los expertos en matemáticas aplicadas, control e ingeniería también pueden aprender los 
avances recientes en el análisis numérico de dichos sistemas diferenciales. Se describen con claridad los 
principales algoritmos de solución numérica.


Ordinary differential equations (ODEs) have a long history in mathematics and provide a valuable resource for its 
development. At the same time, they provide a strong mathematical tool to express phenomena of a wide variety in 
science and engineering. Therefore, graduate students, scientists and engineers are required to have knowledge and 
experience of ODEs. The idea of mathematical formulation to give a functional relationship of an unknown function 
and its derivative can be extended furthermore. One powerful way to extend ODEs is to treat equations of functions 
of several 
independent variables, called partial differential equations (PDEs). Another way is to incorporate unknown functions 
with delayed argument, called delay differential equations (DDEs). Mathematical analysis has developed to elucidate 
properties of differential equations, e.g. existence of solutions of the equations. Hence, in some cases we can 
obtain a solution of a differential equation by algebraic combinations of known mathematical functions. In many 
practical cases, however, such a solution method is quite difﬁcult and numerical approximations are called for. 
Modern computers accelerate the situation and, moreover, launch more possibilities of numerical means.

Las ecuaciones diferenciales ordinarias (EDO) tienen una larga historia en matemáticas y constituyen un recurso 
valioso para su desarrollo. A la vez, proporcionan una herramienta matemática sólida para expresar fenómenos de gran 
variedad en ciencia e ingeniería. Por lo tanto, se requiere que estudiantes de posgrado, científicos e ingenieros 
tengan conocimiento y experiencia en EDO. La idea de la formulación matemática para obtener una relación funcional 
entre una función desconocida y su derivada puede extenderse aún más. Una forma eficaz de extender las EDO es tratar 
ecuaciones de funciones con varias variables independientes, llamadas ecuaciones diferenciales parciales (EDP). Otra 
forma es incorporar funciones desconocidas con argumento retardado, llamadas ecuaciones diferenciales retardadas 
(EDD). El análisis matemático se ha desarrollado para dilucidar las propiedades de las ecuaciones diferenciales, por 
ejemplo, la existencia de soluciones. Por lo tanto, en algunos casos podemos obtener una solución de una ecuación 
diferencial mediante combinaciones algebraicas de funciones matemáticas conocidas. Sin embargo, en muchos casos 
prácticos, este método de solución es bastante difícil y se requieren aproximaciones numéricas. Las computadoras 
modernas aceleran el proceso y, además, ofrecen más posibilidades de métodos numéricos.



Henceforth, the knowledge and expertise of numerical solution of differential equations become a requirement in the 
broad area of science and engineering. One might think that a well-organised software package such as MATLAB can 
provide the solution. In a sense it is true, but one must be aware that blind employment of a software package does 
not help the users. An understanding of numerical solution of differential equations is still necessary. The present 
book is intended to give the principles of numerical solution of ordinary differential equations as well as of delay 
differential equations. To obtain a broader perspective of numerical analysis in applied mathematics, a short 
introduction to polynomial interpolation is also given. In particular, we take note 
that there are a few concise textbooks of delay differential equations and have tried to give descriptions that are 
as transparent as possible.

En adelante, el conocimiento y la experiencia en la solución numérica de ecuaciones diferenciales se han convertido 
en un requisito en el amplio campo de la ciencia y la ingeniería. Se podría pensar que un paquete de software bien 
organizado como MATLAB puede proporcionar la solución. En cierto sentido, esto es cierto, pero hay que tener en 
cuenta que el uso indiscriminado de un paquete de software no beneficia a los usuarios. La comprensión de la 
solución numérica de ecuaciones diferenciales sigue siendo necesaria. El presente libro pretende presentar los 
principios de la solución numérica de ecuaciones diferenciales ordinarias, así como de ecuaciones diferenciales de 
retardo. Para obtener una perspectiva más amplia del análisis numérico en matemáticas aplicadas, también se ofrece 
una breve introducción a la interpolación polinómica. En particular, tomamos nota de que existen algunos libros de 
texto concisos sobre ecuaciones diferenciales de retardo y hemos intentado ofrecer descripciones lo más 
transparentes posible.

The prerequisite of the book is knowledge of calculus and linear algebra at college level. Each chapter is followed 
by remarks on further development of the chapter topic and exercises. We hope the readers ﬁnd the topic interesting 
and try to obtain further developments by themselves.

El requisito previo del libro es tener conocimientos de cálculo y álgebra lineal a nivel universitario. Cada 
capítulo incluye comentarios sobre el desarrollo del tema y ejercicios. Esperamos que los lectores encuentren el 
tema interesante y que intenten profundizar en él por sí mismos.


 Nagoya, Japan Shanghai, China

Taketomo Mitsui Guang-Da Hu

**Chapter 1 Introduction**

This chapter brieﬂy introduces the concept of an ordinary differential equation through a few examples of it. You 
will see how an equation is formulated and what its (analytical) solution means. Also the necessity of a numerical 
solution is explained with examples. The delay differential equation, that is, a differential equation 
including a delay term with respect to the independent variable, is given through an example, too.

Este capítulo presenta brevemente el concepto de ecuación diferencial ordinaria mediante algunos ejemplos. Verá cómo 
se formula una ecuación y qué significa su solución (analítica). También se explica con ejemplos la necesidad de una 
solución numérica. La ecuación diferencial de retardo, es decir, una ecuación diferencial que incluye un término de 
retardo con respecto a la variable independiente, también se presenta mediante un ejemplo.

**1.1 Mathematical Modelling by Differential Equations**

When a function x of independent variable t is subject to another functional relation F(t,x,x′) = 0 together 
with its ﬁrst derivativex', , it is said that we are given the differential equation of x. Of course this is a 
very broad and loose deﬁnition of a differential equation and later a more strict deﬁnition will be introduced.  
emphasize, however, that many phenomena can be modelled by a differential equation and its mathematical treatment is 
signiﬁcant in real-life applications. Typical origins can be found in physical phenomena. We will explain it 
brieﬂy.

Cuando una función x de variable independiente t está sujeta a otra relación funcional F(t,x,x′) = 0 junto con su 
primera derivada x’, se dice que se nos da la ecuación diferencial de x. Por supuesto, esta es una definición muy 
amplia y vaga de ecuación diferencial, y más adelante se presentará una definición más estricta. Sin embargo, 
enfatizamos que muchos fenómenos pueden modelarse mediante una ecuación diferencial y su tratamiento matemático es 
significativo en aplicaciones prácticas. Los orígenes típicos se pueden encontrar en fenómenos físicos. Lo 
explicaremos brevemente.

The ﬁrst example is classical mechanics, that is, the simple pendulum which consists of a small weight of mass m 
suspended from a ﬁxed point O by a light (that is, with a negligible mass) rod of length a, and only swings in a 
vertical plane. We take θ(t) as the inclination of the rod to the downward vertical with the time t (see Fig. 1.1).

El primer ejemplo es la mecánica clásica, es decir, el péndulo simple, que consiste en un pequeño peso de masa m 
suspendido de un punto fijo O mediante una varilla ligera (es decir, de masa despreciable) de longitud a, y oscila 
únicamente en un plano vertical. Tomamos θ(t) como la inclinación de la varilla respecto a la vertical descendente 
en el tiempo t (véase la figura 1.1).

Note that the ﬁrst derivative dθ/dt represents its angular velocity, while the second derivative   θ/d 2 is the 
angular acceleration. Newton’s law of motion states acceleration of moving body = external force for the body.

Nótese que la primera derivada dθ/dt representa su velocidad angular, mientras que la segunda derivada θ/d² es la 
aceleración angular. La ley del movimiento de Newton establece que la aceleración de un cuerpo en movimiento es 
igual a la fuerza externa que actúa sobre él.

Hence, when no friction exists, the law gives

Por lo tanto, cuando no existe fricción, la ley da

d2 θ ma 2 = −mga sin θ, dt2 

where g stands for the gravitational constant. Introduction of ϕ(t) in place of dθ/dt leads to

donde g representa la constante gravitacional. La introducción de ϕ(t) en lugar de dθ/dt conduce a

dϕ g dθ sin θ = 0, ϕ = 0, + dt a dt

(1.1)

which is a two-dimensional system of ordinary differential equations for (θ(t), ϕ(t)). From the physical point of 
view, it is interesting to observe that the equation does not depend on the mass m. We impose the condition that at 
the start (t = 0) (θ(0), ϕ(0)) is equal to (θ 0 , 0) and will analyse the pendulum motion after the start when it is 
put at the angle θ 0 and gently released. This is called the initial-value problem of (1.1).



que es un sistema bidimensional de ecuaciones diferenciales ordinarias para (θ(t), ϕ(t)). Desde un punto de vista 
físico, es interesante observar que la ecuación no depende de la masa m. Imponemos la condición de que al inicio (t 
= 0) (θ(0), ϕ(0)) sea igual a (θ 0 , 0) y analizaremos el movimiento del péndulo después del inicio, cuando se 
coloca en el ángulo θ 0 y se suelta suavemente. Esto se denomina problema de valor inicial de (1.1).
 
The second example is the closed LC R circuit in electronics. Suppose that the capacitor with the capacitance 
C, inductor with the inductance L and resistor with the resistance R are connected in series (see Fig. 1.2).

El segundo ejemplo es el circuito LC-R cerrado en electrónica. Supongamos que el condensador con capacidad C, el 
inductor con inductancia L y el resistor con resistencia R están conectados en serie (véase la figura 1.2).

By the Kirchhoff law the electronic current i in the circuit satisﬁes

di 1 L Ri i dt = 0. + + dt C ∫

When we introduce x = i, R/L = 2α and 1/(LC) = ω 2 (ω > 0), it reduces to

3

R

L

C

i

d2 x dx + 2α x = 0, ω2  + d t 2 dt

(1.2)

which can be written in the system form as

dx dy y = 0, 2αy ω2  x = 0. + + dt dt

(1.2 ′ )

Like these, physical laws often have differential equations as their mathematical expression and a similar approach 
is employed in other disciplines of science and engineering to model phenomena by differential equations. 
Mathematical problems for differential equation are

Al igual que estas, las leyes físicas a menudo tienen ecuaciones diferenciales como su expresión matemática, y se 
emplea un enfoque similar en otras disciplinas de la ciencia y la ingeniería para modelar fenómenos mediante 
ecuaciones diferenciales. Los problemas matemáticos para ecuaciones diferenciales son

• how we can solve it,

• what is the condition which guarantees existence of its solution,

• what is the condition for deriving a unique solution,

• what is the behaviour of the solution when the independent variable t is becoming large

and so on. Each item requires theoretical analysis, but the present volume will be focused on numerical solutions of 
differential equations. Readers interested in mathematical theory together with mathematical modelling by 
differential equations can consult [?].

Y así sucesivamente. Cada tema requiere un análisis teórico, pero este volumen se centrará en las soluciones 
numéricas de ecuaciones diferenciales. Los lectores interesados ​​en la teoría matemática y la modelización matemática 
mediante ecuaciones diferenciales pueden consultar [?].

**1.2 Analytical Versus Numerical Solutions**

Prior to detailed descriptions of numerical solutions, we will present background material about the solution of 
differential equations.

Antes de descripciones detalladas de soluciones numéricas, presentaremos material de fondo sobre la solución de 
ecuaciones diferenciales.

**Elementary Solutions**

When the angle θ in (1.1) is small in magnitude, we can assume its approximation is given by

dy g dx x = 0, y = 0, + dt a dt

which leads to

d2 x g x = 0 + dt 2 a

(1.3)

dx 

with the initial condition x(0) = θ 0 and It is easy to (0) = 0. What is its solution? It is easy to
check that sin(ωt) and cos(ωt) satisﬁes (1.3) with ω = √ (g/a). The initial condition restricts, however, the 
solution to x(t) = θ 0 cos(ωt). How about in the case (1.2) (but we restrict ourselves for ω > α)? Due to the 
similarity between (1.3) and (1.2), we may be inspired to think of a solution in the form of x(t) = e −αt cos(t) 
and to try to substitute it into the equation. A manipulation shows that if  = √ ω 2 − α 2 , it is a solution. A 
natural question occurs: Are there any other solutions? The following theorem gives the answer.

con la condición inicial x(0) = θ 0 y Es fácil (0) = 0. ¿Cuál es su solución? Es fácil comprobar que sen(ωt) y 
cos(ωt) satisfacen (1.3) con ω = √ (g/a). Sin embargo, la condición inicial restringe la solución a x(t) = θ 0 
cos(ωt). ¿Qué pasa en el caso (1.2) (pero nos restringimos para ω > α)? Debido a la similitud entre (1.3) y (1.2), 
podemos inspirarnos para pensar en una solución en la forma de x(t) = e −αt cos(t) e intentar sustituirla en la 
ecuación. Una manipulación muestra que si = √ ω 2 − α 2 , es una solución. Surge una pregunta natural: ¿Hay otras 
soluciones? El siguiente teorema da la respuesta.

First, we introduce:

Deﬁnition 1.1 Let R d denote the d-dimensional Euclidean space. When we are given the unknown function      , 
tF ] ↦ −  Rd , the known function f:[t0 , tF] × R d − ↦ → R d and the known constant ξ ∈ R d , and 
they satisfy

Sea R d el espacio euclidiano de dimensión d. Cuando se nos da la función desconocida x : [ t 0 , t F ] ↦ − → R d 
, la función conocida f : [ t 0 , t F ] × R d − ↦ → R d y la constante conocida ξ ∈ R d , y satisfacen

dx = f (t, x) (t0  < t < t F ), dt

(1.4)

x(t 0 ) = ξ,

this is called the initial-value problem of the differential equation with respect to x.

Theorem 1.1 Suppose that the initial-value problem (1.4) is given. We equip Rd  with a certain norm ∥ · ∥ . Let 
the function f be continuous on the domain D = { (t, x) ; | t − t 0 | ≤ ρ, ∥ x − ξ ∥ ≤ R } and satisfy ∥ f 
(t, x) ∥ ≤ M. We also assume the following condition (C).

Supongamos que se da el problema de valor inicial (1.4). Dotamos a Rd de una norma ∥ · ∥ . Sea la función f 
continua en el dominio D = { (t, x) ; | t − t 0 | ≤ ρ, ∥ x − ξ ∥ ≤ R } y satisface ∥ f (t, x) ∥ ≤ M. 
También asumimos la siguiente condición (C).


(C) The function f (t, x) satisﬁes the Lipschitz condition with respect to x. That is, there exists a non-negative 
constant L fulﬁlling the inequality

∥ f (t, x) − f (t, y) ∥ ≤ L ∥ x − y ∥

(1.5)

on the domain D.

Then the problem (1.4) has a unique solution on the interval t0 

ρ, t 0 + R/M).

≤

t ≤ min(t 0 +

Remark 1.1 We did not give a deﬁnition of the norm of R d above. Indeed it can be equipped with different kind of 
norm, whose mathematically rigorous deﬁnition can be seen in a standard textbook of linear algebra. However, we 
stress that every norm of R d is topologically equivalent (see Exercise 1.7) and often employ the so-called 2-norm 
given by ∥ x ∥ 2 =x1 2  √+ x 2 2 + · · · + x d 2 for x = (x 1 , x 2 , . . . , x d ) T . This is a
special case of the general p-norm deﬁned by ∥ x ∥ p =  ∑ ( i=1 d xi p | (p ≥ 1). We
also stress that in numerical computations the difference of norms can be meaningful.


We postpone a proof of Theorem 1.1 to Chap. ?? and here try to understand its implications. The theorem is called a 
local unique existence theorem, because it only guarantees the existence at most t 0 + ρ or t 0 + R/M, which depends 
on the initial condition (see Fig. 1.3). However, in the case of (1.3), since the Lipschitz constant L is kept the 
same beyond the bound, we can shift the same assertion for t greater than the bound and obtain a global existence of 
the unique solution. Similar things can be said for (1.2). Note that in both cases a constant multiple of each 
‘solution’ satisﬁes the differential equation again, for the right-hand side of each equation is zero (the case is 
called homogeneous). The situation becomes different in nonlinear function f with respect to x.


Posponemos la demostración del teorema 1.1 al cap. ?? y aquí tratamos de entender sus implicaciones. El teorema se 
llama teorema de existencia única local, porque solo garantiza la existencia como máximo de t 0 + ρ o t 0 + R/M, que 
depende de la condición inicial (véase la figura 1.3). Sin embargo, en el caso de (1.3), dado que la constante de 
Lipschitz L se mantiene igual más allá del límite, podemos desplazar la misma afirmación para t mayor que el límite 
y obtener una existencia global de la solución única. Se pueden decir cosas similares para (1.2). Nótese que en 
ambos casos un múltiplo constante de cada "solución" satisface de nuevo la ecuación diferencial, ya que el lado 
derecho de cada ecuación es cero (el caso se llama homogéneo). La situación se vuelve diferente en la función no 
lineal f con respecto a x.

Remark 1.2 The formulation F(t, x, x ′ ) = 0, which is given at the beginning of the chapter, is slightly broader 
than that of Deﬁnition 1.1, for it includes a case that cannot be transformed into (1.4). For example, it includes 
the differential-algebraic equation in the form x ′ = f (t, x) and g(x, x ′ ) = 0. The expression in (1.4) is often 
called the normal form of differential equation and we concentrate ourselves into it.

La formulación F(t, x, x ′ ) = 0, que se da al principio del capítulo, es ligeramente más amplia que la de la 
Definición 1.1, ya que incluye un caso que no puede transformarse en (1.4). Por ejemplo, incluye la ecuación 
diferencial-algebraica en la forma x ′ = f (t, x) y g(x, x ′ ) = 0. La expresión en (1.4) se suele denominar forma 
normal de la ecuación diferencial, y nos centraremos en ella.

**Nonlinear Case**

We will study an electronic circuit 
similar 
to Fig. 1.2 but with tunnel-diode TD instead of the resistor and the elements are wired in parallel (see Fig. 1.4).

Estudiaremos un circuito electrónico similar a la Fig. 1.2 pero con diodo túnel TD en lugar de la resistencia y los 
elementos están conectados en paralelo (ver Fig. 1.4).

When the characteristic function g(v) of TD has a cubic nonlinearity with respect to the voltage v biased by E, the 
circuit equation together with the currency i is given as

Cuando la función característica g(v) de TD tiene una no linealidad cúbica con respecto al voltaje v polarizado por 
E, la ecuación del circuito junto con la moneda i se da como

dv di C L g(v) i = 0, v = 0, + + dt dt

which reduces to the following equation after normalization:

dv v 2 di = εv 1 i, = v dt ( 3 ) dt

or

d2 v dv + ε(v 2 − 1) v = 0, + dt 2 dt

(1.6)

where ε is a positive parameter. This is known as the van der Pol equation, which is named after Dutch physicist, 
Balthasar van der Pol.

Thus, an application of Theorem 1.1 is not straightforward for (1.6). Also the elementary method of solution, which 
is usually given in the undergraduate college class to express the solution by combination of elementary functions 
such as polynomials, rational, trigonometric, exponential and logarithmic functions, is very hard to handle (1.6) 
because of its nonlinearity. This is the case for (1.1), too. However, more advanced mathematical analysis can 
induce the unique existence of the periodic solution of (1.1) and (1.6) [?]. This is an interesting result for them, 
because the equation causes oscillation phenomena without any external forcing. It is called an autonomous 
oscillation.

Por lo tanto, la aplicación del Teorema 1.1 no es sencilla para (1.6). Además, el método elemental de solución, que 
suele impartirse en las clases de pregrado para expresar la solución mediante la combinación de funciones 
elementales como polinomios, funciones racionales, trigonométricas, exponenciales y logarítmicas, es muy difícil de 
manejar en (1.6) debido a su no linealidad. Esto también ocurre con (1.1). Sin embargo, un análisis matemático más 
avanzado puede inducir la existencia única de la solución periódica de (1.1) y (1.6) [?]. Este es un resultado 
interesante para ellos, ya que la ecuación causa fenómenos de oscilación sin ninguna fuerza externa. Se denomina 
oscilación autónoma.

To get acquainted with the advanced methods, we describe the phase plane analysis by taking Eq. (1.6) as an example. 
On the xy-plane at the point (x, y) = (v(t), dv/dt(t)) of v(t) satisfying (1.6) with ε = 5 we attach an arrow whose 
gradient is equal to dv/dt (t), and repeat the process for many other points on the plane.

Para familiarizarnos con los métodos avanzados, describimos el análisis del plano de fase tomando como ejemplo la 
ecuación (1.6). En el plano xy, en el punto (x, y) = (v(t), dv/dt(t)) de v(t), que cumple (1.6) con ε = 5, dibujamos 
una flecha cuya pendiente es igual a dv/dt(t) y repetimos el proceso para muchos otros puntos del plano.

See Fig. 1.5. The ﬁgure consisting of these arrows is called the gradient ﬁeld of the van der Pol equation. Then, 
taking an initial point, e.g., (3.0, 1.0), on the plane, we obtain a curve, which is depicted as the thick line in 
the ﬁgure, by connecting the arrows one by one. This is called the phase portrait of the solution of the van der 
Pol equation with the initial condition. We can observe that it will wind around a simple closed curve. This 
suggests the existence of an autonomously oscillating solution of the equation.

Véase la Fig. 1.5. La figura que consta de estas flechas se denomina campo de gradiente de la ecuación de van der 
Pol. Luego, tomando un punto inicial, por ejemplo, (3.0, 1.0), en el plano, obtenemos una curva, representada como 
la línea gruesa en la figura, al conectar las flechas una a una. Esto se denomina representación de fase de la 
solución de la ecuación de van der Pol con la condición inicial. Podemos observar que se desenrollará alrededor de 
una curva cerrada simple. Esto sugiere la existencia de una solución de la ecuación que oscila de forma autónoma.


The analysis given above is called qualitative for ODEs. On the other hand, we are required to give quantitative 
information of the solution, too. This can be carried out by numerical solutions which are explained later in the 
volume.

El análisis anterior se denomina cualitativo para las EDO. Por otro lado, también se requiere proporcionar 
información cuantitativa de la solución. Esto puede lograrse mediante soluciones numéricas, que se explican más 
adelante en este volumen.

Furthermore, when the nonlinear element TD has a certain time-delaying effect, the equation becomes

dv v 2 (t − τ) di (t) = εv(t τ) 1 − i(t), (t) = v(t), dt ( 3 ) dt

(1.7)

where the positive τ denotes the time delay. Analytical methods are more difﬁcult than (1.6), while numerical 
solutions increase their role. For demonstration purposes, we will show results by numerical solutions. A numerical 
solution by the classical Runge–Kutta method is shown in Fig. 1.6 1 for the problem (1.6) with ε = 1, v(0) = 2
and i(0) = 0. In the delayed case, we calculated numerical solutions of (1.7) with ε = 1 for τ = 0.2, 0.4 and 0.6, 
which are depicted in Fig. 1.7 1 in this order. The dashed curve shows the solution without delay. We can observe 
that when τ is becoming large, the solution oscillates with a shorter period.

donde el τ positivo denota el retardo de tiempo. Los métodos analíticos son más difíciles que (1.6), mientras que 
las soluciones numéricas aumentan su rol. Para propósitos de demostración, mostraremos resultados por soluciones 
numéricas. Una solución numérica por el método clásico de Runge-Kutta se muestra en la Fig. 1.6 1 para el problema 
(1.6) con ε = 1, v(0) = 2 e i(0) = 0. En el caso retardado, calculamos soluciones numéricas de (1.7) con ε = 1 para 
τ = 0.2, 0.4 y 0.6, que se representan en la Fig. 1.7 1 en este orden. La curva discontinua muestra la solución sin 
retardo. Podemos observar que cuando τ se vuelve grande, la solución oscila con un período más corto.


Differential equations of this sort, which will be called delay differential equations, will be described in later 
chapters in 
more detail.



Other Problems for Differential Equations 

There are several other problem formulations than the initial-value 
problem for ordinary differential equations. When we ﬁx the time interval [ a, b ] on which we are seeking the 
solution of the equation as

Existen otras formulaciones de problemas además del problema del valor inicial para ecuaciones diferenciales 
ordinarias. Cuando fijamos el intervalo de tiempo [a, b] en el que buscamos la solución de la ecuación como


dx = f (t, x) dt

(a < t < b)

and are constrained by totally d conditions for x(a) and x(b), it is called a boundaryvalue problem. For example, 
assume that the second-order differential equation is given by

y están limitadas por condiciones totalmente d para x(a) y x(b), se denomina problema de valor límite. Por ejemplo, 
supongamos que la ecuación diferencial de segundo orden está dada por

d2 x dx = f t, x, d t 2 ( dt )

(1.8)

on (a, b) and the boundary condition

x(a) = A,

x(b) = B

is assigned. Then, it is known that if f (t, x, y) is differentiable with respect to both x and y and f x and f y 
are continuous on the domain

D = { (t, x, y) : a ≤ t ≤ b, −∞ < x < ∞, −∞ < y < ∞ }

and furthermore f x ≥ 0 and | f y | is bounded on D, then the above boundary-value problem has a unique solution on 
[ a, b ] .

The above problem can be converted to seek the missing initial-value ζ. By imposing
dx ing (a) = ζ with a certain guess, we solve the initial-value problem of (1.8) and dt obtain the value x(b). If 
x(b) = B holds, we are happy to attain success with the exact guess ζ. If not, taking the difference x(b) − B into 
account we modify the ζ, try again to solve the initial-value problem and repeat it. This is called shooting, which 
means to convert the boundary-value problem into the initial-value problem with a missing initial condition.

El problema anterior puede convertirse para buscar el valor inicial faltante ζ. Al imponer dx ing (a) = ζ con una 
cierta aproximación, resolvemos el problema de valor inicial de (1.8) y dt obtenemos el valor x(b). Si x(b) = B se 
cumple, nos conformamos con haber alcanzado el valor exacto ζ. En caso contrario, considerando la diferencia x(b) − 
B, modificamos ζ, intentamos resolver el problema de valor inicial y lo repetimos. Esto se denomina "shooting", que 
significa convertir el problema de valor en la frontera en un problema de valor inicial con una condición inicial 
faltante.


Next is the eigenvalue problem, which is explained by the following example. Assume that the boundary-value problem 
of the second-order differential equation

A continuación, se presenta el problema de valores propios, que se explica con el siguiente ejemplo. Supongamos que 
el problema de valores en la frontera de la ecuación diferencial de segundo orden...

d2 x + (q(t) + λr(t)) x = 0 (a < t < b), x(a) = x(b) = 0 dt2 

is given. Here λ is a parameter. It is obvious the trivial solution x(t) ≡ 0 satisﬁes it. However, for a certain 
non-zero λ it is known the equation has a non-trivial solution. This is called the Sturm–Liouville-type eigenvalue 
problem, which often arises in mathematical physics, and the parameter λ satisfying the problem is called its 
eigenvalue. We emphasize that the shooting principle is again applicable. Taking a non-trivial initial value for (a) 
and a guess λ we solve the initial-value problem and check whether the solution satisﬁes the condition x(b) = 0.

Se da. Aquí λ es un parámetro. Es obvio que la solución trivial x(t) ≡ 0 la satisface. Sin embargo, para un cierto 
λ distinto de cero, se sabe que la ecuación tiene una solución no trivial. Esto se denomina problema de autovalor de 
tipo Sturm-Liouville, que surge a menudo en física matemática, y el parámetro λ que satisface el problema se 
denomina autovalor. Destacamos que el principio de disparo es aplicable de nuevo. Tomando un valor inicial no 
trivial para (a) y un valor λ aproximado, resolvemos el problema de valor inicial dt y comprobamos si la solución 
satisface la condición x(b) = 0.

Henceforth you can understand that the solution method for the initial-value 
problem of ordinary differential 
equations has a big signiﬁcance and its numerical solution is worth studying. In the following chapters we will 
explain the methods as well as the ways of analysing them. Descriptions will be also given for differential 
equations with delay.

De ahora en adelante, comprenderá que el método de solución para el problema de valor inicial de las ecuaciones 
diferenciales ordinarias es muy importante y que su solución numérica merece ser estudiada. En los siguientes 
capítulos, explicaremos los métodos y sus métodos de análisis. También se detallarán las ecuaciones diferenciales 
con retardo.

**Exercises**

1.1. Show that the function x (t) = cos (at + b) with the constants a and b satisd4  x ﬁes the differential 
equation = a 4 x. Also conﬁrm that another function dt4  cosh (at + b) satisﬁes the same equation.

1.2. Solve the initial-value problem

dx t = x t 1, + + dt

=

−

1

x(1) 2

∞

by determining the solution in the power series form as

∑

n=0

c n (t − 1) n . Derive

a recurrence relation of the coefﬁcients { c n } by substituting the series into the equation. If possible, 
determine the radius of convergence of the power series solution.

1.3. In the text the solution of (1.2) is given only for the case ω > α. Try to ﬁnd solutions for other cases, that 
is, ω = α and ω < α. Assume the solution to be in the form of e ρt with undetermined ρ and, by substituting it into 
the differential equation, derive an algebraic equation for ρ (this is called the characteristic equation). What is 
the behaviour of the solution when t becomes large?

1.3. En el texto, la solución de (1.2) se da solo para el caso ω > α. Intente encontrar soluciones para otros casos, 
es decir, ω = α y ω < α. Suponga que la solución está en la forma e ρt con ρ indeterminado y, sustituyéndola en la 
ecuación diferencial, derive una ecuación algebraica para ρ (esta se denomina ecuación característica). ¿Cuál es el 
comportamiento de la solución cuando t aumenta?


1.4. A body which is falling vertically in the atmosphere due to the gravitational force must encounter resistance 
from the air. Under the assumption that the resistance is proportional to the velocity v of the body, derive the 
differential equation which governs the falling motion of the body by taking v as the unknown function with the time 
t. Then, solve the equation with the initial condition v(0) = v0 .

1.4. Un cuerpo que cae verticalmente en la atmósfera debido a la fuerza gravitacional debe encontrar resistencia en 
el aire. Suponiendo que la resistencia es proporcional a la velocidad v del cuerpo, derive la ecuación diferencial 
que rige el movimiento de caída del cuerpo tomando v como función desconocida con el tiempo t. Luego, resuelva la 
ecuación con la condición inicial v(0) = v 0 .


1.5. For the solution (θ(t), φ(t)) of (1.1), let us introduce the functional H by

1 H(t) = − g cos (θ(t)) . a (ϕ(t))2  2

Conﬁrm that the derivative of H along (θ(t), ϕ(t)) vanishes so that H is invariant along it. In the context of a 
dynamical system, H is called the Hamiltonian of (1.1) and its invariance implies a closed orbit of (θ(t), ϕ(t)). 
1.6. Equation (1.4) is called autonomous when the function f does not depend on t. That is, assume that the equation

dx = f (x) dt

has a solution x(t). Then, show that x(t + c) is also a solution of the system for arbitrary c.

1.7. Prove the inequalities

∥ x ∥ ∞ ≤ ∥ x ∥ 2 ≤ √ d ∥ x ∥ ∞ ,

∥ x ∥ ∞ ≤ ∥ x ∥ 1 ≤ d ∥ x ∥∞ 

for any x ∈ R d . Moreover, for arbitrary α and β (α, β ≥ 1) it has been shown that there exist positive constants 
m and M which satisfy

m ∥ x ∥ α ≤ ∥ x ∥ β ≤ M ∥ x ∥α 

for any x ∈ R d , and this fact is called the norm equivalence of R d .


