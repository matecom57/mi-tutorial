Chapter 4 Control System Stability
=================================

For a control system, especially a closed-loop feedback control system, its stability
is our first important concern for control purpose, though its stability is not the only
important concern. Unstable control systems are obviously undesirable in practical
applications and nobody likes unstable control systems. It is like in daily life, nobody
is willing to drive a commercial car whose stability is not guaranteed. Although
we have not clarified the term stability or stable by so far, the daily-life sense of
unstability or unstable is already enough for readers to understand that unstable
control systems should be avoided in practical applications.
A control system’s stability may be regarded as the property that it should perform
stably under influence of stable input. 1 However, this conception is still abstract for
understanding because we have not clarified what “performing stably” means exactly.
A more intuitive conception of control system stability may be that the control system
should have no output or should at least have convergent output when it is given no
input. In contrast, if a control system has oscillatory or even divergent output even
when it is given no input, then it is an unstable control system.
For example, an inverted pendulum open-loop control system illustrated in
Fig. 1.11 is unstable, because the inverted pendulum will have divergent output
namely falling down when it is given no input—Readers may argue that there is a
special initial condition namely the vertical position for the inverted pendulum to
keep stationary. However, this special initial condition is too ideal, whereas ad hoc
disturbance always exists in reality, which causes the inverted pendulum to deviate
from the special initial condition of being absolutely vertical and finally fall down.
Even supposing that no ad hoc disturbance exists, the inverted pendulum still cannot
be located absolutely at the vertical position in reality according to the principle of
quantum physics.
From the inverted pendulum example, we can see that a stable control system
should have convergent output when it is given no input and with whatever initial
conditions. In other words, for a stable control system, influence of whatever initial

conditions fades away. We say that a control system converges or is convergent if
it has convergent output. Then control system stability refers to the property of a
control system that it converges or is convergent when it is given no input, regardless
of its initial conditions.
Control system stability: The property of a control system that it converges or
is convergent when it is given no input, regardless of its initial conditions.

4.1 Intuitive Conception of Control System Stability
To facilitate conception of control system stability, consider the concrete example
of rotating disk position control presented in Sect. 2.5 in Chap. 2. The rotating disk
position closed-loop feedback control system is illustrated in Fig. 4.1, where the
friction coefficient is supposed to be zero. The friction coefficient being zero implies
the ideal condition that the rotating disk is exempt from friction. The rotating disk
position closed-loop feedback control system can be treated as a black box from
customers’ perspective. The input to the rotating disk position control black box is
certain expected rotating position and the output is the rotating position.
Suppose that the proportional feedback control method described in (2.5) is

adopted inside the rotating disk position control black box. We have already demon-
strated in Sect. 2.5 in Chap. 2 that the rotating disk position control black box has

severe oscillatory output when it is given the input.pE = 1. Such undesirable control
performance is obvious to reflect that the rotating disk position control black box
have problems. To further highlight that the problems are inherent to the rotating disk
position control black box itself and have no relation at all with the input.pE, we set
the input to zero (as if customers give no command to it) and observe its performance
purely caused by its initial conditions.

Matlab code for simulation of rotating disk position proportional feedback control
without external input .pE is given as follows. Suppose that the rotating disk initial
condition is.p(0) = 0 and.p(1)
(0) ≡ d
dt p(t)|t=0 = 4.

The simulation result is demonstrated in Fig. 4.2, where the horizontal axis rep-
resents the simulation time span and the vertical axis represents the rotating position

during simulation. The rotating disk position control system has severe oscillatory
rotating position output as well, even when no external input .pE is given to it. This
tricky phenomenon reflects that the rotating disk position control system must itself
have inherent problems if the proportional feedback control method described in
(2.5) is adopted. In other words, the rotating disk position proportional feedback
control system itself is unstable, regardless of its external input.
On the other hand, suppose that the proportional-derivative feedback control
method described in (2.6) is adopted inside the rotating disk position control black
box. Matlab code for simulation of rotating disk position proportional-derivative
feedback control without external input .pE is given as follows. Suppose that the
rotating disk initial condition is the same to previous configuration.

The simulation result is demonstrated in Fig. 4.3. The rotating disk position con-
trol system has convergent rotating position output. Readers can try more rounds

of simulation with different rotating disk initial conditions and will find that the
rotating disk position control system always has convergent output. In other words,
the rotating disk position proportional-derivative feedback control system itself is
convergent, regardless of its initial conditions. So it is stable.
Above simulation experiments with the two rotating disk position control system
examples can facilitate intuitive conception of control system stability. Simulation
experiments can also reveal control system unstability such as unstability of the
rotating disk position proportional feedback control system. However, simulation
experiments and even field experiments cannot prove control system stability, just
like a billion of orthogonal triangles cannot prove the Gou-Gu theorem or Pythagoras
theorem that an orthogonal triangle’s hypotenuse square equals the sum of its two
side squares. To study whether and why a control system is essentially stable or
unstable, we resort to theoretical analysis according to control theory.

4.2 Theoretical Analysis of Control System Stability
4.2.1 Theoretical Analysis of Closed-Loop Feedback Control
Examples
For theoretical analysis of the rotating disk position proportional feedback control

system and the rotating disk position proportional-derivative feedback control sys-
tem, we resort to the methodology of system modelling presented in Chap. 3. The

rotating disk position proportional feedback control system (where the friction coef-
ficient is ideally supposed to be zero) can be modelled by a transfer function block

diagram illustrated in Fig. 4.4.

By rules of transfer function block synthesis introduced in Sect. 3.4 in Chap. 3, we
can compute the holistic transfer function of the rotating disk position proportional
feedback control system as

.
p(s)
pE(s) = P 1
J s2
1 + P 1
J s2
= P
J s2 + P , (4.1)
from which we can re-establish the holistic dynamics relationship between the control
system input.pE and the control system output. p by a differential equation as

