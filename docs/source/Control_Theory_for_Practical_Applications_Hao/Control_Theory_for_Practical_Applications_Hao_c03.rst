Chapter 3 System Modelling via Laplace Transform
================================================

A control system consists of various physical systems, including at least a process, an
actuator, and a controller. A sensor is also included if feedback control is involved. A
process may further consist of various sub-processes, an actuator may further consist
of various sub-actuators, a sensor may further consist of various sub-sensors, and
a controller may further consist of various sub-controllers. All these sub-processes,

sub-actuators, sub-sensors, and sub-controllers are also physical systems. A fun-
damental part of control theory is system modelling that abstracts mathematical

essence of a control system, including mathematical essence of physical systems
that compose the control system.

3.1 Differential Equations of Physical Systems
For control purpose, we need to study dynamics of a control system. Differential
equations are good mathematical tools for modelling dynamics of physical systems
that compose a control system. For example, translational motion dynamics of an
object is modelled by a differential equation as

.
d2 p
dt 2 = dv
dt = F
m ,

where . p denotes the object position, . v denotes the object velocity, .m denotes

the object mass, and .F denotes the force exerted on the object. Similarly, one-
dimensional rotational motion dynamics of an object is modelled by a differential

equation as

.
d2θ
dt 2 = dω
dt = T
J ,

where. θ denotes the rotating angle of the object around the rotating axis,. ω denotes
the rotating speed, . J denotes the rotating inertia, and .T denotes the torque exerted
on the object around the rotating axis.
Besides mechanical dynamics, electrical and magnetic dynamics can also be
modelled by differential equations. For example, given an electrical inductance . L,
dynamics of how the current. I influences the voltage.U is modelled by a differential
equation as

. U = L
dI
dt
.

Given an electrical capacitance . C, dynamics of how the voltage .U influences the
current. I is modelled by a differential equation as
. I = C
dU
dt .

The relationship between motion of a particle with electrical charge. q in a magnetic
field with magnetic field vector. B and the magnetic force. F on the particle is modelled
by a differential equation as
. q
d p
dt × B

= q(v × B) = F.

From above relationship, the magnetic force on a current-carrying wire is derived as

.
dF
dl = I × B,

where. I is the vector current in the wire and. l is the wire length.
Other physical phenomena such as thermal dynamics can also be modelled by
differential equations. We refrain from giving more examples here because how to
establish differential equations of physical systems is beyond the scope of control
theory in this book. For a comprehensive review of physics fundamentals, a classical
book worth recommendation is The Feynman Lectures on Physics (Feynman, 2004).

Given a control system with proper differential equations established for its com-
posing physical systems and given a specific control method, we can deduce perfor-
mance of the control method by solving differential equations of the control system.

For example, consider the rotating disk speed open-loop control system illustrated

in Fig. 2.3 in Chap. 2, where the process dynamics is modelled by a first-order dif-
ferential equation as

.J
dv
dt
+ bv = T. (3.1)

To solve the differential equation described in (3.1), compute its characteristic equa-
tion namely

. Jα + b = 0

and obtain.α = −b/J . Apply the following function transformation

.v = eαt
u = e− b
J t
u (3.2)

to (3.1) and obtain

.
du
dt = T
J
e
b
J t
,
u = u0 +
 t
0
T
J
e
b
J τ dτ .
Substitute above relationship into (3.2) and obtain
. v = e− b
J t

u0 +
 t
0
T
J
e
b
J τ dτ

= e− b
J t
u0 +
 t
0
T
J
e− b
J (t−τ )
dτ .

Consider the initial condition

. v0 = v(t = 0) = u0,
and finally obtain the differential equation solution as

.v = e− b
J t
v0 +
 t
0
T
J
e− b
J (t−τ )
dτ . (3.3)
Suppose that the controller output torque.T = T0 is constant, and the solution of
. v described in (3.3) is further derived as
.v = T0
b −
T0
b − v0

e− b
J t
. (3.4)

If the initial rotating speed.v0 = 0, then the solution of. v is given as

.v = T0
b − T0
b
e− b
J t
. (3.5)

As.t → ∞ implies.e− b

J t → 0, so by both (3.4) and (3.5) we have
.vs ≡ v(∞) = T0

b , (3.6)

where the subscript “. s” of. v described in (3.6) means the steady state or final value of
. v. To achieve the expected rotating speed. vE, we can set a control law as.T = T0 such
that.T0/b = vE, namely to set.T0 = bvE. If the parameter. b specified in Table 2.1 is
adopted, then above theoretical analysis is exactly consistent with simulation results
presented in Sect. 2.2 in Chap. 2.

The rotating disk speed open-loop control system illustrated in Fig. 2.3 with pro-
cess dynamics modelled by (3.1) is a rather simple application example, so to analyse

it by solving (3.1) directly is not difficult. However, for a much more complicated
control system, to analyse it by solving its associated differential equations directly
is usually tedious and even difficult.
On the other hand, for control systems, we normally do not need to study all
details of their dynamics. Instead, we only need to study details of their dynamics
related to important concerns for control purpose. For example, an important concern
is control system stability that will be introduced in Chap. 4, and other important
concerns include control system accuracy and control system responsiveness that
will be introduced in Chap. 5. For control systems, we have an effective mathematical
tool that is much more convenient than solving control system differential equations
directly. This mathematical tool is the Laplace transform.

3.2 Laplace Transform
3.2.1 Common Laplace Transform Pairs

We review mathematical knowledge on the Laplace transform in this section and
present system modelling via Laplace transform in following sections.
Given a time-domain function. f (t) which satisfies

.
 ∞
0−
| f (t)|e−σt
dt < ∞ (3.7)

for some positive real. σ. The Laplace transform is defined as

