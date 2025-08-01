c01
===

Control science is a core representative of the third industrial revolution, together with
other core representatives such as computer science and atomic science. Its influence
is ubiquitous in engineering activities as well as human daily life, and it contributes
enormously to modern civilization. For example, let us consider domestic appliances
such as tea machines, washing machines, and refrigerators, consider office equipments such as computers, printers, and scanners, consider transportation facilities
such as private cars, public buses, high-speed trains, ships, and aeroplanes, consider
industrial equipments such as assemblies, manipulators, and numerical machines,
and consider space systems such as rockets, space stations, satellites, and extraterrestrial explorers, and consider advanced products such as special robots, intelligent vehicles, and unmanned aerial vehicles. Besides, we can also consider various
kinds of automation such as agricultural automation, medical automation, warehouse
automation, mining automation, and military automation. Control science plays an
indispensable role for the prosperity of all these modern fruits.

Since control science is so important to modern civilization, it has already been
a core discipline of engineering education in universities for past decades. Writing
a textbook on this core discipline is motivated directly by the author’s years of
teaching activities in the course, Automation and Control Systems, at Shanghai Jiao
Tong University (SJTU).

Control systems, especially automatic control systems, are the main subject of
control science. A control system may involve many aspects of consideration, such
as hardware consideration, software consideration, operation consideration, maintenance consideration, economy consideration, and society consideration. However,
besides all such aspects of consideration, one aspect of consideration, that is most
essential to the control system is methodology consideration in mathematical sense,
knowledge on which is what we refer to as control theory. In other words, control
theory focuses on abstracting mathematical essence from engineering aspects of
consideration for the control system, analyzing mathematical essence of control
phenomena, establishing objective control principles, and providing control methods
with guaranteed performance.

Control theory is like a field of mathematics, full of abstract thinking and analysis.
It is itself meaningful and interesting enough if purely regarded as a field of math-
ematics; in fact, a lot of mathematical knowledge does originate and develop in the
context of research on control theory. Besides its importance from the mathematical
perspective, control theory is even more charming as it is deeply rooted in practical
applications, many examples have already been mentioned above.

One charm of control theory for practical applications consists in know-why. There
are these or those kinds of control phenomena in practical applications. It is true that
we may resort to simulation experiments and field experiments to acquire intuitive
understanding of control phenomena, yet simulation experiments and field experiments never enable us to really reach essential reasons behind control phenomena.
In contrast, control theory which aims for mathematical essence of control systems
enables us to reach essential reasons behind control phenomena.

Another charm of control theory for practical applications consists in know-how.
Control methods are the soul of control systems. Control theory enables us to know
how to properly design control methods. It is true that some control methods can
be designed by empirical tuning for simple control problems. However, empirical
tuning is not applicable to complicated control problems. Control theory can help us
avoid blind trials with control systems, and enables us to design guaranteed control
methods that essentially possess certain expected or desired properties.

It is the fusion of control theory and practical applications that highlights charms
of control theory. According to the author’s years of relevant teaching activities, it is
neither control theory alone nor practical applications alone, but right the fusion of
control theory and practical applications that attracts and motivates students most.
So the author’s basic pedagogy is naturally to fuse control theory and practical
applications.

The author will clarify the inherent close relationship between control theory and
practical applications, such as why and how each point of control theory covered by
this textbook has been established according to concrete needs in practical applications. The author will also provide many examples of MATLAB simulation code to
demonstrate how control theory is applied to handle concrete control problems and
for readers to reinforce their understanding of control theory via practical application
oriented practice. It is worth noting that some sub-code in given examples can be
replaced by MATLAB built-in functions, yet the author insists on providing complete
implementation code so that even if MATLAB is unavailable, readers can still easily
follow the provided code and adapt it to implementation by other commonly adopted
programming languages such as C/C++ and Python.

Prerequisites for this textbook include the standard sequence of undergraduate
analysis courses, some knowledge of advanced analysis (including matrix analysis,
functional analysis, and numerical computation), and some knowledge of optimization theory. For readers who are not familiar with such mathematical knowledge, this
textbook is still readable and self-contained enough so that readers would go through
the textbook smoothly on the whole without resorting to references.