.J
d2 p
dt 2 + P p = P pE. (4.2)
Perform the Laplace transform on both sides of (4.2) with initial conditions taken
into account and obtain

. J (s2 p(s) − sp(0−) − p(1)

(0−)) + P p(s) = P pE(s).

So

. p(s) = P
J s2 + P pE(s) +

J (sp(0−) + p(1)
(0−))
J s2 + P .
If there is no control system input, namely.pE = 0, then we have

.p(s) = sp(0−) + p(1)
(0−)
s2 + P/J , (4.3)
which reflects dynamics of the control system purely caused by its initial conditions.
Adopt the same control system parameters and initial conditions as in simulation
presented in Sect. 4.1, namely .J = 10, .P = 1000, .p(0−) = 0, and .p(1)
(0−) = 4.

Substitute them into (4.3) and obtain

. p(s) = 4
s2 + 100 ,
p(t) = 0.4 sin(10t), (check Table 3.1) (4.4)

which implies theoretically the rotating position output. p is indeed oscillatory, con-
sistent with the simulation result demonstrated in Fig. 4.2. We can put forward

theoretical analysis by considering generic control system configurations and derive
(4.5) from (4.3):

.p(t) = p(0−) cos P
J
t

+ p(1)
(0−)
√P/J
sin  P
J
t

, (4.5)

(check Table 3.1)

which implies theoretically the rotating disk position proportional feedback control
system definitely has oscillatory output when its initial condition is non-zero, with

the oscillatory amplitude determined by the initial condition. Above theoretical anal-
ysis proves that the rotating disk position proportional feedback control system is

unstable, regardless of concrete values of the rotating disk load inertia . J and the
proportional coefficient. P.

In practical applications, such theoretical analysis can help us avoid blind tri-
als with the rotating disk position proportional feedback control system which has

inherent problems. Generally, theoretical analysis based on control theory can help
us avoid blind trials with control systems that have inherent problems. This is right
an important aspect of power of control theory.
Control theory power I: Theoretical analysis based on control theory can help
us avoid blind trials with control systems that have inherent problems.
Readers may be confused by a small detail: theoretical analysis described in (4.4)
coveys that the oscillatory amplitude of the control system output is 0.4, whereas
the simulation result demonstrated in Fig. 4.2 conveys that the oscillatory amplitude
of the control system output is a bit more than 1.5. Why does such considerable
discrepancy exist?
The reason is as follows: In simulation, we set a maximum allowable controller
output torque.Tmax according to field practices (note that no controller output torque

can be unlimited). So the proportional controller is truncated by the maximum con-
troller output and is not ideally linear. However, according to system modelling via

Laplace transform, each system component including the controller is assumed ide-
ally linear, which implies the controller output torque . T can be larger than.Tmax (or

smaller than.−Tmax) when the feedback error. e is with large enough absolute value.
In other words, the controller in simulation is not as ideal as that in system modelling
via Laplace transform, so the control system performance in simulation is even worse
than that derived by theoretical analysis.

If the absolute value of.p(1)

(0−)is reduced, the oscillatory amplitude of the control
system output is reduced accordingly and the controller output torque also becomes
unlikely to exceed the maximum controller output torque limit. So the controller
becomes closer to an ideal linear system component and simulation results would
be closer to results derived by theoretical analysis. For example, we keep all control
system configurations except the initial condition.p(1)

(0−) which is reduced from 4
to 0.4. On one hand, we obtain.p(t) = 0.04 sin(10t) theoretically according to (4.5).
On the other hand, we obtain the simulation result demonstrated in Fig. 4.5, which
is consistent with the theoretical result—Not only the oscillatory amplitude but also
the oscillatory frequency are consistent with the theoretical result.
The fact that the controller is constrained by the maximum controller output
torque limit and hence is not ideally linear does not imply that the methodology of
system modelling via Laplace transform is invalid. In fact, system modelling via
Laplace transform is completely valid for the most crucial operation range namely
the operation range about the stable operation point or equilibrium point (In the
example of rotating disk position control, the stable operation point is.p = pE with
.e = 0). Besides, even for other operation ranges where system component linearity
is violated, system modelling via Laplace transform may still help us infer certain
control performance tendency.
On the other hand, we have to admit that we should by no means exaggerate
validity of system modelling via Laplace transform, especially when the control
system is severely nonlinear itself or in operation conditions where its linearity is
severely violated. Nonlinear control system examples will be encountered in this
book.
Above discussions stemming from discrepancy between the theoretical result

described in (4.4) and the simulation result demonstrated in Fig. 4.2 may make read-
ers feel confused and at a loss about validity of system modelling via Laplace trans-
form. It seems that system modelling via Laplace transform is both valid and invalid

in practical applications and there is no conclusion about its validity. In fact, not
only system modelling via Laplace transform, but also any aspect of control theory

and even any aspect of engineering-oriented mathematics-style knowledge neces-
sitates dialectic conception and understanding of the relationship between theory

and practical applications and necessitates flexible treatment of theory and prac-
tical applications holistically. This is an essential ability and quality of high-level

engineers.

We return from complementary discussions to theoretical analysis of the sec-
ond control system example presented in Sect. 4.1. The rotating disk position

proportional-derivative feedback control system (where the friction coefficient is
ideally supposed to be zero) can be modelled by a transfer function block diagram
illustrated in Fig. 4.6.
Similar to theoretical analysis of the rotating disk position proportional feedback
control system, we can compute the holistic transfer function of the rotating disk
position proportional-derivative feedback control system as

.
p(s)
pE(s) = (P + Ds) 1
J s2
1 + (P + Ds) 1
J s2
= Ds + P
J s2 + Ds + P , (4.6)
from which we can re-establish the holistic dynamics relationship between the control
system input.pE and the control system output. p by a differential equation as