.F(s) ≡ L{ f (t)} =  ∞
0−
f (t)e−stdt. (3.8)
In other words, the.s-domain function.F(s) is obtained via Laplace transform of the
original time-domain function. f (t). Equation (3.7) is sufficient for. f (t)to be Laplace
transformable and the.s-domain.Re(s) > σ is a domain of absolute convergence for
the Laplace transform described in (3.8). The inverse Laplace transform from the
.s-domain function.F(s) to the original time-domain function. f (t) is given as



. f (t) ≡ L−1
{F(s)} =
1
2πj
 σ+j∞
σ−j∞
F(s)e+stds. (3.9)
We review the Laplace transform for common functions. In following derivations, the
Laplace variable. s is assumed to be located in the.s-domain of absolute convergence
by default.
(1) Impulse function.δ(t):
. L{δ(t)} =  ∞
0−
δ(t)e−stdt = e−st|t=0 = 1.

(2) Step function.u(t):
. L{u(t)} =  ∞
0−
u(t)e−stdt = −1
s
e−st|
∞
0− = 1
s
.

(3) Power function. t n:
. L{t
n} =  ∞
0−
t
ne−stdt = −1
s
 ∞
0−
t
nde−st

= −t ne−st
s




∞
0−
+
1
s
 ∞
0−
e−stdt
n

= n
s
 ∞
0−
t
n−1
e−stdt = n
s
L{t
n−1
}
(recursive relationship)
= n
s
n − 1
s
L{t
n−2
}=···= n!
sn L{u(t)} = n!
sn+1 .

(4) Exponential function.e−at :
. L{e−at} =  ∞
0−
e−at e−stdt =
 ∞
0−
e−(s+a)t
dt

= − 1
s + a
e−(s+a)t




∞
0−
= 1
s + a
.

(5) Sine function.sin(ωt):
.L{sin(ωt)} =  ∞
0−
sin(ωt)e−stdt = − 1
ω
 ∞
0−
e−std cos(ωt)

= − 1
ω
e−st cos(ωt)




∞
0−
+
1
ω
 ∞
0−
cos(ωt)de−st

= 1
ω − s
ω
 ∞
0−
cos(ωt)e−stdt = 1
ω − s
ω2
 ∞
0−
e−std sin(ωt)

= 1
ω − s
ω2

e−st sin(ωt)




∞
0−
−
 ∞
0−
sin(ωt)de−st

= 1
ω − s2
ω2
 ∞
0−
sin(ωt)e−st dt = 1
ω − s2
ω2 L{sin(ωt)}.
Above derivation leads to an equation in terms of.L{sin(ωt)}, from which. L{sin(ωt)}
is computed as

. L{sin(ωt)} =
1
ω
/

1 +
s2
ω2

= ω
s2 + ω2 .

(6) Cosine function.cos(ωt):
. L{cos(ωt)} =  ∞
0−
cos(ωt)e−stdt = 1
ω
 ∞
0−
e−std sin(ωt)

= 1
ω
e−st sin(ωt)




∞
0−
− 1
ω
 ∞
0−
sin(ωt)de−st

= s
ω
 ∞
0−
sin(ωt)e−stdt = − s
ω2
 ∞
0−
e−std cos(ωt)

= − s
ω2

e−st cos(ωt)




∞
0−
−
 ∞
0−
cos(ωt)de−st

= s
ω2 − s2
ω2
 ∞
0−
cos(ωt)e−stdt = s
ω2 − s2
ω2 L{cos(ωt)}.
Above derivation leads to an equation in terms of.L{cos(ωt)}, from which. L{cos(ωt)}
is computed as

. L{cos(ωt)} =
s
ω2 /

1 +
s2
ω2

= s
s2 + ω2 .
(7) Exponentially-decaying sine function.e−at sin(ωt):
.L{e−at sin(ωt)} =  ∞
0−
e−at sin(ωt)e−stdt =
 ∞
0−
sin(ωt)e−(s+a)t
dt
(via Laplace transform of the sine function)
= ω
(s + a)2 + ω2 .

(8) Exponentially-decaying cosine function.e−at cos(ωt):
. L{e−at cos(ωt)} =  ∞
0−
e−at cos(ωt)e−stdt =
 ∞
0−
cos(ωt)e−(s+a)t
dt
(via Laplace transform of the cosine function)
= s + a
(s + a)2 + ω2 .

(9) Exponentially-decaying generic function.e−at f (t) where.L{ f (t)} = F(s):
. L{e−at f (t)} =  ∞
0−
e−at f (t)e−stdt =
 ∞
0−
f (t)e−(s+a)t
dt = F(s + a).

For example, suppose. f (t) = t n, then
. L{e−at t
n} = n!
(s + a)n+1 .

(10) Differential operator . f (k)
(t) ≡ dk f (t)
dt k :

. L{ f (k)
(t)} =  ∞
0−
dk f (t)
dt k e−stdt =
 ∞
0−
e−std
dk−1 f (t)
dt k−1

= e−st dk−1 f (t)
dt k−1




∞
0−
−
 ∞
0−
dk−1 f (t)
dt k−1 de−st

= − f (k−1)
(0−) + s
 ∞
0−
dk−1 f (t)
dt k−1 e−stdt

= s L{ f (k−1)

(t)} − f (k−1)
(0−)
(recursive relationship)
= s(s L{ f (k−2)

(t)} − f (k−2)

(0−)) − f (k−1)
(0−)

= s2 L{ f (k−2)

(t)} − s f (k−2)

(0−) − f (k−1)
(0−) =···
= sk L{ f (t)} − sk−1 f (0−) −···− s f (k−2)

(0−) − f (k−1)
(0−).

If the initial condition of. f (t) namely.{ f (0−), . . . , f (k−1)

(0−)} is neglected, above
relationship is reduced to the following relationship that highlights the essential
correspondence between the Laplace variable. s and the differential operator.
d
dt :

. L{ f (k)
(t)} = sk L{ f (t)}.

In other words, multiplying the .s-domain function .F(s) by . s once corresponds to
performing the differential operator on the associated time-domain function . f (t)
once. So the Laplace variable. s can be regarded as the differential operator:

. s ⇔
d
dt
.

(11) Integral operator .
 t
−∞ f (t)dt:

. L
 t
−∞
f (t)dt

=
 ∞
0−
 t
−∞
f (τ )dτ

e−stdt = −1
s
 ∞
0−
 t
−∞
f (τ )dτ

de−st

= −1
s

e−st  t
−∞
f (τ )dτ




∞
0−
−
 ∞
0−
e−std
 t
−∞
f (τ )dτ


= 1
s
 0−
−∞
f (t)dt +
1
s
 ∞
0−
f (t)e−stdt

= 1
s
L{ f (t)} +
1
s
 0−
−∞
f (t)dt.
If the historical condition of. f (t) namely.
 0−
−∞ f (t)dt is neglected, above relationship
is reduced to the following relationship that highlights the essential correspondence
between the inverse of the Laplace variable. s and the integral operator.
 t
0− dt:

. L
 t
0−
f (t)dt

= 1
s
L{ f (t)}.

In other words, the inverse of the Laplace variable. s can be regarded as the integral
operator:

.
1
s
⇔
 t
0−
dt.
(12) Convolution operator . f (t) ∗ g(t) ≡  ∞

0− f (τ )g(t − τ )dτ (. f (t) = g(t) = 0 for

.t < 0):
.L
 ∞
0−
f (τ )g(t − τ )dτ


=
 ∞
0−
 ∞
0−
f (τ )g(t − τ )dτ

e−stdt =
 ∞
0−
 ∞
0−
f (τ )g(t − τ )e−stdt

dτ

=
 ∞
0−
 ∞
0−
g(t − τ )e−s(t−τ )
dt

f (τ )e−sτ dτ

=
 ∞
0−
 ∞
0−
g(t)e−stdt

f (τ )e−sτ dτ
(note g(t) = 0 for t < 0)
=
 ∞
0−
g(t)e−stdt
 ∞
0−
f (τ )e−sτ dτ or  ∞
0−
f (τ )e−sτ dτ
 ∞
0−
g(t)e−stdt

= L{g(t)}L{ f (t)} or L{ f (t)}L{g(t)}.

In other words, the.s-domain function associated with the convolution of two time-
domain functions (without history) is the product of the .s-domain functions asso-
ciated with the two time-domain functions. It is worth noting that the convolution

operator may also be defined as.
 ∞
−∞ f (τ )g(t − τ )dτ or.
 t+

0− f (τ )g(t − τ )dτ . How-
ever, with the no history condition. f (t) = g(t) = 0 (for.t < 0) which is commonly-
adopted for practical applications, above three definitions of the convolution operator

have no essential difference.
Above common Laplace transform pairs are summarized in Table 3.1.

3.2.2 Solve Differential Equations via Laplace Transform
The Laplace transform and the inverse Laplace transform are both bijective and are
mutually the inverse mapping of each other. However, we rarely use the inverse
Laplace transform described in (3.9) to directly compute the original time-domain
function . f (t) associated with a .s-domain function .F(s). To compute . f (t) from
.F(s), a more practical way is to decompose .F(s) into partial fractions that belong
to common Laplace transform pairs listed in Table 3.1 and to check Table 3.1 for the
time-domain functions associated with these partial fractions.

We still take the rotating disk speed control system as example and demonstrate
how to use above method to conveniently solve the differential equation described
in (3.1). Perform the Laplace transform on both sides of (3.1) as
. J (sv(s) − v0) + bv(s) = T (s).

We have

.v(s) =T (s) + Jv0
J s + b = 1
J
1
s + b/J
T (s) +
v0
s + b/J (3.10)

(partial fraction decomposition)

and
. v(t) = 1
J
L−1
 1
s + b/J

∗ T (t) + v0L−1
 1
s + b/J


(check Table 3.1)
= 1
J
e− b
J t ∗ T (t) + v0e− b
J t =
 t
0
T (τ )
J
e− b
J (t−τ )
dτ + v0e− b
J t
,
which is the same to the solution described in (3.3). Suppose that the controller output
torque.T = T0 is constant. Then,.T (s) = T0/s. Substitute it into (3.10) and obtain
.v(s) = T0
J
1
s(s + b/J ) +
v0
s + b/J = T0
b
1
s − 1
s + b/J

+
v0
s + b/J (3.11)

(partial fraction decomposition)

and
. v(t) = T0
b

L−1
1
s

− L−1
 1
s + b/J
 + v0L−1
 1
s + b/J


(check Table 3.1)
= T0
b − T0
b
e− b
J t + v0e− b
J t
,
which is the same to the solution described in (3.4).

3.2.3 Partial Fraction Decomposition
From above example of rotating disk speed control we can see effectiveness and
convenience of solving differential equations via Laplace transform, yet readers
may wonder how to do partial fraction decomposition. For an .s-domain function

(usually in fractional-polynomial form), if it is simple, we may do partial fraction
decomposition directly by observation of its form. However, if it is complex and its
partial fraction decomposition is not obvious, then how do we decompose it in a
systematic way?
We take the following fractional-polynomial .s-domain function described in

(3.12) as example to demonstrate a systematic method of partial fraction decom-
position.

.F(s) ≡ N(s)
D(s) = 12 s3 + 38 s2 + 40 s + 15
4 s4 + 16 s3 + 21 s2 + 11 s + 2

. (3.12)
Step 1: Find roots of the .F(s) denominator namely .D(s) which is normally the
characteristic polynomial of a differential equation. Check whether.D(s) contains a
repeated root or multiple root by computing the greatest common divisor of . D(s)
and its derivative.D(s) ≡ dD(s)
ds :

. (D(s), D(s)

) = (4 s4 + 16 s3 + 21 s2 + 11 s + 2, 16 s3 + 48 s2 + 42 s + 11)
(by Euclid method)
= (2 s2 + 3 s + 1, 16 s3 + 48 s2 + 42 s + 11)
= (2 s2 + 3 s + 1, 2 s + 1) = 2 s + 1.