Control theory forms a magnificent kingdom that can by no means be covered
by a single book. So the author focuses on fundamentals of control theory for practical applications. Even in terms of fundamentals, the author cannot claim that this
textbook covers most fundamentals of control theory for practical applications. But,
according to the author’s field experiences as well as teaching experiences, the fundamentals of control theory covered by this textbook can still help students and field
engineers develop a working knowledge of control theory to solve many concrete
problems in practical applications and can arouse their interest in acquiring more
advanced knowledge of control theory.

The author would like to dedicate this textbook to his mother Lianhua Zhan
for her priceless contribution to family education and family building during the
author’s childhood. The author would also like to dedicate this textbook to his father
Jinhong Li for his mechanical engineering expertise which directly attracted the
author into the wonderful kingdom of engineering, especially on automatic systems
and robotics. The author would like to express his sincere gratitude and appreciation to his colleagues, especially Shaoyuan Li, Yue Gao, Ming Yang, Cailian
Chen, and Jialiang Lu, for their encouragement and help to his teaching activities at
Shanghai Jiao Tong University (SJTU), to his former colleagues, especially Arnaud
de la Fortelle, Fawzi Nashashibi, Michel Parent, and Christian Laugier at Institut
National de Recherche en Informatique et en Automatique (INRIA) for their help to
his academic life, to his dear friends in Sophia-Antipolis and Côte d’Azur for their
precious friendship in his life.

Shanghai, China

Chapter 1 Introduction
----------------------

Control science is a core representative of the third industrial revolution, together
with other core representatives such as computer science and atomic science. Its influence is ubiquitous in engineering activities as well as our daily life and it contributes
enormously to modern civilization.

To demonstrate ubiquitousness of its influence, we may simply take daily-life
activities in a normal day as examples. In the morning, we wake up and may turn
on a tea machine that prepares a cup of tasty hot tea automatically (namely without
human interference or interaction). How does the tea machine do this? After enjoying
tea, we leave our house and drive a car towards the working place. On the road, we
may occasionally use a driving-assistance module that keeps the car speed at our
expected stable value automatically, regardless of road conditions. How does the
speed driving-assistance module do this? We may also occasionally use another
driving-assistance module that steers the car automatically for safe lane keeping.
How does the steering driving-assistance module do this?

We arrive at the working place, park the car, and may take an elevator to go
upstairs to the office floor. The elevator ascends to the correct position of the office
floor automatically. How does the elevator do this? We arrive at the office and turn on
a computer for working. The computer’s disk drive system can always rotate quickly
and automatically to correct positions for reliable data accessing. How does the disk
drive system do this? We may feel hot or cold and turn on an air conditioner that
adjusts the room temperature automatically to our desired value. How does the air
conditioner do this? When there is a package sent to us, an unmanned vehicle carrier
follows a pre-registered map automatically to deliver the package to our office. How
does the unmanned vehicle carrier do this?

After working, we may take some cash from an automated teller machine that
delivers the correct amount of cash automatically. How does the automated teller
machine do this? We may visit a museum where a guidance robot can navigate
automatically and accompany us to our destination. How does the guidance robot do
this? After visiting the museum, we may feel hungry and resort to a special vending
machine that prepares hot food automatically. How does the vending machine do
this? We finally return home and put our clothes into a washing machine that operates
automatically to wash the clothes. How does the washing machine do this?

The “how does” question after each example is intended to arouse readers’ reflection on the role that control science plays in the example. Besides above daily-life
examples, a large amount of examples can be easily found in various domains. Let us
consider transportation facilities such as public buses, high-speed trains, ships, and
aeroplanes, consider industrial equipments such as assemblies, manipulators, and
numerical machines, consider space systems such as rockets, space stations, satellites, and extra-terrestrial explorers, and consider advanced products such as special
robots, intelligent vehicles, and unmanned aerial vehicles. Moreover, we can consider
various kinds of automation such as agricultural automation, medical automation,
warehouse automation, mining automation, and military automation. Control science
plays an indispensable role for the prosperity of all these modern fruits.

1.1 Control Systems
-------------------

Control systems especially automatic control systems are the main subject of
control science. We may have intuitive understanding of control systems from above
examples. A question arises naturally: what is a control system?

A system is the environment segment that concerns an activity of our interest (Dorf
and Bishop 2008). For control science, we refer to an activity of our interest as
a process. A process without humans’ intentional control or influence is called a
natural process. For example, the absolutely most phenomena in the universe are
natural processes, such as rotation and revolution of the earth.