.J
d2 p
dt 2 + D
d p
dt
+ P p = D
d pE
dt
+ P pE. (4.7)
Perform the Laplace transform on both sides of (4.7) with initial conditions taken
into account and obtain
.J (s2 p(s) − sp(0−) − p(1)

(0−)) + D(sp(s) − p(0−)) + P p(s)

= D(spE(s) − pE(0−)) + P pE(s).

So
. p(s) = Ds + P
J s2 + Ds + P pE(s) + (J s + D)p(0−) + J p(1)

(0−) − DpE(0−)
J s2 + Ds + P .

If there is no control system input, namely.pE = 0, then we have
.p(s) = (J s + D)p(0−) + J p(1)
(0−)

J s2 + Ds + P , (4.8)
which reflects dynamics of the control system purely caused by its initial conditions.

Adopt the same control system parameters and initial conditions as in simula-
tion presented in Sect. 4.1, namely .J = 10, .P = 1 000, .D = 200, .p(0−) = 0, and

.p(1)
(0−) = 4. Substitute them into (4.8) and obtain
. p(s) = 4
s2 + 20 s + 100 = 4
(s + 10)2 ,

p(t) = 4e−10t

t, (check Table 3.1) (4.9)
which implies theoretically that the rotating position output. p is indeed convergent
(note that.e−10t

t → 0 as.t → ∞), consistent with the simulation result demonstrated
in Fig. 4.3. There is small discrepancy between the theoretical result described in
(4.9) and the simulation result demonstrated in Fig. 4.3—We believe readers now

can understand why such discrepancy exists—If we keep all control system config-
urations except the initial condition.p(1)

(0−) which is reduced from 4 to 0.4, then on

one hand, we obtain.p(t) = 0.4e−10t

t theoretically. On the other hand, we obtain the
simulation result demonstrated in Fig. 4.7, which is consistent with the theoretical
result—We also believe readers now can understand why the discrepancy between
the theoretical result and the simulation result diminishes once the initial condition
.p(1)
(0−) is reduced from 4 to 0.4.

For a generic initial condition.p(0−) and.p(1)

(0−), from (4.8) we have (still with

control system parameters.J = 10,.P = 1 000, and.D = 200)

. p(t) = L−1

(s + 20)p(0−) + p(1)
(0−)
s2 + 20 s + 100 

= L−1
 p(0−)
s + 10
+ L−1
10p(0−) + p(1)
(0−)
(s + 10)2


= p(0−)e−10t + (10p(0−) + p(1)
(0−))e−10t
t, (4.10)
which implies theoretically that the rotating disk position proportional-derivative

feedback control system converges when it is with no matter what initial condi-
tion. In other words, above theoretical analysis proves that the rotating disk position

proportional-derivative feedback control system is essentially stable, regardless of
its initial condition. To prove is an important guarantee that cannot be achieved
purely by experiments, be it simulation or field experiments, no matter how many

rounds of experiments under various conditions can be done. In practical applica-
tions, such theoretical analysis can help us know whether the rotating disk position

proportional-derivative feedback control system is guaranteed to be stable and why it
is essentially stable. Generally, theoretical analysis based on control theory can help
us know whether and why a control system essentially possesses certain property.
This is right another important aspect of power of control theory.
Control theory power II: Theoretical analysis based on control theory can
help us know whether and why a control system essentially possesses certain
property.

4.2.2 Control System Characteristic Polynomial and Poles
for Stability Analysis

We can extend theoretical analysis of concrete control systems presented previ-
ously to theoretical analysis of a generic control system that follows the linear time-
invariant assumption explained in Sect. 3.3 in Chap. 3. Suppose that the control

system’s holistic transfer function after transfer function block synthesis is denoted
generically as

.
y(s)
r(s) = bmsm + bm−1sm−1 +···+ b0
ansn + an−1sn−1 +···+ a0

, (4.11)
from which we can re-establish the holistic dynamics relationship between the control
system input. r and the control system output. y by a generic differential equation as

. an
dn
dt n y + an−1
dn−1
dt n−1 y +···+ a0 y = bm
dm
dtm r + bm−1
dm−1
dtm−1 r +···+ b0r.
(4.12)
Perform the Laplace transform on both sides of (4.12) with initial conditions taken
into account and obtain

. (ansn + an−1sn−1 +···+ a0)y(s) − A0(s)
= (bmsm + bm−1sm−1 +···+ b0)r(s) − B0(s).

So
. y(s) = bmsm + bm−1sm−1 +···+ b0
ansn + an−1sn−1 +···+ a0
r(s) +

A0(s) − B0(s)
ansn + an−1sn−1 +···+ a0
,
(4.13)
where.A0(s) and.B0(s) are constant polynomials determined by initial conditions of
the output. y and the input. r respectively. If there is no control system input, namely
.r = 0, then we have

.yi(s) = A0(s)
ansn + an−1sn−1 +···+ a0

, (4.14)
which reflects dynamics of the control system purely caused by its initial conditions.
The control system output purely caused by initial conditions is called the initial
response of the control system, and.yi described in (4.14) is the.s-domain function
of the control system initial response, from which the original time-domain function
of the control system initial response can be recovered.
The numerator .A0(s) of the .s-domain function .yi(s) described in (4.14) is ad
hoc determined by concrete initial conditions of the control system, whereas the
denominator of .yi(s) is uniquely determined once the control system is given. The
denominator of.yi(s) is the same to the denominator of the control system’s holistic
transfer function described in (4.11), namely

.ansn + an−1sn−1 +···+ a0, (4.15)
which is called the characteristic polynomial of the control system. The following
equation

.ansn + an−1sn−1 +···+ a0 = 0 (4.16)

is called the characteristic equation of the control system. The roots of the char-
acteristic polynomial described in (4.15) or the characteristic equation described in

(4.16) are called poles of the control system.