So.D(s) has a repeated root.s = −1/2 and a factor.(2s + 1)2. It is worth noting that
the greatest common divisor obtained in above way is not necessarily a first-order
polynomial. For example, consider.D ̄(s) = (s + 1)2(s + 2)2. Then,. (D ̄(s), D ̄(s)
) =

(s + 1)(s + 2) which is a second-order polynomial.
Divide .D(s) by .(2s + 1)2 and obtain . D1(s) = D(s)/(2s + 1)2 = s2 + 3s + 2
which has no more repeated root. Compute remaining roots of .D1(s), which are
obviously .−1 and .−2 in above example. When a more complicated polynomial is
encountered, we may resort to numerical computation for root finding. After finding
all roots of the denominator.D(s), we can factor it as
. D(s) = 4 s4 + 16 s3 + 21 s2 + 11 s + 2 = 4

s +
1
2
2
(s + 1)(s + 2).

Checking the greatest common divisor.(D(s), D

(s)) is not necessary for finding the
polynomial roots, yet it can considerably enhance computational efficiency when
.D(s) has repeated roots. Even when.D(s) has no repeated root, a preliminary step of
checking the greatest common divisor .(D(s), D

(s)) has almost no computational
cost in comparison with cost of numerical computation for finding polynomial roots.
By the way, the computational cost of finding characteristic polynomial roots should
not be counted only on the method of solving differential equations via Laplace
Transform, because such computational cost is after all inevitable for differential
equation solving.

Step 2: Express the .s-domain function .F(s) as the sum of partial fractions with
coefficients to be determined:
.F(s) = c1
s + 1 + c2
s + 2 + c3
(s + 1/2)2 + c4
s + 1/2
. (3.13)
Step 3: Compute coefficients associated with partial fractions. Compute.c1 as
. c1 = lim
s→−1
(s + 1)F(s) = lim
s→−1
(s + 1)
N(s)
D(s) = lim
s→−1
N(s)
D
(s)

= 12 s3 + 38 s2 + 40 s + 15
16 s3 + 48 s2 + 42 s + 11|s=−1 = 1.

Compute.c2 similarly as
. c2 = lim
s→−2
N(s)
D
(s) = 12 s3 + 38 s2 + 40 s + 15
16 s3 + 48 s2 + 42 s + 11




s=−2
= 1.

Generally for a partial fraction.cα/(s + α) where .−α is a single root (be .−α a real
root or a complex root), compute.cα as
. cα = N(s)
D
(s)




s=−α
.

Compute.c3 as
. c3 = lim s→−1/2

s +
1
2
2
F(s) = lim s→−1/2

12 s3 + 38 s2 + 40 s + 15
4(s2 + 3 s + 2) = 1.

Compute.c4 as
. c4 = lim s→−1/2

s +
1
2
2
F(s)

≡ lim s→−1/2
d
ds

s +
1
2
2
F(s)

= lim s→−1/2
12 s3 + 38 s2 + 40 s + 15
4(s2 + 3 s + 2)

= 1,

or as
.c4 = lim s→−1/2

s +
1
2
 F(s) − c1
s + 1 − c2
s + 2 − c3
(s + 1/2)2


= lim s→−1/2

s +
1
2
  12 s3 + 38 s2 + 40 s + 15
4 s4 + 16 s3 + 21 s2 + 11 s + 2

− 1
s + 1 − 1
s + 2 − 1
(s + 1/2)2


= 1.

Generally for a group of partial fractions associated with the same repeated root. −α
(be.−α a real root or a complex root)
. A(s) = c1
(s + α)m + c2

(s + α)m−1 +···+ cm
s + α.

Compute.ck (.1 ≤ k ≤ m) as
. ck = lim
s→−α
1
(k − 1)!
[(s + α)
m A(s)]
(k−1) ≡ lim
s→−α
1
(k − 1)!
dk−1
dt k−1 [(s + α)
m A(s)],

or recursively as

. c1 = lim
s→−α
(s + α)
m A(s),
A2(s) = A(s) − c1
(s + α)m ,

c2 = lim
s→−α
(s + α)
m−1A2(s),
A3(s) = A2(s) − c2
(s + α)m−1 ,

c3 = lim
s→−α
(s + α)
m−2 A3(s),
.
.
.
Am(s) = Am−1(s) − cm−1
(s + α)2 ,

cm = lim
s→−α
(s + α)Am(s).

In summary, the.s-domain function example described in (3.12) is decomposed as

. F(s) = 1
s + 1 +
1
s + 2 +
1
(s + 1/2)2 +
1
s + 1/2
.

Although only an example of partial fraction decomposition is demonstrated,

above procedures of partial fraction decomposition, especially procedures for com-
puting coefficients of partial fractions, can be easily generalized. It is worth noting

that the general procedures of partial fraction decomposition can be automated in
the spirit of symbolic operation.
3.3 Transfer Function
The Laplace transform is not only useful in the sense that it provides an effective
and convenient methodology to solve differential equations of a control system, but
also useful in the sense that it provides an effective and convenient methodology to

abstract mathematical essence of the control system, especially mathematical essence
related to important concerns for control purpose. In practical applications, we rarely
take advantage of this first utility directly, whereas we normally take advantage of
this second utility to model control systems.
Suppose that the control system’s components are linear time-invariant, namely
they can be modelled by linear time-invariant differential equations. Let a system
component be modelled generically by a differential equation as
. an
dn
dt n y + an−1
dn−1
dt n−1 y +···+ a0 y = bm
dm
dtm r + bm−1
dm−1
dtm−1 r +···+ b0r,
(3.14)
where the differential equation coefficients .an, an−1,..., a0, bm, bm−1,..., b0 are
time-invariant namely constant in terms of time. The component model is illustrated
in Fig. 3.1.
In practical applications, no system component is ideally linear time-invariant, yet
many kinds of system components have proper linear time-invariant approximations
for representative operation ranges. So the linear time-invariant assumption is rather
fair for many practical applications and is widely adopted.
Given a linear time-invariant system component modelled by (3.14), perform the
Laplace transform on both sides of (3.14) (without causing confusion, we abuse the
same notation of a variable to denote both its time-domain function as well as its
.s-domain function). We have

