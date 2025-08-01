Chapter 2 Feedback Control
==========================

In Chap. 1, we have mentioned that closed-loop feedback control systems play a
much more important role than open-loop control systems in control science and

engineering. We have also presented a variety of representative examples of closed-
loop feedback control systems. Questions arise naturally: why cannot we simply

use open-loop control systems? Why is feedback control so important to control
systems? What are basic utilities of feedback control? In this chapter, we gradually
clarify answers to these questions.

2.1 Open-Loop Control
Taking rotating disk speed control as example, mathematical essence of the involved
components is illustrated in Fig. 1.17. For the moment, consider only the open-loop
control part namely the process, the actuator, and the controller without the sensor
feedback loop, as illustrated in Fig. 2.1.
The process dynamics of how the process input namely the torque. T influences the
process output namely the rotating speed . v is described by a first-order differential
equation:

. J
dv
dt
+ bv = T,

or

.
J
b
dv
dt
+ v = 1
b
T, (2.1)
where .J denotes the inertia of the rotating disk load, and . b denotes the friction
coefficient.

The actuator dynamics of how the control command namely the voltage.U influ-
ences the actuator output namely the torque. T is described by a first-order differential

equation together with a proportional equation:

. L
dI
dt
+ R I = U,
T = Tm I.

Above two equations can be combined into one single first-order differential equa-
tion as

.
L
R
dT
dt
+ T = Tm
R
U, (2.2)

where. R denotes the motor armature resistance,. L denotes the motor armature induc-
tance, and.Tm denotes the motor torque constant. An example of rotating disk speed

control system parameters. J ,. b,. R,. L, and.Tm is given in Table 2.1.
We assume that readers are familiar with fundamental physics. So for expression
conciseness throughout this book, we omit variable physical units which can be easily
completed according to fundamental physics knowledge. For example, parameters
in Table 2.1 can be easily completed with physical units, as listed in Table 2.2.

Since.L/R  J/b usually holds in practical applications, we neglect.L/R. Here,
we do not explain why we can fairly neglect.L/R if.L/R  J/b. First, readers may
naturally understand the reason as they acquire more knowledge of control theory
from this book. Second, negligence of the trivial factor .L/R has no influence on
clarifying knowledge points of this chapter.
Once .L/R is neglected, mathematical description of the actuator dynamics is
simplified into a bijective mapping between.U and. T as
. T = Tm
R
U

and hence can be incorporated into the controller as a unified controller-actuator, as
illustrated in Fig. 2.2.
Mathematical essence of the unified controller-actuator is the mapping between
its input .vE and its output . T , namely .T = F(vE). Whenever we have defined the

unified controller-actuator mapping.T = F(vE), we can uniquely determine the cor-
responding original controller mapping.U = f (vE) by setting

. f (vE) = R
Tm
F(vE).

Vice versa, whenever we have defined the original controller mapping.U = f (vE), we
can also uniquely determine the corresponding unified controller-actuator mapping
.T = F(vE) by setting

. F(vE) = Tm
R f (vE).

Therefore, if we regard the unified controller-actuator as a controller in general
sense, then the rotating disk speed open-loop control system illustrated in Fig. 2.1 is
transformed into a simplified mathematical equivalence, as illustrated in Fig. 2.3.

2.2 Control System Simulation
Consider a task of rotating disk speed control: Design a control method namely
a controller mapping .T = F(vE) such that the expected rotating speed .vE can be
achieved. For example, given rotating disk speed control system parameters . J and
. b specified in Table 2.1, suppose the expected rotating speed.vE = 1. How to design
the control method.T = F(vE)?
Readers may have no idea of answering above question. For the moment, instead
of just putting forward a qualified control method abruptly, we resort to simulation
for readers to acquire more intuitive understanding of the control problem. Simulation
of a control system is a set of synthetic experiments that are realized via numerical
computation according to mathematical essence of the control system. We can use
simulation to test tentative control methods for observation and analysis. Matlab code
for simulation of rotating disk speed control is given as follows.

We suggest that readers try above Matlab simulation code 1 to acquire intuitive
understanding of rotating disk speed control. For example, set the control method
as .T = 1. The simulation result is demonstrated in Fig. 2.4, where the horizontal
axis represents the simulation time span and the vertical axis represents the rotating
speed during simulation.
As demonstrated in Fig. 2.4, when the control method .T = 1 is adopted, the
rotating speed rises steadily until arriving at a stable value .v(∞) = 0.2. This is
not the expected rotating speed .vE = 1. We may try another control method . T = 2
and the simulation result is demonstrated in Fig. 2.5. When the control method
.T = 2 is adopted, the rotating speed rises steadily until arriving at another stable
value.v(∞) = 0.4. Unfortunately, this is still not the expected rotating speed.vE = 1.