Suppose that the control system’s characteristic polynomial described in (4.15) is
factored as
. ansn + an−1sn−1 +···+ a0 = an(s + α1)
m1 (s + α2)
m2 ···(s + αN )
mN ,
where.−α1, −α2,..., −αN denote control system poles and.m1, m2,..., mN denote
their numbers respectively.
In the spirit of partial fraction decomposition presented in Sect. 3.2.3 in Chap. 3,
the.s-domain function.yi(s) described in (4.14) can be decomposed into the sum of
partial fractions as
.yi(s) = A0(s)
an(s + α1)m1 (s + α2)m2 ···(s + αN )mN
= 
N
j=1
m j
k=1
c j,k
(s + αj)k , (4.17)
where the generically-denoted coefficients .c j,k (. j ∈ {1,..., N}, .k ∈ {1,..., m j})
can be ad hoc determined once concrete initial conditions of the control system are
given.
From (4.17), the original time-domain function of.yi(s) can be recovered as

.yi = 
N
j=1
m j
k=1
c j,k e−αj t t k−1
(k − 1)! (check Table 3.1), (4.18)

where each term .e−αj t

t k−1 converges to zero if and only if the real part of
each .−αj is negative. If the real parts of all the poles are negative, namely

.Re(−α1),Re(−α2), . . . ,Re(−αN ) are negative, then no matter for what initial con-
ditions of the control system, .yi will always converge to zero. In other words, the

control system always converges if the real parts of all its poles are negative, regard-
less of its initial conditions. On the other hand, if the real part of at least one pole

is non-negative, then the control system definitely has oscillatory or divergent out-
put caused by certain initial conditions. Therefore, we can conclude that a linear

time-invariant control system is stable if and only if the real parts of all its poles are
negative.
Control system stability criterion: A linear time-invariant control system is
stable if and only if the real parts of all its poles are negative.

4.3 Routh-Hurwitz Criterion
4.3.1 Parametrized Characteristic Polynomial
If a linear time-invariant control system’s characteristic polynomial is determined,
then we may resort to analytical methods or numerical methods to compute its poles
and hence know whether it is stable or not. However, in practical applications, we
often encounter parametrized characteristic polynomials in control system design.

Take the rotating disk position proportional-derivative feedback control system pre-
sented in Sect. 4.2 as an example. Let the proportional-derivative controller be mod-
elled generically by .P + Ds with the proportional coefficient .P and the derivative

coefficient. D. The characteristic polynomial is given as

.CRDP
P D (s) = J s2 + Ds + P, (4.19)
which is a parametrized characteristic polynomial. More specifically, .CRDP
P D (s) is

with parametrized coefficients namely .P and .D for the constant term and the first-
order term respectively.

For control system design, we need to determine the range of controller parameters
.P and .D for the control system to be stable or determine whether such range of . P
and.D ever exists. In other words, we need to determine the range of.P and.D such
that all poles of the control system, namely all roots of the characteristic polynomial
described in (4.19), are with negative real part or whether such requirement can
ever be satisfied. The roots of the characteristic polynomial described in (4.19) are
expressed by its parametrized coefficients as
. s1,2 = −D ± √D2 − 4 J P
2 J .

It is easy to verify that.P > 0 and.D > 0 form the necessary and sufficient condition
for the rotating disk position proportional-derivative feedback control system to be
stable (note that the rotating disk load. J is always positive in real applications).

However, many control system characteristic polynomials encountered in practi-
cal applications are not as simple as the second-order polynomial described in (4.19).

For example, consider a third-order parametrized characteristic polynomial as
.C3K (s) = s3 + 3 s2 + 3 K s + 1, (4.20)
where the coefficient for the first-order term is a parametrized coefficient .3K. The
characteristic polynomial.C3K (s)is the characteristic polynomial of a control system
with the controller parameter. K. A polynomial with real-value coefficients that has
roots all with negative real part is obviously a polynomial with positive real-value
coefficients, so .K > 0 is a necessary condition for .C3K (s) to have roots all with
negative real part.

For control system stability, we need to determine the range of.K within. (0,∞)
such that the characteristic polynomial .C3K (s) has roots all with negative real part.
Similar to how we handle the second-order parametrized characteristic polynomial
described in (4.19), we solve the third-order characteristic equation.C3K (s) = 0 and
express its roots by parametrized coefficients in terms of . K. To solve a third-order
polynomial equation analytically, we need more skills than solving a second-order
polynomial equation. Denote.s + 1 = u + v, substitute it into (4.20) and obtain

. (s + 1)
3 + (3K − 3)(s + 1) + 3 − 3K = 0
⇐⇒ (u + v)3 + (3K − 3)(u + v) + 3 − 3K = 0
⇐⇒ u3 + v3 + 3 − 3K + (3uv + 3K − 3)(u + v) = 0.

Let .u3 + v3 + 3 − 3K = 0 and .3uv + 3K − 3 = 0 (so .uv = 1 − K and . u3v3 =
(1 − K)3), from which we know that.u3 and.v3 are the two roots of the second-order
polynomial.x 2 + (3 − 3K)x + (1 − K)3 and hence are solved as
. u3 = 3(K − 1) + √5 + 4K|K − 1|
2 ,
v3 = 3(K − 1) − √5 + 4K|K − 1|
2 .

So

. u = 3

3(K − 1) + √5 + 4K|K − 1|
2 ,

v = 3

3(K − 1) − √5 + 4K|K − 1|
2 ,

where both. u and. v are real values as.K > 0.
Since.uv = 1 − K must be satisfied, the three roots of.C3K (s) described in (4.20)
are respectively
. s1 = −1 + u + v
= −1 + 3

3(K − 1) + √5 + 4K|K − 1|
2 + 3

3(K − 1) − √5 + 4K|K − 1|
2 ,

s2 = −1 + uω + vω2
= −1 + 3

3(K − 1) + √5 + 4K|K − 1|
2 ω + 3

3(K − 1) − √5 + 4K|K − 1|
2 ω2
,
(4.21)

s3 = −1 + uω2 + vω

= −1+ 3