. (ansn + an−1sn−1 +···+ a0)y(s) − A0(s)
= (bmsm + bm−1sm−1 +···+ b0)r(s) − B0(s)

and
. y(s) = bmsm + bm−1sm−1 +···+ b0
ansn + an−1sn−1 +···+ a0
r(s) +

A0(s) − B0(s)
ansn + an−1sn−1 +···+ a0
,
(3.15)
where.A0(s) and.B0(s) are constant polynomials determined by initial conditions of
the output. y and the input. r respectively. The tail term

.
A0(s) − B0(s)
ansn + an−1sn−1 +···+ a0

represents the influence of input and output initial conditions on the output. y.
For a stable control system, 1 any influence of control system initial conditions
will fade away and usually fade away quickly. So for long-term operation, the tail
term described in (3.15) can be discarded and hence (3.15) can be reduced to

. y(s) = bmsm + bm−1sm−1 +···+ b0
ansn + an−1sn−1 +···+ a0
r(s) ⇐⇒

y(s)
r(s) = bmsm + bm−1sm−1 +···+ b0
ansn + an−1sn−1 +···+ a0

, (3.16)

where the constant fractional-polynomial.s-domain function
.G(s) = bmsm + bm−1sm−1 +···+ b0
ansn + an−1sn−1 +···+ a0

(3.17)

characterizes the inherent dynamics property that determines how the input. r influ-
ences the output . y. In other words, in terms of dynamics behaviour, a system com-
ponent modelled by the differential equation described in (3.14) can be essentially

characterized by the constant fractional-polynomial .s-domain function .G(s). Such
an.s-domain function.G(s) described in (3.17) is called the transfer function of the
system component.

3.4 Block Diagram Models

Thanks to the Laplace transform that substitutes easy algebraic equations for com-
paratively difficult differential equations in system modelling, we have an effective

and convenient mathematical tool namely transfer functions to essentially charac-
terize system components of a control system. For example, the rotating disk posi-
tion proportional-derivative feedback control system illustrated in Fig. 2.20 can be

concisely represented by a transfer function block diagram model illustrated in
Fig. 3.2.
The mathematical tool of transfer functions can also facilitate analysis of the
control system on the whole, which involves synthesis of a transfer function block
diagram to form a holistic transfer function block equivalently.

3.4.1 Transfer Function Block Synthesis
All system components described in remaining sections of Chap. 3 are assumed linear
time-invariant by default. For synthesis of two parallel transfer function blocks . G1
and .G2 illustrated in Fig. 3.3, the synthesized transfer function is .G1(s) + G2(s),
which is obtained as
.
y(s)
r(s) = y1(s) + y2(s)
r(s) = y1(s)
r(s) + y2(s)
r(s) = G1(s) + G2(s).
For synthesis of two serial transfer function blocks .G1 and .G2 illustrated in
Fig. 3.4, the synthesized transfer function is.G1(s)G2(s), which is obtained as

y(s)
r(s) = y1(s)
r(s)
y(s)
y1(s) = G1(s)G2(s),

or

.
y(s)
r(s) = y2(s)
r(s)
y(s)
y2(s) = G2(s)G1(s) = G1(s)G2(s),

which implies an interesting property of serial transfer function block synthesis,

namely that the order of the transfer function blocks does not influence the syn-
thesized transfer function block. In other words, if the transfer function blocks are

exchanged in the serial block diagram, the same synthesized transfer function block
will be obtained. This interesting property holds for theoretical analysis, though two

system components normally cannot be exchanged physically in practical applica-
tions.

Above rules for both parallel transfer function block synthesis and serial transfer
function block synthesis are rather intuitive. In contrast, the rule for synthesis of
transfer function blocks in a closed-loop block diagram illustrated in Fig. 3.5 needs
more derivation.
For the closed-loop negative feedback block diagram illustrated in the top half of
Fig. 3.5, we can establish the following equations:
. yf(s) = H(s)y(s),
e(s) = r(s) − yf(s),
y(s) = G(s)e(s).

Substitute the first equation into the second equation and then substitute the result
into the third equation:

. e(s) = r(s) − H(s)y(s),
y(s) = G(s)e(s) = G(s)r(s) − G(s)H(s)y(s),
from which the synthesized transfer function can be derived as

.
y(s)
r(s) = G(s)
1 + G(s)H(s)

. (3.18)
For the closed-loop positive feedback block diagram illustrated in the low half of
Fig. 3.5, we may regard it as the closed-loop negative feedback block diagram with
feedback transfer function.−H(s). From (3.18), the synthesized transfer function for
the closed-loop positive feedback block diagram can be obtained as

.
y(s)
r(s) = G(s)
1 − G(s)H(s)

. (3.19)
Rules for the three basic kinds of transfer function block synthesis namely the
parallel transfer function block synthesis, the serial transfer function block synthesis,
and the closed-loop transfer function block synthesis are summarized in Table 3.2.
The basic rules of transfer function block synthesis summarized in Table 3.2
enable us to synthesize transfer function block diagrams generally, in the spirit of
synthesis equivalence. For example, consider the hybrid transfer function block
diagram illustrated in Fig. 3.6. This transfer function block is hybrid in the sense
that it does not belong to transfer function block diagrams of the three basic kinds
(namely the parallel transfer function block diagram, the serial transfer function block
diagram, and the closed-loop transfer function block diagram) but consists of them.
The hybrid transfer function block diagram illustrated in Fig. 3.6 can be decomposed
into transfer function block diagrams of the three basic kinds.
More specifically, the transfer function blocks.G1 and.G2 form a parallel transfer
function block diagram locally, where the locally-synthesized transfer function is