In contrast, a process under humans’ intentional control is called a control-
targeted process. In the context of control science, we rarely consider natural processes. Instead, we normally focus on control-targeted processes, which are indis-
pensable part of control systems. For expression conciseness yet without causing confusion throughout this book, we use the term process to mean control-targeted process only, except rarely when explicit distinction between control-targeted processes
and natural processes is necessary.

Normally, a process (control-targeted process) is controlled by certain input on
one hand and results in certain output on the other hand, as illustrated in Fig. 1.1.
For example, a process can be the rotating movement of a disk load, where the input
is the torque exerted on the disk load and the output is the rotating speed of the disk
load.

It is worth noting that the input characteristic is inherent part of the holistic process
characteristic. Some processes (control-targeted processes), which seem to be the
same process, are actually different if they have input of different characteristics.
For example, although the motion of a football only under horizontal kicks, the
motion of a football only under vertical kicks, and the motion of a football under
both kinds of horizontal and vertical kicks commonly involve motion of a football,
they are actually three different processes (control-targeted processes) because they
have input of different characteristics namely different kinds of kicks.

It is also worth noting that any output of the process exists objectively, 1 regardless
of how we treat it or even whether we treat it or not. Take the rotating movement of
a disk load illustrated in Fig. 1.1 as example, although the rotating position of the
disk load is not our concern for rotating disk speed control, this by no means implies
that the output of the rotating position of the disk load does not exist objectively.

A control system involves not only a process (control-targeted process) but also
a controller and an actuator that control the process. In the control system, the
controller generates and sends control commands to the actuator and then the actuator
controls or influences the process directly via the process input. The controller needs
to generate proper control commands by which the actuator can control the process
to achieve certain control objective, such as expected process output which is usually
set as input to the controller.

For example, as illustrated in Fig. 1.2, the process is still the rotating movement
of a disk load illustrated in Fig. 1.1. An electric circuit that serves as the controller
generates and sends control commands to a motor that serves as the actuator. The
motor provides a torque force to drive the disk load to rotate. The electric circuit
needs to generate proper control commands by which the motor can drive the disk
load to rotate at certain expected rotating speed.

For a control system, if the controller relies only on a priori knowledge to generate
control commands without using feedback, then the control system is an open-loop
control system. The tea machine, the special vending machine, and the washing
machine previously mentioned are open-loop control systems. Taking the tea machine
as example, a priori knowledge is programmed into the embedded microchip of the
tea machine. The embedded microchip relies on the programmed a priori knowledge
to generate control commands by which the tea machine actuator puts a standard
amount of tea leaves and hot water to form a cup of hot tea.

To facilitate understanding of open-loop control systems, we may resort to an
analogue with archery. In archery, flying of the archery arrow is the process (control-
targeted process), whereas our brain is the controller and our arms are the actuator.

Our brain, which stores a priori knowledge namely “feeling of archery” accumulated
after a long time of systematic training, relies on such a priori knowledge to control
our arms that shoot the archery arrow. Once the archery arrow is shot, no feedback
can be used to adjust flying of the archery arrow. The control objective or the expected
process output is to hit the target such as a small balloon, as illustrated in Fig. 1.3.

An open-loop control system’s performance is largely influenced by a priori
knowledge on which the controller relies. If the a priori knowledge is of high quality,
then expected process output may be achieved; otherwise, unexpected process output
is incurred. It is like a good and stable “feeling of archery” tends to enable us to hit
the archery target, whereas a bad “feeling or archery” causes us to miss the archery
target.

Open-loop control systems mainly have two limitations. First, a priori knowledge
of high quality on which the controller relies is usually unavailable. It is like most
people lack a good and stable “feeling of archery” namely a priori knowledge of
high quality for archery. Second, the environment where control systems operate
may change and a priori knowledge on which the controller relies may no longer
be applicable in the changed environment. Consequently, open-loop control systems
tend to have non-guaranteed performance in changeable environments. It is like even
professional players of archery tend to have poor performance in environments full
of wind.

1.2 Closed-Loop Feedback Control Systems
----------------------------------------

For a control system, if the controller can take advantage of both a priori knowledge
and feedback (normally process output feedback) to generate control commands,
then the control system is a closed-loop feedback control system, also known shortly
as closed-loop control system or feedback control system.

Compared with the open-loop control system, the closed-loop feedback control
system has two more components, namely the sensor (Fraden 2010) and the esti-
mator (Li 2022), which provide feedback to the controller. The generic closed-loop
feedback control system is illustrated in Fig. 1.4.