Although above two tentative control methods cannot achieve the expected rotat-
ing speed.vE = 1, the simulation experiments convey some regularity about perfor-
mance of the control methods. It seems that the stable rotating speed achieved by

a control method is proportional to the control law namely the controller output
. T . So we may try one more control method .T = 5 such that .vE/T equals the ratio
.0.4/2 = 0.2/1. The simulation result is demonstrated in Fig. 2.6.
When the control method .T = 5 is adopted, the rotating speed rises steadily
and converges to a stable value .v(∞) = 1 which is exactly the expected rotating
speed.vE = 1. Therefore, we have designed a control method.T = 5 that can achieve

the expected rotating speed .vE = 1. Besides, given any arbitrary expected rotating
speed. vE, we can set the control method as.T = 5vE to achieve the expected rotating
speed. vE.

2.3 Feedback Control: First Utility
Simulation experiments presented in Sect. 2.2 may give us an illusion that open-loop
control is effective enough for practical applications. If readers do have such illusion,
then we may consider a more challenging task of rotating disk speed control: Given
a rotating disk speed control system with uncertainty, design a control method such
that the expected rotating speed .vE can be achieved.

2.3.1 Control System with Uncertainty
In Sect. 2.2, the rotating disk speed control system is completely certain. In other
words, all configurations or parameters of the rotating disk speed control system are

known. However, in practical applications, a rotating disk speed control system usu-
ally faces unknown torque disturbance. For example, an elevator may take more or

less people in different rounds of operation. The undetermined total people weight
has an influence on the elevator actuator motor like unknown torque disturbance
does. Taking the speed driving-assistance module of a vehicle as another example,
the vehicle may ascend or descend a slope, which incurs unknown torque disturbance

to the speed driving-assistance module during vehicle driving. Unknown torque dis-
turbance is a typical aspect of uncertainty inevitable to a rotating disk speed control

system in practical applications.
A rotating disk speed control system with uncertainty caused by unknown torque
disturbance is illustrated in Fig. 2.7. The process dynamics is no longer influenced
by the controller output torque. T only, but influenced by the difference between the
controller output torque. T and unknown torque disturbance. Td.

As in Sect. 2.2, we can use simulation to test tentative control methods for observa-
tion and analysis. Rotating disk speed control system parameters. J and. b specified in

Above Matlab simulation code is a little different from the previous Matlab sim-
ulation code presented in Sect. 2.2. Different code lines are highlighted in bold font

in the Matlab simulation code. Most part of the Matlab simulation code is the same
to that presented in Sect. 2.2. The little code difference only involves a newly-added
variable.Td that denotes unknown torque disturbance.
In above Matlab simulation code, setting.Td randomly is to simulate changeable
torque disturbance that cannot be known a priori for the control system. Therefore,
in simulation, we must refrain from using the value of.Td in the control law of. T . It
is worth noting that setting.Td randomly according to uniform distribution does not
imply that unknown torque disturbance in practical applications always appears as a
random variable that follows uniform distribution. In simulation, we can fairly set. Td
randomly according to other kinds of distribution. Here, the key point of simulation
is to set.Td randomly to imply that.Td cannot be known a priori and cannot be used
in the control law of. T .
The control law of .T is intentionally left blank in the Matlab simulation code.
We suggest that readers try the Matlab simulation code and try to design a control
method such that the expected rotating speed.vE can be achieved even under influence
of unknown torque disturbance. Td.

2.3.2 Debut of Feedback Control
After a number of simulation trials, readers would find that the task of rotating disk

speed control with unknown torque disturbance presented in Sect. 2.3 is more chal-
lenging than the task of rotating disk speed control without torque disturbance pre-
sented in Sect. 2.2. The challenge comes from the torque disturbance that is unknown

a priori and cannot be used in the control law of . T . Otherwise, if torque distur-
bance .Td could be known in advance, we would easily design a control method as

.T = 5vE + Td which achieves the expected rotating speed . vE. Unfortunately, such
utopian control method normally cannot be realized in practical applications.
How to design a control method that suppresses torque disturbance regardless of
concrete values of torque disturbance? For this purpose, we can resort to feedback
control. In Chap. 1, we have briefly introduced an intuitive idea of feedback control:
when the rotating speed is lower than the expected rotating speed, the controller
increases its output torque . T . When the rotating speed is higher than the expected

rotating speed, the controller decreases its output torque. T . We instantiate this intu-
itive idea as the following extreme feedback control method:

.T =

Tmax e > 0
−Tmax e < 0 , (2.3)
where .e = vE − v is feedback error. In other words, when the rotating speed is
lower than the expected rotating speed, the controller sets its output torque. T to the
maximum allowable positive value .Tmax to increase the rotating speed as quickly
as possible. When the rotating speed is higher than the expected rotating speed, the
controller sets its output torque .T to the minimum allowable negative value . −Tmax
to decrease the rotating speed as quickly as possible. Such intuitive feedback control
is illustrated in Fig. 2.8.
Matlab code for simulation of rotating disk speed intuitive feedback control with
unknown torque disturbance is given as follows.

The simulation result is demonstrated in Fig. 2.9, where the horizontal axis rep-
resents the simulation time span and the vertical axis represents the rotating speed

during simulation. The expected rotating speed .vE = 1 is achieved by the intuitive
feedback control method.
We suggest that readers try above Matlab simulation code for multiple rounds.
In each round of simulation, a different value of torque disturbance .Td is generated
randomly. On the other hand, readers will find that simulation results are almost
the same to that demonstrated in Fig. 2.9, regardless of concrete values of torque

disturbance.Td in different rounds of simulation. This implies that the intuitive feed-
back control method can always achieve the expected rotating speed. vE, even under

influence of unknown torque disturbance. Td.
In practical applications, the intuitive feedback control method, which switches
frequently and abruptly between two extreme controller output torques .Tmax and

.−Tmax, may be too severe and harmful to the control system. To facilitate under-
standing of the harm, imagine how harmful it is to a television if we turn on and turn

off the television frequently. We can adapt the intuitive feedback control method to
a proportional feedback control form constrained by controller output torque limits
.[−Tmax, Tmax], as described in (2.4) and illustrated in Fig. 2.10. A large proportional
coefficient.P is usually used.

.T =
⎧
⎪⎨
⎪⎩
Tmax e > Tmax/P
Pe −Tmax/P  e  Tmax/P
−Tmax e < −Tmax/P

(2.4)

The adapted intuitive feedback control method namely the proportional feedback
control method described in (2.4) resembles the original intuitive feedback control
method described in (2.3), as demonstrated in Fig. 2.11.
The slight difference between the two intuitive feedback control methods exists
only about.e = 0. The controller output torque. T associated with the original intuitive
feedback control method described in (2.3) switches abruptly from .−Tmax to . Tmax
at .e = 0, whereas the controller output torque .T associated with the proportional
feedback control method described in (2.4) switches continuously from .−Tmax to

.Tmax about.e = 0. Such continuity of the control law enables the proportional feed-
back control method described in (2.4) to have smoother control performance than

the original intuitive feedback control method described in (2.3). Matlab code for
simulation of rotating disk speed proportional feedback control with unknown torque
disturbance is given as follows.

The simulation result is demonstrated in Fig. 2.12. The expected rotating speed
.vE = 1 is achieved by the proportional feedback control method—It is worth noting
that the expected rotating speed is not exactly achieved by the proportional feedback
control method, but achieved with steady error. If a large proportional coefficient
.P is used, the steady error will be small and even negligible. For the moment, we
neglect steady error associated with the proportional feedback control method and
skip theoretical analysis of why such steady error exists.
As demonstrated in Figs. 2.9 and 2.12, the original intuitive feedback control

method and the proportional feedback control method (with large proportional coef-
ficient) seem to have the same performance. However, the two intuitive feedback

control methods have performance differences that become visible when we zoom

into figure details, as demonstrated in Fig. 2.13. The proportional feedback con-
trol method has apparently smoother control performance than the original intuitive

feedback control method.
The simulation experiments demonstrate that both the original intuitive feedback
control method described in (2.3) and the adapted intuitive feedback control method
namely the proportional feedback control method described in (2.4) can achieve the
expected rotating speed. vE, even under influence of unknown torque disturbance. Td.

2.3.3 Feedback Control’s Ability in Handling Uncertainty
Besides adding unknown torque disturbance which is one aspect of uncertainty, we
can add more aspects of uncertainty into the rotating disk speed control system
in simulation to evaluate feedback control’s ability in handling various aspects of

uncertainty. For example, we can set the rotating disk load inertia . J and the fric-
tion coefficient . b randomly within certain reasonable ranges. This is to simulate

uncertainty of control system parameters that are not well identified or calibrated in
practical applications. Matlab code for simulation of rotating disk speed proportional
feedback control with various aspects of uncertainty is given as follows.

The simulation result is demonstrated in Fig. 2.14, where the horizontal axis rep-
resents the simulation time span and the vertical axis represents the rotating speed