.G12(s) = G1(s) + G2(s). The transfer function blocks .G3 and .H form a closed-
loop transfer function block diagram locally, where the locally-synthesized transfer

function is

. G3H (s) = G3(s)
1 + G3(s)H(s)
.

The locally-synthesized transfer function blocks.G12 and.G3H further form a serial
transfer function block diagram. Decomposition of the hybrid transfer function block
diagram is illustrated in Fig. 3.7.
Therefore, the synthesized transfer function for the hybrid transfer function block
diagram is computed as
.
y(s)
r(s) = (G1(s) + G2(s))
G3(s)
1 + G3(s)H(s)

We can see how the spirit of synthesis equivalence is reflected in synthesis of the
hybrid transfer function block diagram: The local parallel transfer function block
diagram .G1 and .G2 are replaced by the locally-synthesized transfer function block
.G12 in the spirit of synthesis equivalence. The local closed-loop transfer function
block diagram .G3 and .H are replaced by the locally-synthesized transfer function
block .G3H also in the spirit of synthesis equivalence. Then the final synthesized
transfer function can be easily computed, still in the spirit of synthesis equivalence.
Take a complex transfer function block diagram illustrated in Fig. 3.8 as another

example. This complex transfer function block diagram cannot be simply decom-
posed into transfer function block diagrams of the three basic kinds, because the local

closed-loop transfer function block diagram {.G1,.G2,.H1} and the local closed-loop
transfer function block diagram {.G2,.G3,.H2} are entangled with each other.

Although the complex transfer function block diagram illustrated in Fig. 3.8 can-
not be simply decomposed into transfer function block diagrams of the three basic

kinds, we can transform it into another transfer function block diagram in the spirit

of synthesis equivalence in order that the transformed transfer function block dia-
gram can be simply decomposed into transfer function block diagrams of the three

basic kinds or at least becomes easier for synthesis. We may transform the complex
transfer function block diagram into another synthesis-equivalent transfer function
block diagram illustrated in Fig. 3.9.

By so far, we have only been using the idea of synthesis equivalence implic-
itly without clarifying it explicitly, because examples encountered before the com-

plex transfer function block diagram illustrated in Fig. 3.8 are simple and intuitive
for understanding of synthesis equivalence. However, before we continue with the
complex transfer function block diagram example, we had better clarify this idea
explicitly.

Recall that a linear time-invariant system component’s transfer function is iden-
tified by the ratio between the .s-domain function of its output and that of its input,

with influence of its initial conditions neglected. Readers may notice that we use
the term “identified” instead of the term “defined”. The reason is that the transfer
function of the system component is an essential property inherent to the system
component, regardless of existence of its input and its output. So we cannot use the
term “defined”. On the other hand, its transfer function can be revealed by examining
the relationship between its output and its input, so we use the term “identified”.
Given two system components, whenever they are given the same input, they will
always have the same output. In other words, the two system components always
have the same output-input relationship, and hence can be identified as mutually

synthesis-equivalent. Based on such understanding, the idea of synthesis equiva-
lence is explicitly clarified as follows.

Synthesis equivalence: System components have synthesis equivalence, namely
they are mutually synthesis-equivalent, if they always have the same output-input
relationship.
Given an original transfer function block diagram and a transformed version of it,
if they have synthesis equivalence, then we can substitute the transformed transfer
function block diagram for the original transfer function block diagram. To check
whether they have synthesis equivalence, we can check whether they have the same
output-input relationship.
Input to the two transfer function block diagrams is independent of them and can
be arbitrary. The key point of synthesis equivalence checking is to check whether
the transform from the original transfer function block diagram to the transformed
diagram never changes output of the original diagram given arbitrary input. Note that
the final output of a transfer function block diagram is potentially influenced only by
output of its composing blocks. So if the transform never changes any output of the
involved composing blocks, then the transform will never change the final diagram
output and the two transfer function block diagrams before and after the transform
will always have the same output-input relationship.
Based on above analysis, we can verify whether the transformed transfer function

block diagram illustrated in Fig. 3.9 and that illustrated in Fig. 3.8 actually have syn-
thesis equivalence. We can see that the transform illustrated in Fig. 3.9 only involves

the original.H1 block as it only changes how the original.H1 block input is obtained.
After the transform, the transfer function of the original.H1 block becomes.H1/G3.
Compute the output of the transformed .H1 block namely the .H1/G3 block in the
transformed diagram as

. r1T (s) = H1(s)
G3(s)
y(s) = H1(s)
G3(s)
(G3(s)y2(s)) = H1(s)y2(s) = r1O (s),
where the subscripts. T and.O of.r1 correspond to the transformed.H1 block and the
original .H1 block respectively. The derivation always holds regardless of diagram
input . r and hence implies the transform illustrated in Fig. 3.9 never changes the
output of the involved composing block namely the .H1 block. So we can conclude
that the two transfer function block diagrams illustrated in Figs. 3.8 and 3.9 do have
synthesis equivalence.
Therefore, the original transfer function block diagram has a transformed version
of synthesis equivalence, which can be simply decomposed into transfer function
block diagrams of the three basic kinds, as illustrated in Fig. 3.10.
The transfer function blocks .G2 and .G3 form a serial transfer function block

diagram which together with the transfer function block .H2 further form a closed-
loop transfer function block diagram .G23H locally, where the locally-synthesized

transfer function is

. G23H (s) = G2(s)G3(s)
1 + G2(s)G3(s)H2(s)
.

Then the locally-synthesized transfer function block.G23H and the transfer function
block .G1 form a serial transfer function block diagram which together with the
transfer function block .H1/G3 further form a closed-loop transfer function block
diagram locally. So the transfer function for the whole transfer function block diagram
is obtained as