3(K − 1) + √5 + 4K|K − 1|
2 ω2+ 3

3(K − 1) − √5 + 4K|K − 1|
2 ω,

where.ω = e2πj/3 = −1+
√3j
2 . Since both. u and. v are real values, the real parts of the

three roots. s1,. s2,.s3 are respectively
. Re(s1) = −1 + u + v
= −1 + 3

3(K − 1) + √5 + 4K|K − 1|
2 + 3

3(K − 1) − √5 + 4K|K − 1|
2 ,

Re(s2,3) = −1 − 1
2
(u + v) (4.22)

= −1 − 1
2
⎛
⎝ 3

3(K −1) + √5 + 4K|K −1|
2 + 3

3(K −1) − √5 + 4K|K −1|

2

⎞
⎠ .

If.K  1, we have
. u = 3

3 + √5 + 4K
2
√3
K − 1 ≡ α
√3
K − 1,

v = − 3
√5 + 4K − 3
2
√3
K − 1 ≡ β
√3
K − 1,

u + v = (α − β)√3
K − 1 > 0, ⎛
⎝α ≡ 3

3 + √5 + 4K
2 > β ≡ 3

√5 + 4K − 3
2
⎞
⎠

and

.Re(s2,3) = −1 − 1
2
(u + v) < 0,
Re(s1) = −1 + (α − β)√3
K − 1

= −1 +
3
√3 K − 1
α2 + αβ + β2 (α3 − β3 = 3)
< −1 +
3
√3 K − 1
3αβ (α2 + β2 > 2αβ > 0)
= −1 +
√3 K − 1
√3 K − 1 = 0.

Therefore, the characteristic polynomial.C3K (s) has roots all with negative real part
if.K  1.
If.0 < K < 1, we have
. u = − 3

3 − √5 + 4K
2
√3
1 − K ≡ −γ
√3
1 − K < 0,

v = − 3

3 + √5 + 4K
2
√3
1 − K ≡ −α
√3
1 − K < 0,

and

. Re(s1) = −1 + u + v < 0,
Re(s2,3) = −1 − 1
2
(u + v) = −1 +
1
2
(γ + α)√3
1 − K.

Note that
.
d
dK (γ + α) = − 1
3
√5 + 4K
1
γ 2 − 1
α2

< 0,

d
dK
√3
1 − K = − 1
3(
√3 1 − K)2
< 0,

so we have
.
d
dK
Re(s2,3) = 1
2

√3
1 − K
d
dK (γ + α) + (γ + α)
d
dK
√3
1 − K

< 0.
Also note that .Re(s2,3)|K=1/9 = 0 (the solution .K = 1/9 can be gradually located
by binary search Bonnans et al. 2006), so we have .Re(s2,3)  0 for . 0 < K  1/9
whereas.Re(s2,3) < 0 for.1/9 < K < 1.
Finally, for the third-order parametrized characteristic polynomial . C3K (s)
described in (4.20), we have succeeded in determining the range of its parameter
.K for it to have roots all with negative real part, namely .K > 1/9. Above method
of determining the parameter range can be summarized as follows: first solve the

parametrized characteristic polynomial equation analytically and then check the ana-
lytical roots directly to determine the range of parameters for the parametrized char-
acteristic polynomial to have roots all with negative real part or determine whether

such parameter range ever exists. We may call such method analytical root direct
checking method.

Although the analytical root direct checking method succeeds in determining the
range of.K for.C3K (s) to have roots all with negative real part, readers may begin to
feel difficulty in applying the method. For fourth-order parametrized characteristic
polynomials, it is even more difficult to apply the method. For a fifth-order or above
fifth-order parametrized characteristic polynomial, the analytical root direct checking
method becomes infeasible, because we cannot obtain generic analytical solutions of
its roots in terms of its parametrized coefficients. Readers need knowledge of modern
algebra to understand this point. A representative book worth recommendation is
Lang’s Algebra (Lang 2002).

4.3.2 Locating Poles Qualitatively According
to Characteristic Polynomial Coefficients

For a generic parametrized characteristic polynomial, the analytical root direct check-
ing method is infeasible, the reason for which has just been mentioned above. How-
ever, we may reflect on a basic question: for a generic polynomial, is it necessary

to solve its roots first before determining whether its roots are all with negative real
part?
Fortunately, the answer to above basic question is no. In fact, we can locate a

generic polynomial’s roots qualitatively according to its coefficients. More specifi-
cally, we can locate according to its coefficients how many roots are in the half plane

on the right side of the imaginary axis, on the imaginary axis, or in the half plane
on the left side of the imaginary axis. 2 So for a linear time-invariant control system,
we can locate its poles qualitatively according to its characteristic polynomial (or
parametrized characteristic polynomial) coefficients.
A representative method of locating a generic polynomial’s roots qualitatively
according to the polynomial coefficients is the Routh-Hurwitz criterion method
which was developed independently by E. Routh and A. Hurwitz in the late
nineteenth century (Dorf and Bishop 2008). The Routh-Hurwitz criterion method
is based on checking an array called Routh array that is completed iteratively
from the ordered coefficients of the characteristic polynomial. Consider a generic
characteristic polynomial (with.an > 0 or even.an = 1):

.ansn + an−1sn−1 +···+ a0. (4.23)
Order its coefficients into the first two rows of the following Routh array:

sn an an−2 an−4 ···
sn−1 an−1 an−3 an−5 ···
sn−2 bn−2 bn−4 bn−6 ···
sn−3 cn−3 cn−5 cn−7 ···
.
.
. .
.
. .
.
. .
.
.
s0 z0

where rows after the second row, namely rows initiated by .sn−2,sn−3,...,s0, are
computed iteratively as
. bn−2 = − 1
an−1




an an−2
an−1 an−3



 = an−1an−2 − anan−3
an−1
,

bn−4 = − 1
an−1




an an−4
an−1 an−5



 , bn−6 = − 1
an−1