during simulation. The expected rotating speed .vE = 1 is achieved by the propor-
tional feedback control method.

We suggest that readers try above Matlab simulation code for multiple rounds.
In each round of simulation, a different value of torque disturbance . Td, a different
value of rotating disk load inertia. J , and a different value of friction coefficient. b are
generated randomly. On the other hand, readers will find that simulation results are

similar to that demonstrated in Fig. 2.14. The expected rotating speed .vE is always
achieved by the proportional feedback control method, regardless of concrete values
of these unknown parameters in different rounds of simulation.
With all simulation experiments presented in Sect. 2.3, we have no intention to

focus only on how we apply feedback control to a concrete control task namely rotat-
ing disk speed control. Instead, we intend to use this concrete application example

to highlight an important utility of feedback control, namely that feedback control
enables a control system even with uncertainty to guarantee control accuracy (in
terms of achieving certain expected process output).
Feedback control utility I: Feedback control enables a control system even
with uncertainty to guarantee control accuracy.

2.4 Feedback Control: Second Utility

For a control system with uncertainty, the advantage of feedback control over open-
loop control is obvious, as demonstrated previously in Sect. 2.3. On the other hand,

for a control system without uncertainty, can feedback control still outperform open-
loop control?

Consider the same task of rotating disk speed control presented in Sect. 2.2. Rotat-
ing disk speed control system parameters .J and . b specified in Table 2.1 are still

adopted. Suppose that there is no torque disturbance . Td, no uncertainty about the
rotating disk load inertia . J and the friction coefficient . b, and no other aspects of
uncertainty. In one word, suppose that the rotating disk speed control system is
completely known.
Both the open-loop control method described in Sect. 2.2 and the proportional
feedback control method (or the original intuitive feedback control method) described
in Sect. 2.3 can accomplish the control task of achieving the expected rotating speed

.vE = 1. However, this does not imply that the proportional feedback control method
and the open-loop control method have the same performance. Matlab simulation
code for performance comparison between the proportional feedback control method
and the open-loop control method is given as follows.


Simulation results associated with the proportional feedback control method and
the open-loop control method are demonstrated together in Fig. 2.15 for comparison.
Although both control methods can achieve the expected rotating speed.vE = 1, the
proportional feedback control method achieves the expected rotating speed much
more quickly than the open-loop control method. In other words, the proportional
feedback control method is much more responsive than the open-loop control method.
By the way, if the original intuitive feedback control method instead of its adapted

version namely the proportional feedback control method is applied in above simu-
lation, simulation results will be almost the same to those demonstrated in Fig. 2.15.

The original intuitive feedback control method is also much more responsive than
the open-loop control method.
As already mentioned in Sect. 2.3, we have no intention to focus only on how we

apply feedback control to the concrete task of rotating disk speed control. By perfor-
mance comparison associated with this concrete application example, we intend to

highlight another important utility of feedback control, namely that feedback control
enables a control system to enhance control responsiveness.
Feedback control utility II: Feedback control enables a control system to
enhance control responsiveness.

2.5 Limitations of Intuitive Feedback Control

Simulation experiments presented in Sects. 2.3 and 2.4 may give readers an illu-
sionary confidence that we have found an omnipotent strategy of feedback control,

namely the intuitive feedback control methods, which would accomplish any poten-
tial control task. If readers do have such illusionary confidence, we may consider

another control task closely related to rotating disk speed control, namely the task of

rotating disk position control: Given a rotating disk position control system, design
a control method such that the expected rotating position can be achieved.

Similar to the simplified mathematical equivalence of a rotating disk speed open-
loop control system illustrated in Fig. 2.3, the simplified mathematical equivalence of

a rotating disk position open-loop control system is illustrated in Fig. 2.16. Note that
the rotating speed is the first-order derivative of the rotating position, i.e..v = d p/dt.
Substitute this relationship into the process dynamics illustrated in Fig. 2.3 and hence
obtain the rotating disk position open-loop control system illustrated in Fig. 2.16.
For the moment, we neglect any control system uncertainty and suppose that
the rotating disk position control system is completely known. To accomplish the
task of achieving the expected rotating position.pE, we resort to the adapted intuitive
feedback control method namely the proportional feedback control method described
in (2.5) and illustrated in Fig. 2.17 (where.e = pE − p is feedback error):

.T =
⎧
⎪⎨
⎪⎩
Tmax e > Tmax/P
Pe −Tmax/P  e  Tmax/P
−Tmax e < −Tmax/P

. (2.5)

Matlab code for simulation of rotating disk position proportional feedback control
is given as follows.