y(s)
r(s) = G1(s)G23H (s)
1 + G1(s)G23H (s) H1(s)
G3(s)
= G1(s)G2(s)G3(s)
1 + G1(s)G2(s)H1(s) + G2(s)G3(s)H2(s)
.
Synthesis of the complex transfer function block diagram illustrated in Fig. 3.8 is
accomplished finally. It is worth noting that “complex” here only means that the
transfer function block diagram illustrated in Fig. 3.8 is comparatively complex with
respect to previous examples and cannot be simply decomposed into transfer function

block diagrams of the three basic kinds. Transfer function block diagrams encoun-
tered in practical applications can be much more complex than that illustrated in

Fig. 3.8. Therefore, we intend by no means to emphasize the so-called complex-
ity of the transfer function block diagram illustrated in Fig. 3.8, but only intend to

demonstrate by this suitable example how to flexibly apply the basic rules of transfer
function block synthesis in the spirit of synthesis equivalence.
Above demonstrated method of transforming a complex transfer function block

diagram gradually into easier and easier transfer function block diagrams for syn-
thesis is called the transfer function block diagram reduction method.

3.4.2 Mason Signal-Flow Gain Formula
For synthesis of a transfer function block diagram, especially when the diagram has
complicated and entangled closed-loops, we can also resort to the Mason signal-flow
gain formula (Mason 1956) besides the transfer function block diagram reduction
method. Before formal presentation of the Mason signal-flow gain formula, we need
to introduce a number of basic concepts.

• Signal-flow graph: A transfer function block diagram can be treated as a signal-
flow graph, where each block’s input and output are treated as nodes and each

block itself is treated as a directed edge weighted by its transfer function. For
example, the transfer function block diagram illustrated in Fig. 3.8 can be treated
as a signal-flow graph, with . r, . r1, . e1, . y1, . r2, . e2, . y2, and . y treated as graph nodes.
The transfer functions.G1,.G2,.G3,.H1, and.H2 are treated as directed edges from
the node .e1 to the node . y1, from the node .e2 to the node . y2, from the node . y2
to the node . y, from the node .y2 to the node . r1, and from the node . y to the node
.r2 respectively. The directed edges are weighted by their corresponding transfer
functions. The nodes . r and .r1 point together to the node .e1 with the signal-flow
relationship.e1 = r − r1. Similarly, the nodes.y1 and.r2 point together to the node
.e2 with the signal-flow relationship.e2 = y1 − r2.
• Gain: The gain of a path or a closed-loop is the product of all transfer functions on
the path or the closed-loop (with the positive or negative sign taken into account).
For example, each directed edge is a simple path whose gain is its corresponding
transfer function or a signed unit. The gain of the path.e1 y1e2 y2, namely the path
from the node.e1 to the node.y2 through intermediate nodes.y1 and. e2, is.G1G2. The
gain of the path.re1 y1e2 y2 y is.G1G2G3. The gain of the closed-loop.e1 y1e2 y2r1e1

or simply .G1G2H1 is .−G1G2H1 (with the negative sign because .r1 serves as
negative feedback to. e1). The gain of the closed-loop.G2G3H2 is.−G2G3H2.
• Determinant: The determinant of a signal-flow graph.G is
.G(s) = 1 −
Li∈LG
Li +
Li,L j∈LG
non-touching
Li L j −
Li,L j,Lk∈LG
non-touching
Li L j Lk (3.20)

+ (−1)
m
Li1 ,Li2 ,...,Lim ∈LG
non-touching

Li1 Li2 ··· Lim + ··· ,

where.LG denotes the set of all closed-loops in. G as well as their signed closed-loop
gains. The second sum involves all pairs of non-touching closed-loops in . G, the
third sum involves all triplets of non-touching closed-loops in. G, and so on. Still
taking the transfer function block diagram illustrated in Fig. 3.8 as example, there
are totally two closed-loops .G1G2H1 and .G2G3H2 whose gains are . −G1G2H1
and .−G2G3H2 respectively. For the determinant of this signal-flow graph, the
first sum is .−G1G2H1 − G2G3H2, the second sum is zero because these two
closed-loops are touching at nodes.e2 and.y2 and there is no pair of non-touching
closed-loops, and sums after the second sum are all zero because there are no more
than two closed-loops and of course no more than two non-touching closed-loops.
Therefore, the determinant of the signal-flow graph is.1 + G1G2H1 + G2G3H2.
After introduction of above basic concepts, the Mason signal-flow gain formula
can be presented as
.Tr,y
(s) =

P∈Pr,y
G P(s)G/P (s)
G(s) , (3.21)
where .Tr,y denotes the transfer function from the diagram input . r to the diagram
output . y and .Pr,y

G denotes all possible open-loop paths from . r to . y in the graph . G.
.G/P denotes the imagined subgraph of .G obtained by removing the closed-loops

that touch the path. P. Such removal does not mean that edges or nodes of the closed-
loops touching the path .P are actually removed from the graph . G, but mean that

these closed-loops are no longer treated as closed-loops in computation of the graph
determinant via (3.20). This is why we call.G/P an “imagined” subgraph of. G.
It is worth noting that the Mason signal-flow gain formula described in (3.21)
is generic for any pair of nodes in the signal-flow graph. In other words, we can
replace the diagram input-output pair (. r, . y) by any two other nodes and the Mason
signal-flow gain formula described in (3.21) still holds. A simple proof of the Mason
signal-flow gain formula via mathematical induction is given below.
Proof It can be easily verified that the Mason signal-flow gain formula described in
(3.21) holds for transfer function block diagrams without close-loop. We omit such
trivial verification here and leave it to readers.

For a generic transfer function block diagram. G, suppose that the Mason signal-
flow gain formula described in (3.21) holds for all subgraphs of . G. We intend to

prove that the Mason signal-flow gain formula also holds for . G. Suppose that the
diagram input . r passes a number of open-loop subgraphs .{G1, G2,..., Gm} that
connect into a closed-loop subgraph.GL to give the diagram output. y, as illustrated
in Fig. 3.11.
Since all closed-loops (if existing) are contained in the subgraph .GL, . G(s) =