The sensor measures process output directly and provides raw output measurements to the estimator which then processes raw output measurements to obtain
better output estimates. The obtained estimates are right the feedback provided to
the controller so that the controller can take advantage of the estimates besides a
priori knowledge to generate control commands.

When the sensor itself is reliable and accurate enough for feedback control, the
estimator can be omitted. Even when the estimator cannot be omitted but is indeed
needed for feedback control, we may still regard the sensor and the estimator together
as a sensor in general sense. Therefore, the generic closed-loop feedback control
system can be illustrated as another version in Fig. 1.5.

In contrast with open-loop control systems, closed-loop feedback control systems which take advantage of feedback control can have much more guaranteed
performance in changeable environments or when a priori knowledge is not of high
quality or even unavailable. Detailed demonstration of utilities of feedback control
is postponed to Chap. 2.

1.3 Examples of Closed-Loop Feedback Control Systems
----------------------------------------------------

Closed-loop feedback control systems play a much more important role than open-
loop control systems in control science and engineering. They form the absolutely
main part of researches and developments on control theory and relevant practical
applications. A number of representative examples of closed-loop feedback control
systems are described below.

**Rotating disk speed control**

Many modern facilities and devices involve rotating disk speed control. For example,
the speed driving-assistance module previously mentioned, which appears as car
speed control from the driving perspective, is actually based on rotating disk speed
control (regard the car driving wheel as the rotating disk). Similarly, the elevator
previously mentioned, which needs to keep smooth ascending or descending, also
relies on rotating disk speed control.

A closed-loop feedback control system for rotating disk speed control is illustrated
in Fig. 1.6. The process is the rotating movement of a disk load and our concerned
process output is the rotating disk speed. An electric circuit that serves as the con-
troller generates and sends control commands to a motor that serves as the actuator.
The motor provides a torque force to drive the disk load to rotate. A tachometer
serves as the sensor that measures the rotating speed of the disk load and provides
rotating speed measurements as feedback to the electric circuit controller.

In the rotating disk speed feedback control system, the electric circuit controller
can take advantage of not only a priori knowledge but also rotating disk speed feedback to generate control commands. As will be demonstrated in details in Chap. 2,
the rotating disk speed feedback control system can succeed in achieving the control
objective of rotating disk speed control.

A simple intuitive interpretation for the working mechanism and principle of the
rotating disk speed feedback control system is given as follows: When the rotating
speed is lower than the expected rotating speed, the electric circuit controller generates and sends control commands to the motor to increase the torque exerted on
the disk load. When the rotating speed is higher than the expected rotating speed,
the electric circuit controller generates and sends control commands to the motor to
decrease the torque exerted on the disk load. The electric circuit controller adjusts its
control commands dynamically until the rotating disk speed feedback control system
converges to the equilibrium status that the rotating speed is actually the expected
rotating speed. It is worth noting that in such feedback control way, the electric circuit
controller takes advantage of only feedback error namely error between the rotating
speed feedback and the expected rotating speed, without necessarily relying on a
priori knowledge of the disk load or the environment.

**Rotating disk position control**

Many modern facilities and devices also involve rotating disk position control. For
example, the elevator previously mentioned not only relies on rotating disk speed
control to ascend or descend smoothly but also relies on rotating disk position control to stop at correct floor positions. The computer’s disk drive system previously
mentioned relies on rotating disk position control to access data at correct positions.
A surveillance camera servomechanism relies on rotating disk position control to
adjust the camera view correctly towards targets.

A closed-loop feedback control system for rotating disk position control is illustrated in Fig. 1.7. The process is the rotating movement of a disk load and our
concerned process output is the rotating disk position. An electric circuit that serves
as the controller generates and sends control commands to a motor that serves as
the actuator. The motor provides a torque force to drive the disk load to rotate.
A goniometer serves as the sensor that measures the rotating position of the disk
load and provides rotating position measurements as feedback to the electric circuit
controller.

In the rotating disk position feedback control system, the electric circuit controller
can take advantage of rotating position feedback to generate control commands.
Whenever there is feedback error namely error between the rotating position feedback
and the expected rotating position, the electric circuit controller can adjust its control
commands dynamically to control the motor to rotate in the direction of reducing
such error, until the rotating disk position feedback control system converges to the
equilibrium status that the rotating position is actually the expected rotating position.