an an−6
an−1 an−7



 , ...

cn−3 = − 1
bn−2




an−1 an−3
bn−2 bn−4



 , cn−5 = − 1
bn−2




an−1 an−5
bn−2 bn−6



 , ...

Then we can conclude that the number of characteristic polynomial roots with posi-
tive real part is equal to the number of sign changes in the first column of the Routh

array. Purely from mathematical perspective, the term “characteristic” can be omit-
ted in above description. However, we keep the mathematically unnecessary term

“characteristic” to emphasize the practical sense of such polynomials in the context
of control systems.
Routh-Hurwitz criterion: The number of characteristic polynomial roots with
positive real part is equal to the number of sign changes in the first column of
the Routh array.
For example, the characteristic polynomial

.(s + 1)(s2 + 2 s + 2) = s3 + 3 s2 + 4 s + 2 (4.24)
has three roots.−1 and.−1 ± j, all with negative real part. So the number of its roots
with positive real part is zero. The Routh array associated with it is

.
s3 1 4
s2 3 2
s1 10/3
s0 2

The number of sign changes in the first column of the Routh array is zero and is
equal to the number of characteristic polynomial roots with positive real part.

For another example, the characteristic polynomial

.(s + 1)(s2 − 2 s + 2) = s3 − s2 + 2 (4.25)
has a negative real root .−1 and two complex roots .1 ± j with positive real part. So
the number of its roots with positive real part is two. The Routh array associated with
it is

.
s3 1 0
s2 −1 2
s1 2
s0 2

The number of sign changes in the first column of the Routh array is two and is equal
to the number of characteristic polynomial roots with positive real part.
A simplified version of proof of the Routh-Hurwitz criterion, which catches the
essential spirit of the proof given in Anagnost and Desoer (1991), is given below.
Proof Define.pn(s), pn−1(s), pn−2(s), ··· , p0(s) as
. pn(s) ≡ ansn + an−1sn−1 + an−2sn−2 + an−3sn−3 +··· ,
pn−1(s) ≡ an−1sn−1 + bn−2sn−2 + an−3sn−3 + bn−4sn−4 +··· ,
pn−2(s) ≡ bn−2sn−2 + cn−3sn−3 + bn−4sn−4 + cn−5sn−5 +··· ,
.
.
.
p0(s) ≡ z0.
Suppose that.an, an−1, bn−2, cn−3,...,z0 namely the elements in the first column of
the Routh array are non-zero. Even if zero exists in the first column of the Routh
array, we can always find a way to vary original polynomial coefficients by arbitrarily
infinitesimal amount to avoid existence of zero in the first column of the Routh
array—Imagine the original polynomial coefficients (.an , an−1,..., a0) as a free point
in an arbitrarily infinitesimal space of.n + 1 dimensions and imagine the condition of
an element in the first column of the Routh array being zero as a constraint of hyper
plane or hyper curved surface which is definitely below .n + 1 dimensions in the
.n + 1 dimensional space. A finite number of hyper planes or hyper curved surfaces
below .n + 1 dimensions in together are still below .n + 1 dimensions. Therefore,
in the arbitrarily infinitesimal space of .n + 1 dimensions we can definitely find a
point of (.an, an−1,..., a0) that avoids all the constraints and hence avoid existence

of zero in the first column of the Routh array—Since polynomials are arbitrary-
order-continuous functions, varying original polynomial coefficients by arbitrarily

infinitesimal amount will cause variation of root locations by arbitrarily infinitesimal
amount and hence will not change distribution of original polynomial roots that are
not located on the imaginary axis. In other words, such variation will neither change
the location of a root from the left-imaginary-axis side to the right-imaginary-axis

side nor vice versa. Therefore, supposing that the elements in the first column of the
Routh array are non-zero will not influence crucial judgements such as whether the
original polynomial belongs to the stability case.
.pn(s) is the original polynomial with order . n, and . pn(s), pn−1(s), pn−2(s), . . .
have decreasing order. Each polynomial since the second row in the sequence is with
one less order than its precedent polynomial and has the iterative relationship with
its precedent polynomial as
. pn−1(s) = an−1sn−1 + an−3sn−3 +···+

an−2 − an
an−1
an−3

sn−2

+
an−4 − an
an−1
an−5

sn−4 +···
= (an−1sn−1 + an−3sn−3 +···)
+ (ansn + an−2sn−2 + an−4sn−4 +···)
− an
an−1
s(an−1sn−1 + an−3sn−3 + an−5sn−5 +···)
= pn(s) − an
an−1
s(an−1sn−1 + an−3sn−3 + an−5sn−5 +···).

Similarly, we have
. pn−2(s) = pn−1(s) − an−1
bn−2
s(bn−2sn−2 + bn−4sn−4 + bn−6sn−6 +···),

pn−3(s) = pn−2(s) − bn−2
cn−3
s(cn−3sn−3 + cn−5sn−5 + cn−7sn−7 +···),

.
.
.

or (distinguishing the case where. k is odd and the case where. k is even)

. pk−1(s) = pk (s) − pprime
k
pprime
k−1
speven
k (s), (if k is odd)

pk−1(s) = pk (s) − pprime
k
pprime
k−1
spodd
k (s), (if k is even)

where .podd(s) and .peven(s) with superscripts odd and even denote the sub-
polynomials of .p(s) with odd orders and even orders respectively. .pprime denotes

the prime coefficient of.p(s), so. pprime

n = an, pprime

n−1 = an−1, pprime

n−2 = bn−2, pprime
n−3 =

cn−3,..., pprime
0 = z0.
For a pure imaginary number.s = wj, we have

. s = wj is a root of pk (s) ⇐⇒ pk (s) = 0 ⇐⇒ podd
k (s) = peven
k (s) = 0

=⇒ pk−1(s) = 0 ⇐⇒ podd
k−1(s) = peven
k−1 (s) = 0