GL (s) and .G/P (s) = GL/P (s) for any path . P. Apply the assumption of mathe-
matical induction to the closed-loop subgraph.GL for pairs (.yk , y) (.k ∈ {1,..., m})

and obtain
. T yk ,y
(s) =

P∈Pyk ,y
GL
P(s)GL/P (s)
GL (s) =

P∈Pyk ,y
G P(s)G/P (s)
G(s) .

So
. Tr,y
(s) =
m
k=1
Gk (s)

P∈Pyk ,y
G P(s)G/P (s)
G(s) =

P∈Pr,y
G P(s)G/P (s)
G(s) ,
which implies that the Mason signal-flow gain formula described in (3.21) also holds
for. G.
Above derivation is valid except for the special case where the diagram input
. r enters a closed-loop subgraph without passing any open-loop subgraphs. In other
words, except for the special case where the transfer function block diagram. G forms
a holistic closed-loop graph illustrated in Fig. 3.12.
Note that.e = r − T e,r1 e, so we have
.
e(s)
r(s) = 1
1 + T e,r1 (s)
.

Apply the assumption of mathematical induction to the subgraph.GS for pairs (.e,r1)
and (.e, y) and obtain

. T e,r1 (s) =

P∈Pe,r1 GS
P(s)GS/P (s)
GS (s) ,

T e,y
(s) =

P∈Pe,y
GS
P(s)GS/P (s)
GS (s) .

So

. Tr,y
(s) = T e,y
(s)
e(s)
r(s) = T e,y
(s)
1
1 + T e,r1 (s)

=

P∈Pe,y
GS
P(s)GS/P (s)

GS (s) + 
P∈Pe,r1 GS
P(s)GS/P (s)

. (3.22)

Each path.P ∈ Pe,y

GS corresponds to a unique path.(r, P) ∈ Pr,y

G and vice versa. Each

pair of paths.P ∈ Pe,y

GS and.(r, P) ∈ Pr,y

G have the same path gain.P(s). Besides, each

closed-loop non-touching the path.P ∈ Pe,y

GS in.GS is also a closed-loop non-touching

the path.(r, P) ∈ Pr,y

G in. G and vice versa, which implies.GS/P (s) = G/(r,P)(s). So
.
P∈Pe,y
GS
P(s)GS/P (s) =
P∈Pr,y
G
P(s)G/P (s). (3.23)

Each path .P ∈ Pe,r1

GS corresponds to a unique closed-loop .L(e,P,r1,e) ∈ G with the
associated closed-loop gain .L(e,P,r1,e) = −P(s) and vice versa. Since closed-loops
in.GS are closed-loops in.G without passing. r1, we have
.GS (s) +
P∈Pe,r1 GS
P(s)GS/P (s) =
∞
m=0
(−1)
m
Li1 ,...,Lim ∈LGS
non-touching
Li1 ··· Lim

+
L(e,P,r1,e)∈G
(−L(e,P,r1,e))
∞
m=0
(−1)
m
Li1 ,...,Lim ∈LGS/P
non-touching
Li1 ··· Lim

=
∞
m=0
(−1)
m
Li1 ,...,Lim ∈LGS
non-touching
Li1 ··· Lim

(traverse non-touching closed-loops in G without passing r1)
+
∞
m=0
(−1)
m+1
L(e,P,r1 ,e)∈G
Li1 ,...,Lim ∈LGS /P
non-touching
L(e,P,r1,e)Li1 ··· Lim

(traverse non-touching closed-loops in G with one passing r1)
=
∞
m=0
(−1)
m
Li1 ,...,Lim ∈LG
non-touching
Li1 ··· Lim

= G (s). (3.24)

(traverse non-touching closed-loops in G)
Note that each combination of non-touching closed-loops in.GS is also a combination
of non-touching closed-loops in.G without passing.r1 and vice versa. Also note that
each combination of non-touching closed-loops formed by selecting a closed-loop
passing .r1 and selecting the others from .GS is also a combination of non-touching
closed-loops in.G with one (and at most one) passing. r1 and vice versa. Then readers
can easily understand derivation of (3.24). Substitute (3.23) and (3.24) into (3.22)
and obtain

. Tr,y
(s) =

P∈Pr,y
G P(s)G/P (s)
G(s) .

So the Mason signal-flow gain formula described in (3.21) also holds for the special
case of. G. Therefore, based on all above analysis, we can conclude via mathematical
induction that the Mason signal-flow gain formula described in (3.21) holds generally
for transfer function block diagrams. 
We now return to the transfer function block diagram illustrated in Fig. 3.8 and
apply the Mason signal-flow gain formula described in (3.21) to synthesize it. There
is only one open-loop path from the diagram input. r to the diagram output. y, namely

the path.P1 ≡ re1 y1e2 y2 y with the path gain.G1G2G3. There is no closed-loop non-
touching.P1, so.G/P1 (s) = 1. We have already known that. G(s) = 1 + G1G2H1 +

G2G3H2 (see previous introduction of signal-flow graph determinant). According
to the Mason signal-flow gain formula described in (3.21), the synthesized transfer
function is computed as
.Tr,y
(s) = G1(s)G2(s)G3(s)
1 + G1(s)G2(s)H1(s) + G2(s)G3(s)H2(s)

which is consistent with the synthesized transfer function obtained by the transfer
function block diagram reduction method presented in Sect. 3.4.1.

3.5 Note
In retrospect of Chap. 3, we have presented fundamentals of system modelling via
Laplace transform in forms of transfer functions and transfer function block diagrams.
Based on these fundamentals of control theory, we will present how to analyse and
design control systems in Chaps. 4 and 5.

References
R. Feynman. The Feynman lectures on physics (commemorative issue). Pearson Education, 2004.
S. Mason. Feedback theory-further properties of signal flow graphs. Proceedings of the IRE,
44(7):920–926, 1956.