Similar to the rotating disk speed feedback control system, the rotating disk
position feedback control system takes advantage of only feedback error, without
necessarily relying on a priori knowledge of the disk load or the environment.

**Intelligent vehicle steering control**

Intelligent vehicles or autonomous vehicles (Laurgeau 2009; Eskandarian 2012) have
been developing rapidly in terms of researches and have been attracting more and
more public attention as well as investment interests during recent years. Intelligent
vehicles are an important representative of high technology. An intelligent vehicle is a
comprehensive intelligent system and involves a wide range of research domains and
functionalities. Among all functionalities of an intelligent vehicle, the functionality
that impresses people most directly may be intelligent vehicle steering control (also
known as lateral control) for lane keeping, namely the functionality that enables the
intelligent vehicle to steer itself automatically during driving on a target lane.

A closed-loop feedback control system for intelligent vehicle steering control
is illustrated in Fig. 1.8. The process is vehicle motion and our concerned process
output is the vehicle lateral position on the target lane. A microchip that serves as
the controller generates and sends control commands to a steering mechanism that
serves as the actuator. A module of lane detection (Li and Nashashibi 2013) serves as
the sensor that estimates the vehicle lateral position on the target lane and provides
vehicle lateral position measurements as feedback to the microchip controller. The
expected process output is the middle of the target lane.

In the intelligent vehicle steering feedback control system, the microchip con-
troller can take advantage of vehicle lateral position feedback to generate control
commands. Simply speaking, when the intelligent vehicle is to the left of the target
lane middle, the microchip controller generates and sends control commands to the
steering mechanism to turn right. When the intelligent vehicle is to the right of the
target lane middle, the microchip controller generates and sends control commands
to the steering mechanism to turn left. The microchip controller adjusts its control
commands dynamically until the intelligent vehicle steering feedback control sys-
tem converges to the equilibrium status that the intelligent vehicle is actually in the
middle of the target lane, as illustrated in Fig. 1.9.

**Intelligent vehicle parking control**

Intelligent vehicle steering control for lane keeping is not the only fascinating func-
tionality of an intelligent vehicle. Intelligent vehicle parking control is another fas-
cinating functionality, as illustrated in Fig. 1.10. Intelligent vehicle parking con-
trol aims at driving the intelligent vehicle automatically from an initial pose to the
destination pose in a parking slot.

In a closed-loop feedback control system for intelligent vehicle parking control,
the process is vehicle motion and our concerned process output is the vehicle pose
(including position and orientation). The expected process output is the destination
pose in the parking slot. The controller of the intelligent vehicle parking feedback
control system can take advantage of vehicle pose feedback to generate control
commands.

Compared with intelligent vehicle steering control for lane keeping, intelligent
vehicle parking control is more complicated in terms of two aspects. First, intelligent vehicle parking control involves not only steering control (also known as lateral
control) but also speed control (also know as longitudinal control). Second, intel-
ligent vehicle parking control usually necessitates certain advanced form of feed-
back control such as model predictive control, presentation of which is postponed to
Chap. 7.

**Inverted pendulum control**

Inverted pendulum control aims at moving a cart to a target position while balancing
an inverted pendulum on the cart, as illustrated in Fig. 1.11. In a closed-loop feedback
control system for inverted pendulum control, the process is movement of the cart
as well as the inverted pendulum and our concerned process output is the inverted
pendulum state that consists of the cart position, the cart speed, the inverted pendulum
angle, and the inverted pendulum angular speed. The expected process output is the
expected inverted pendulum state that consists of the target cart position, zero cart
speed, zero inverted pendulum angle, and zero inverted pendulum angular speed.

Inverted pendulum control is an elegant application example to highlight the
charm of control theory. First, inverted pendulum control is interesting enough and
resembles a typical game of our childhood, namely to balance a long stick on our
hand without holding it. Second, inverted pendulum control is difficult enough and
hence offers a performance stage for a number of important control methods to show
their power.

Some intuitive explanations hover over the difficulty of inverted pendulum control.
First, the inverted pendulum is extremely unstable. Whenever control commands are
inappropriate, the inverted pendulum would quickly fall down, leaving little chance
for remedy. Second, for inverted pendulum control, the process has control input of
only one dimension namely the cart acceleration, whereas it has concerned process
output of multiple dimensions namely the cart position, the cart speed, the inverted
pendulum angle, and the inverted pendulum angular speed. It is like we use only one
hand to do multiple things simultaneously.