=⇒ pk−2(s) = 0 ⇐⇒ podd
k−2(s) = peven
k−2 (s) = 0

.
.
.
=⇒ p0(s) = 0 ⇐⇒ s = wj is a root of p0(s).
Since .p0(s) ≡ z0 which belongs to the first column of the Routh array is assumed
non-zero and hence has no pure imaginary root, all.pn(s), pn−1(s), . . . , p0(s) have
no pure imaginary root. Consider the curve.CI that starts from the origin.s = 0 and
goes along the imaginary axis to the positive infinity, namely.s = wj with. w varying
from 0 to.+∞. Then.pk (s) = 0 for any.s ∈ CI (where. k is.n, n − 1,...).
For the case where. k is odd, we have
. peven
k−1 (s) = peven
k (s),

podd
k−1(s) = podd
k (s) − pprime
k
pprime
k−1
speven
k (s),

from which we have
. peven
k−1 (0) = peven
k (0), podd
k−1(0) = podd
k (0) hence pk−1(0) = pk (0)

and

. peven
k (s) = peven
k−1 (s) = 0 =⇒ podd
k−1(s) = podd
k (s).

This last statement implies that .pk (s) and .pk−1(s) always cross the same points
on the imaginary axis in the same order as . s traverses the whole curve .CI . Let
.s = w1j, w2j,...,wmj (.0 < w1 < w2 < ··· < wm) on the curve .CI correspond to
all such cross points on the imaginary axis.
Note that neither .pk (s) nor .pk−1(s) crosses the imaginary axis as . s varies in the
intervals .(0j, w1j), (w1j, w2j), ··· , (wmj, +∞j) and consider the phase angles of
.pk (s) and.pk−1(s) as. s traverses the whole curve.CI . Then we have 3
.∠pk (+∞j) − ∠pk−1(+∞j) = ∠pk (s)|
+∞j
wm j + ∠pk (s)|
wm j
wm−1j +···+

∠pk (s)|
w1j
0j + ∠pk (0) − ∠pk−1(s)|
+∞j
wm j − ∠pk−1(s)|
wm j
wm−1j −···−

∠pk−1(s)|
w1j
0j − ∠pk−1(0)
= (∠pk (s)|
+∞j
wm j − ∠pk−1(s)|
+∞j
wm j ) ∈ (−π,π).

For the case where. k is even, we have

. podd
k−1(s) = podd
k (s),

peven
k−1 (s) = peven
k (s) − pprime
k
pprime
k−1
spodd
k (s),

from which we have
. podd
k−1(0) = podd
k (0), peven
k−1 (0) = peven
k (0) hence pk−1(0) = pk (0)

and

. podd
k (s) = podd
k−1(s) = 0 =⇒ peven
k−1 (s) = peven
k (s).

This last statement implies that .pk (s) and .pk−1(s) always cross the same points on
the real axis in the same order as. s traverses the whole curve .CI . Let. s = w1j, w2j,
...,wmj (.0 < w1 < w2 < ··· < wm) on the curve .CI correspond to all such cross
points on the real axis.
Note that neither.pk (s) nor.pk−1(s) crosses the real axis as. s varies in the intervals
.(0j, w1j), (w1j, w2j), . . . , (wmj, +∞j) and consider the phase angles of .pk (s) and
.pk−1(s) as. s traverses the whole curve.CI . Then we have
. ∠pk (+∞j) − ∠pk−1(+∞j) = ∠pk (s)|
+∞j
wm j + ∠pk (s)|
wm j
wm−1j +···+

∠pk (s)|
w1j
0j + ∠pk (0) − ∠pk−1(s)|
+∞j
wm j − ∠pk−1(s)|
wm j
wm−1j −···−

∠pk−1(s)|
w1j
0j − ∠pk−1(0)
= (∠pk (s)|
+∞j
wm j − ∠pk−1(s)|
+∞j
wm j ) ∈ (−π,π).

In summary, .pk−1(0) = pk (0) and .∠pk (+∞j) − ∠pk−1(+∞j) ∈ (−π,π). On
the other hand, we have
. ∠pk (+∞j) − ∠pk−1(+∞j) mod 2π = ∠ pk (+∞j)
pk−1(+∞j)
mod 2π

= ∠ pprime
k sk
pprime
k−1 sk−1
|s=+∞j mod 2π = ∠ pprime
k
pprime
k−1
+ ∠(+∞j) mod 2π

= sign 
pprime
k
pprime
k−1

π
2
mod 2π

and hence

.∠pk (+∞j) − ∠pk−1(+∞j) = sign 
pprime
k
pprime
k−1

π
2

Let .L p(s) and .Rp(s) denote the number of .p(s)’s roots with negative real part
and that with positive real part respectively. Since .pk (s) and .pk−1(s) have no pure
imaginary root,.L pk (s) + Rpk (s) = k and.L pk−1(s) + Rpk−1(s) = k − 1. Note that

. ∠pk (s)|
+∞j
0 j = π
2
(L pk (s) − Rpk (s)),

∠pk−1(s)|
+∞j
0 j = π
2
(L pk−1(s) − Rpk−1(s)),

so we have
. sign 
pprime
k
pprime
k−1

π
2 = ∠pk (+∞j) − ∠pk−1(+∞j) = ∠pk (s)|
+∞j
0 j − ∠pk−1(s)|
+∞j
0 j

= π
2
(L pk (s) − L pk−1(s)) − π
2
(Rpk (s) − Rpk−1(s))

and