The simulation result is demonstrated in Fig. 2.18, where the horizontal axis rep-
resents the simulation time span and the vertical axis represents the rotating position

during simulation. Although the rotating position has a tendency to converge to the

expected rotating position.pE = 1, it has a long transition time span with severe oscil-
lation (note that it has not converged yet even at time .t = 10 s). Severe transitional

oscillation is undoubtedly undesirable to a control system in practical applications.

Why does the proportional feedback control method work desirably for rotating
disk speed control but undesirably for rotating disk position control? An even more
tricky control phenomenon takes place if we set the friction coefficient . b to zero in
simulation. Setting the friction coefficient . b to zero implies that the rotating disk
suffers from no friction at all, which is an ideal condition. So we may intuitively

imagine that the proportional feedback control method would have better perfor-
mance if the friction coefficient is zero. However, the simulation result demonstrated

in Fig. 2.19 contradicts our intuition. The proportional feedback control method has
much worse performance: the rotating position oscillates more severely and has no
tendency to converge at all. Why does this tricky control phenomenon take place?
For the moment, we skip theoretical analysis for above “why” questions. Although
the “why” questions are put aside, simulation results demonstrated in Figs. 2.18
and 2.19 clearly reflect limitations of the adapted intuitive feedback control method
namely the proportional feedback control method. Besides, the original intuitive
feedback control method also has such limitations.

2.6 Necessity of Control Theory
Simulation experiments presented in Sect. 2.5 do not imply that feedback control
is no longer effective for rotating disk position control. In fact, we can replace the
intuitive feedback control methods by another feedback control method namely the
proportional-derivative feedback control method described in (2.6) and illustrated in
Fig. 2.20:

.T =
⎧
⎪⎨
⎪⎩
Tmax Pe + D de
dt > Tmax

Pe + D de
dt −Tmax  Pe + D de
dt  Tmax

−Tmax Pe + D de
dt < −Tmax

Compared with proportional feedback control, proportional-derivative feedback
control involves one more term namely the derivative term.D de

dt where. D is the deriva-
tive coefficient. Matlab code for simulation of rotating disk position proportional-
derivative feedback control is given as follows (note that. de/dt = d(pE − p)/dt =

−d p/dt = −v).

Simulation results are demonstrated in Fig. 2.21 (.b = 5 in simulation) and
Fig. 2.22 (.b = 0 in simulation), where the horizontal axis represents the simulation
time span and the vertical axis represents the rotating position during simulation. In
both simulation experiments, the rotating position converges rapidly to the expected
rotating position .pE = 1, which reflects effectiveness of the rotating disk position
proportional-derivative feedback control method.

Here, our focus is neither on a specific control method namely the proportional-
derivative feedback control method nor on how we apply it to accomplish a concrete

control task namely rotating disk position control. In retrospect of this chapter our
focus is not on any specific control method or any concrete control task. Instead,
we would like to guide readers to reflect on a number of control phenomena and
essential reasons behind them.
• Why do the intuitive feedback control methods enable the rotating disk speed
control system to guarantee control accuracy?
• Why does the adapted intuitive feedback control method namely the proportional
feedback control method enable the rotating disk speed control system to achieve
the expected rotating speed yet with a small enough but existing steady error?

• Why do the intuitive feedback control methods enable the rotating disk speed
control system to enhance control responsiveness?
• Why do the intuitive feedback control methods not work for the task of rotating
disk position control?
• Why does the proportional feedback control method perform even worse for the
task of rotating disk position control when control system conditions become better
and even ideal?
• Why does the proportional-derivative feedback control method work for the task
of rotating disk position control?
We can continue to raise more questions like those above for reflection, yet it is

unnecessary to do so for the moment. For these questions, we may resort to simula-
tion experiments and field experiments to acquire intuitive understanding of control

phenomena. However, simulation experiments and field experiments never enable

us to really reach essential reasons behind control phenomena. It is like by experi-
ments we can fabricate and measure a billion of orthogonal triangles (also known as

right-angled triangles) to demonstrate the phenomenon that an orthogonal triangle’s
hypotenuse square equals the sum of its two side squares (see Fig. 2.23), but all
these experiments themselves can neither tell us whether this phenomenon is really
a general truth nor tell us any essential reason behind this phenomenon.

To really reach essential reasons behind the phenomenon that an orthogonal trian-
gle’s hypotenuse square equals the sum of its two side squares, we need mathematics

on geometry. By analogue, to really reach essential reasons behind control phe-
nomena, we need control theory which aims for mathematical essence of control

systems and essential reasons behind their control phenomena. Since Chap. 3, we
will formally enter the kingdom of control theory.