**Motorcycle control**

Motorcycle (or bicycle) control is also an interesting application example close to
our daily life, as illustrated in Fig. 1.12. Motorcycle control consists of motorcycle
steering control for lane keeping and motorcycle balance control. Motorcycle steering
control for lane keeping is similar to intelligent vehicle steering control for lane
keeping. Motorcycle balance control, which aims at maintaining the motorcycle
rolling angle at zero, is realized by motorcycle steering control indirectly.

Similar to inverted pendulum control, motorcycle control is also an application
example where the process has control input of only one dimension but has concerned
process output of multiple dimensions. In motorcycle control, only the steering angle
is used to simultaneously control the motorcycle lateral position on a target lane
and control the motorcycle rolling angle with respect to the vertical line. In fact,
motorcycle control is essentially the same to inverted pendulum control. Intuitively
speaking, we may imagine controlling the motorcycle lateral position as controlling
the cart position and imagine balancing the motorcycle as balancing the inverted
pendulum on the cart.

**Industrial manipulator control**

Control theory has long since been flourishing in modern industry, instantiated as a
large variety of industrial manipulators (Murray et al. 1994), as illustrated in Fig. 1.13.

In contrast with inverted pendulum control and motorcycle control where the
process has control input of less dimensions but has concerned process output of more
dimensions, industrial manipulator control is a representative application example
where the process usually has control input of more dimensions but has concerned
process output of less dimensions. Take the industrial manipulator illustrated in
Fig. 1.13 as example, where the process is manipulator motion and our concerned
process output is the end effector position. The process has one-dimensional control
input at each manipulator joint and hence has control input of totally six dimensions,
whereas it has concerned process output of only three dimensions.

The fact that an industrial manipulator control system usually has control input
of more degrees of freedom does not imply that industrial manipulator control is
less difficult or complicated than inverted pendulum control and motorcycle control.
There is an old saying: “One monk has water to drink, whereas three monks have no
water to drink”. 2 If the various dimensional parts of control input are inappropriate
or do not cooperate well, they may even incur worse consequences than control input
of less degrees of freedom. On the other hand, if the various dimensional parts of
control input are appropriate and cooperate well, they do tend to achieve desirable
performance and outperform control input of less degrees of freedom.

**Special robot control**

A large variety of special robots have been researched and developed; many of them
have already been put into practical applications. These special robots include agriculture robots, construction robots, mining robots, underwater robots, search and
rescue robots, medical robots, health care robots, domestic robots, education robots,
humanoids, social robots, biologically inspired robots, soft-body robots, etc. (Siciliano and Khatib 2016). These special robots represent humans’ unlimited imagination
for automation and artificial intelligence and provide colourful performance stages
for control theory. Fig. 1.14 shows a multiped robot, which is developed by the team
in the charge of Professor GAO Yue at SJTU, was performing automatic skiing in
Beijing Winter Olympic Games in 2022.

**Unmanned aerial vehicle control**

Unmanned aerial vehicles become more and more common in daily life, in industry,
and in military activities (Valavanis and Vachtsevanos 2015). A Da-Jiang (meaning
“broad territory”) unmanned aerial vehicle is illustrated in Fig. 1.15. For unmanned
aerial vehicle control, the process is motion of the unmanned aerial vehicle and
our concerned process output is the unmanned aerial vehicle pose in the three-
dimensional sky. The control input is driving (or lifting) force provided by propulsion
components of the unmanned aerial vehicle. The controller of the unmanned aerial
vehicle needs to generate control commands that enable the unmanned aerial vehi-
cle to achieve certain expected motion status, such as hovering stably over a target
position.

**Space vehicle control**

Space exploration and exploitation have been providing an enormous impetus for
development of control theory in modern history. Space exploration and exploitation involve many advanced control systems that play important roles in high-level
economic activities and national defence. Space vehicle control systems are a repre-
sentative of such advanced control systems. A famous application example of space
vehicle control, named after Tsien Hsue-shen, is illustrated in Fig. 1.16.

1.4 Control Theory
------------------

A control system especially a closed-loop feedback control system may involve many
aspects of consideration:

• Hardware consideration, for example, what kind of actuator (a fuel motor, an
electrical motor, a hydraulic device etc.) should be used? What kind of sensor (a
mechanical sensor, an electrical sensor, a photonic sensor etc.) should be used?
What kind of controller (a computer, a microchip, an ad hoc device etc.) should
be used? What kind of interface among various components should be used? How
to arrange and install the controller, the actuator, the sensor, and peripherals? How
to verify hardware quality for control purpose?


• Software consideration, for example, what kind of programming language (assem-
bly, C/C++, ad hoc language etc.) should be used? What is the execution efficiency
of the programming language (on certain computational hardware)? Is the algo-
rithm implemented correctly and efficiently? Is parallel processing needed? What
kind of communication protocols among various components should be used?
How to verify if the software is reliable and exempt from bugs? How to guarantee
that the software is secured and robust to malicious or adversarial attacks?

• Operation and maintenance consideration, for example, how to provide energy to
the controller, the actuator, the sensor, and peripherals? How to verify all hardware can always operate well after integration? How to verify all software can
always operate well after integration? How to maintain the control system in good
conditions in the long run?

• Economy consideration, for example, is the control system affordable for research
purpose? Is the control system economical and competitive for commercial
purpose?

• Society consideration, for example, is the control system acceptable to public?
Does the control system respect cultures and conventions of a society in which the
control system operates? Does the control system violate national laws?

Besides above aspects of consideration, one aspect of consideration that is most
essential to the control system is methodology consideration in mathematical sense,
knowledge on which is what we refer to as control theory. In other words, control
theory focuses on abstracting mathematical essence from engineering aspects of
consideration for the control system, analysing mathematical essence of control
phenomena, establishing objective control principles, and providing control methods
with guaranteed performance.

Taking rotating disk speed control as example, mathematical essence of the process, the actuator, and the sensor is illustrated in Fig. 1.17. The process dynamics
of how the process input namely the torque. T influences the process output namely
the rotating speed . v is described by a first-order differential equation. The actuator
dynamics of how the control command namely the voltage.U influences the actuator
output namely the torque. T is described by a first-order differential equation together
with a proportional equation. The sensor is abstracted as a bijective mapping between
the process output. v and the sensor output namely the rotating speed feedback.vf (an
identity mapping.vf = v is usually realized in practical applications). For a generic
control system, abstracting its mathematical essence is what we refer to as system
modelling.

In the closed-loop feedback control system for rotating disk speed control, the
controller takes the expected rotating speed.vE and the rotating speed feedback.vf as
input and generates the control command.U as output. The mathematical essence of
the controller is the mapping between.{vE, vf} and. U. For a generic control system,
the mathematical essence of the controller is the mapping between the controller
input and the controller output, and this mapping in mathematical sense is what we
refer to as control method.

Different control methods have different influence on control systems and result in
different control phenomena. Why are there these or those kinds of control phenomena? How to analyse control phenomena based on certain methodology of system
modelling and reach essential reasons behind them? How to analyse essential influence of different control methods on control systems? How to avoid blind trials with
control systems? Can objective control principles instead of empirical tuning rules
be established according to theoretical analysis? How to design guaranteed control
methods that essentially possess certain expected or desired properties? Control
theory aims at providing answers to such kinds of methodology consideration in
mathematical sense that are essential to control systems.

References

1. R. Dorf, R. Bishop. Modern control systems. Pearson Prentice Hall, 2008.

2. A. Eskandarian (Ed.). Handbook of intelligent vehicles. Springer-Verlag London, 2012.

3. J. Fraden. Handbook of modern sensors: physics, designs, and applications. Springer Science &
Business Media, 2010.

4. C. Laurgeau. Le siècle de la voiture intelligente. Presses des MINES, 2009.

5. H. Li, F. Nashashibi. Lane detection (part i): Mono-vision based method. INRIA Tech Report,
RT-433, 2013.

6. H. Li. Fundamentals and applications of recursive estimation theory. Shanghai Jiao Tong University
Press, 2022.

7. R. Murray, Z. Li, S. Sastry. A mathematical introduction to robotic manipulation. CRC Press, 1994.

8. B. Siciliano, O. Khatib. Springer handbook of robotics. Springer, 2016.

9. H. Tsien. Engineering cybernetics. Shanghai Jiao Tong University Press, 2015.

10. K. Valavanis, G. Vachtsevanos. Handbook of unmanned aerial vehicles. Springer, 2015.