.
pprime
k
pprime
k−1
> 0 ⇐⇒ L pk−1(s) = L pk (s) − 1 and Rpk−1(s) = Rpk (s),
pprime
k
pprime
k−1
< 0 ⇐⇒ L pk−1(s) = L pk (s) and Rpk−1(s) = Rpk (s) − 1.
In other words, .pk−1(s) has one less root with negative real part than .pk (s) if and
only if there is no sign change between the prime coefficients of.pk (s) and.pk−1(s),
whereas .pk−1(s) has one less root with positive real part than .pk (s) if and only if
there is sign change between the prime coefficients of.pk (s) and.pk−1(s). Based on
above analysis and the obvious condition that .L p0(s) = Rp0(s) = 0, we can finally
conclude the Routh-Hurwitz criterion. 
According to the proof, a control system’s characteristic polynomial has roots all
with negative real part (namely the control system is stable) if and only if neither
zero nor sign change exists in the first column of its associated Routh array, and has
roots all with positive real part (namely the control system is extremely unstable) if
and only if there is sign change between any two consecutive elements in the first
column of its associated Routh array. 4

Routh-Hurwitz stability criterion: A linear time-invariant control system is
stable if and only if neither zero nor sign change exists in the first column of the
Routh array associated with its characteristic polynomial.
Now we review the characteristic polynomial .C3K (s) described in (4.20) in
Sect. 4.3.1 and take advantage of the Routh-Hurwitz stability criterion to determine
the range of.K for.C3K (s) to have roots all with negative real part. The characteristic
polynomial.C3K (s) is

. C3K (s) = s3 + 3 s2 + 3 K s + 1,

and its associated Routh array is

.
s3 1 3 K
s2 3 1
s1 3 K − 1/3
s0 1

According to the Routh-Hurwitz stability criterion, the necessary and sufficient con-
dition for .C3K (s) to have roots all with negative real part is .3K − 1/3 > 0 namely

.K > 1/9. From this reviewed example, we can easily see enormous convenience
brought by the Routh-Hurwitz stability criterion based method, in contrast with the
method presented in Sect. 4.3.1.

4.3.3 Handling Zeros in the First Column of the Routh Array
We have explained that even if zero exists in the first column of the Routh array,
we can always find a way to vary original characteristic polynomial coefficients
by arbitrarily infinitesimal amount to avoid existence of zero in the first column
of the Routh array, which does not influence crucial judgements. Readers may still
find such idea somewhat abstract and may wonder a concrete way to vary original
characteristic polynomial coefficients.
A concrete way to vary original characteristic polynomial coefficients is simply
based on shifting the Laplace variable . s by an arbitrarily infinitesimal offset . . For
example, consider the characteristic polynomial.C3K (s) described in (4.20) with. K
set to.1/9, as

. C1/3(s) = s3 + 3 s2 + s/3 + 1.

Shift the Laplace variable. s by the offset.  and obtain
. C1/3(s + ) = s3 + (3 + 3)s2 + (1/3 + 6 + 32

)s + 1 + /3 + 32 + 3
.

The Routh array associated with.C1/3(s + ) is

.
s3 1 1/3 + 6 + 32
s2 3 + 3 1 + /3 + 32 + 3
s1 8(7 + 9 + 32)/(9 + 9)
s0 1 + /3 + 32 + 3

As. → 0, the Routh array associated with.C1/3(s + ) becomes

.
s3 1 1/3
s2 3 1
s1 (56/9)
s0 1

If. → 0+, there is no sign change in the first column of the Routh array, so. C1/3(s +
) with . → 0+ has roots all with negative real part. If . → 0−, there are two sign
changes in the first column of the Routh array, so.C1/3(s + ) with. → 0− has two
roots with positive real part. In other words, if we shift the characteristic polynomial
roots to the left by an arbitrarily infinitesimal offset, then the roots will be all with
negative real part. If we shift the characteristic polynomial roots to the right by an
arbitrarily infinitesimal offset, then the characteristic polynomial will have two roots
with positive real part. From these two aspects of analysis, we can infer that the
characteristic polynomial.C1/3(s) has one root with negative real part and two pure
imaginary roots.
For another example, the characteristic polynomial

.(s + 1)
2
(s − 1) = s3 + s2 − s − 1 (4.26)
has two repeated negative real roots.−1 and one positive real root.+1. So the number
of its roots with positive real part is one. Shift the Laplace variable. s by the offset. 
and obtain

. s3 + (1 + 3)s2 + (−1 + 2 + 32

)s − 1 −  + 2 + 3
.
The Routh array associated with the characteristic polynomial is

.
s3 1 −1 + 2 + 32
s2 1 + 3 −1 −  + 2 + 3
s1 82(1 + )/(1 + 3)
s0 −1 −  + 2 + 3

As. → 0, the Routh array becomes

.
s3 1 −1
s2 1 −1
s1 82
s0 −1

No matter for . → 0+ or . → 0−, we always have .82 > 0 and there is exactly
one sign change in the first column of the Routh array. Therefore, the characteristic
polynomial described in (4.26) has one root with positive real part and two roots with
negative real part.
We believe that above two examples are enough for readers to catch the spirit of
shifting the Laplace variable. s by an arbitrarily infinitesimal offset.  to handle zeros
(if existing) in the first column of the Routh array. It is worth noting that no matter
for. → 0+ or. → 0−, we can always find an arbitrarily infinitesimal offset.  such
that no zero exists in the first column of the Routh array—In fact, each element in
the first column of the Routh array is a non-zero fractional polynomial in terms of
. .
5 So the set of.  that incurs existence of zero in the first column of the Routh array
is a countable set, whereas any arbitrarily infinitesimal open set about zero is an
uncountable set and must contain certain .  that does not incur any zero in the first
column of the Routh array.

4.4 Note
In retrospect of Chap. 4, we have clarified the concept of control system stability
which is the first important concern for control purpose, and have presented control
theory on how to analyse control system stability. Other important concerns include
control system accuracy and control system responsiveness, control theory on which
will be presented in Chap. 5.

References
J. Anagnost, C. Desoer. An elementary proof of the routh-hurwitz stability criterion. Circuits Systems
Signal Process, 10(1):101–114, 1991.
J. Bonnans, J. Gilbert, C. Lemarechal, et al. Numerical optimization: theoretical and practical
aspects. Springer Science & Business Media, 2006.


