C04 Motion in Two and Three Dimensions
======================================

4-1 POSITION AND DISPLACEMENT

Learning Objectives

After reading this module, you should be able to . . .

4.01 Draw two-dimensional and three-dimensional position
vectors for a particle, indicating the components along the
axes of a coordinate system.

4.02 On a coordinate system, determine the direction and
magnitude of a particle’s position vector from its compo-
nents, and vice versa.

4.03 Apply the relationship between a particle’s displace-
ment vector and its initial and final position vectors.

Key Ideas

* The location of a particle relative to the origin of a coordinate system is given by a position vector r , which in unit-
vector notation is

.. math::

\overrightarrow{x} = x \hat{i} + y \hat{j} + z \hat{k} 

Here :math:`x \hat{î}, y \hat{j}`, and  :math:`k \hat{k}` are the vector components of position
vector :math:`\overrightarrow{r}`, and x, y, and z are its scalar components (as well
as the coordinates of the particle).

* A position vector is described either by a magnitude and one or two angles for orientation, or by its vector or scalar
components.

* If a particle moves so that its position vector changes from :math:`\overrightarrow{r}_1` to :math:`\overrightarrow{r}_2`,
the particle’s displacement :math:`\Delta \overrightarrow{x}` is

.. math::

   \Delta \overrightarrow{r} = \overrightarrow{r}_2 - \overrightarrow{r}_1


The displacement can also be written as

.. math::

   \Delta \overrightarrow{r} = (x_2 - x_1) \hat{i} + (y_2 - y_1) \hat{j} + (z_2 - z_1) \hat{k}
   = \Delta x \hat{i} + \Delta y \hat{j} + \Delta z \hat{k}

 
What Is Physics?
----------------

In this chapter we continue looking at the aspect of physics that analyzes
motion, but now the motion can be in two or three dimensions. For example,
medical researchers and aeronautical engineers might concentrate on the
physics of the two- and three-dimensional turns taken by fighter pilots in dog-
fights because a modern high-performance jet can take a tight turn so quickly
that the pilot immediately loses consciousness. A sports engineer might focus
on the physics of basketball. For example, in a free throw (where a player gets
an uncontested shot at the basket from about 4.3 m), a player might employ the
overhand push shot, in which the ball is pushed away from about shoulder
height and then released. Or the player might use an underhand loop shot, in
which the ball is brought upward from about the belt-line level and released.
The first technique is the overwhelming choice among professional players, but
the legendary Rick Barry set the record for free-throw shooting with the underhand technique.

Motion in three dimensions is not easy to understand. For example, you are
probably good at driving a car along a freeway (one-dimensional motion) but
would probably have a difficult time in landing an airplane on a runway (three-
dimensional motion) without a lot of training.

In our study of two- and three-dimensional motion, we start with position
and displacement.

Position and Displacement
-------------------------

One general way of locating a particle (or particle-like object) is with a position
vector :math:`\overrightarrow{r}`, which is a vector that extends from a reference point (usually the
origin) to the particle. In the unit-vector notation of Module 3-2, :math:`\overrightarrow{r}`
can be written

.. math::

   \overrightarrow{x} = x \hat{i} + y \hat{j} + z \hat{k}

where :math;`x \hat{i}, y \hat{j}`, and :math;`z \hat{k}` are the vector components of :math:`\overrightarrow{r}` and the coefficients x, y, and z
are its scalar components.

The coefficients x, y, and z give the particle’s location along the coordinate
axes and relative to the origin; that is, the particle has the rectangular coordinates
(x, y, z). For instance, Fig. 4-1 shows a particle with position vector

.. math::

   \overrightarrow{x} = (-3 m) \hat{i} + (2 m) \hat{j} + (5 m) \hat{k}

and rectangular coordinates (-3 m, 2 m, 5 m). Along the x axis the particle is
3 m from the origin, in the :math:`\hat{î}` direction. Along the y axis it is 2 m from the
origin, in the :math:`+\hat{j}` direction. Along the z axis it is 5 m from the origin, in the :math:`+\hat{k}`
direction.

As a particle moves, its position vector changes in such a way that the vector
always extends to the particle from the reference point (the origin). If the position vector changes—say, from 
:math:`\overrightarrow{r}_1` to :math:`\overrightarrow{r}_2` during a certain time interval—then the
particle’s displacement :math:`\Delta \overrightarrow{r}` during that time interval is

.. math::

   \Delta \overrightarrow{r} = \overrightarrow{r}_2 - \overrightarrow{r}_1

Using the unit-vector notation of Eq. 4-1, we can rewrite this displacement as

.. math::

   \Delta \overrightarrow{r} = (x_2 \hat{i} + y_2 \hat{j} + z_2 \hat{k}) - (x_1 \hat{i} + y_1 \hat{j} + z_1 \hat{k})

or as

.. math::

   \Delta \overrightarrow{r} = (x_2-x_1) \hat{i} + (y_2-y_1) \hat{j} + (z_2-z_1) \hat{k}

where coordinates :math:`(x_1, y_1, z_1)` correspond to position vector :math:`\overrightarrow{r}_1`
and coordinates :math:`(x_2, y_2, z_2)` correspond to position vector :math:`\overrightarrow{r}_2`. We can also rewrite the displacement
by substituting :math:`\Delta x` for :math:`(x_2-x_1)`, :math:`\Delta y` for :math:`(y_2-y_1)`, and :math:`\Delta z` for :math:`(z_2-z_1)`:

Sample Problem 4.01 Two-dimensional position vector, rabbit run

A rabbit runs across a parking lot on which a set of
coordinate axes has, strangely enough, been drawn. The coordinates (meters) of the rabbit’s position as functions of
time t (seconds) are given by

.. math::

   x = -0.31 t^2 + 7.2t + 28

and 

.. math::

   y = 0.22 t^2 - 9.1t + 30

(a) At t = 15 s, what is the rabbit’s position vector :math:`\overrightarrow{r}`
in unit-
vector notation and in magnitude-angle notation?

KEY IDEA

The x and y coordinates of the rabbit’s position, as given by
Eqs. 4-5 and 4-6, are the scalar components of the rabbit’s
position vector :math:`\overrightarrow{r}`. Let’s evaluate those coordinates at the
given time, and then we can use Eq. 3-6 to evaluate the magnitude and orientation of the position vector.

Calculations: We can write

.. math::

   \overrightarrow{r}(x) = x(t) \hat{i} + y(t) \hat{j} 

(We write :math:`\overrightarrow{r}(t)` rather than :math:`\overrightarrow{r}` because the components are
functions of t, and thus :math:`\overrightarrow{r}` is also.)

At t = 15 s, the scalar components are

.. math::

   x = (-0.31)(15)^2 + (7.2)(15)  + 28 = 66 m

and

.. math::

   x = (0.22)(15)^2 - (9.1)(15)  + 30 = -57 m

so

.. math::

   \overrightarrow{r} = (66 m) \hat{i} - (57 m) \hat{j} 

which is drawn in Fig. 4-2a. To get the magnitude and angle
of :math:`\overrightarrow{r}`, notice that the components form the legs of a right tri-
angle and r is the hypotenuse. So, we use Eq. 3-6:

.. math::

   r = \sqrt{x^2 + y^2} = \sqrt{(66 m)^2 + (-57 m)^2} = 87 m

and :math:`\theta = \tan^{-1} \frac{y}{x} = \tan^{-1} \frac{-57 m}{66 m} = -41^o` 

Check: Although :math:`\theta=139^o` has the same tangent as :math:`-41^o`,
the components of position vector :math:`\overrightarrow{r}` indicate that the desired angle is :math:`139^o - 180^o = -41^o`.

(b) Graph the rabbit’s path for t = 0 to t = 25 s.

Graphing: We have located the rabbit at one instant, but to
see its path we need a graph. So we repeat part (a) for sev-
eral values of t and then plot the results. Figure 4-2b shows
the plots for six values of t and the path connecting them.

4-2 AVERAGE VELOCITY AND INSTANTANEOUS VELOCITY
-----------------------------------------------

Learning Objectives

After reading this module, you should be able to . . .

4.04 Identify that velocity is a vector quantity and thus has
both magnitude and direction and also has components.

4.05 Draw two-dimensional and three-dimensional velocity
vectors for a particle, indicating the components along the
axes of the coordinate system.

4.06 In magnitude-angle and unit-vector notations, relate a parti-
cle’s initial and final position vectors, the time interval between
those positions, and the particle’s average velocity vector.

4.07 Given a particle’s position vector as a function of time,
determine its (instantaneous) velocity vector.

Key Ideas

* If a particle undergoes a displacement :math:`\Delta \overrightarrow{r}` in time interval :math:`\Delta t`,
its average velocity :math:`\overrightarrow{v}_{avg}`  for that time interval is

.. math::

   \overrightarrow{v}_{avg} = \frac{\Delta \overrightarrow{r}}{\Delta t}

* As :math:`\Delta t` is shrunk to 0, :math:`\overrightarrow{v}_{avg}` reaches a limit called either the
velocity or the instantaneous velocity :math:`\overrightarrow{v}`:

.. math::

   \overrightarrow{v} = \frac{d \overrightarrow{r}}{d t}

which can be rewritten in unit-vector notation as

.. math::

   \overrightarrow{v} = v_x \hat{i} + v_y \hat{j} + v_z \hat{k}

where :math:`v_x = dx/dt, v_y= dy/dt`, and :math:`v_z = dz/dt`.

* The instantaneous velocity v of a particle is always directed
along the tangent to the particle’s path at the particle’s
position.

Average Velocity and Instantaneous Velocity
-------------------------------------------

If a particle moves from one point to another, we might need to know how fast it
moves. Just as in Chapter 2, we can define two quantities that deal with “how
fast”: average velocity and instantaneous velocity. However, here we must con-
sider these quantities as vectors and use vector notation.

If a particle moves through a displacement :math:`\Delta \overrightarrow{r}`
in a time interval :math:`\Delta t`, then its
average velocity :math:`\overrightarrow{v}_{avg}` is

.. math::

   average velocity = \frac{displacement}{time interval}

or

.. math::

   \overrightarrow{v}_{avg} = \frac{\Delta \overrightarrow{r}}{\Delta t}

This tells us that the direction of :math:`\overrightarrow{v}_{avg}` (the vector on the left side of Eq. 4-8) must
be the same as that of the displacement :math:`\Delta \overrightarrow{r}` (the vector on the right side). Using
Eq. 4-4, we can write Eq. 4-8 in vector components as

.. math::

   \overrightarrow{v}_(avg) = \frac{\Delta x \hat{i} + \Delta y \hat{j} +\Delta z \hat{k} {\Delta t} = \frac{\Delta x } {\Delta t} \hat{i} + \frac{\Delta y } {\Delta t} \hat{j} + \frac{\Delta z } {\Delta t} \hat{k}  

For example, if a particle moves through displacement :math:`(12 m) \hat{î} + (3.0 m) \hat{k}` in
2.0 s, then its average velocity during that move is


.. math::

   \overrightarrow{v}_(avg) = \frac{\overrightarrow{r}} {\Delta t} = \frac{(12 m) \hat{i} + (3.0 m) \hat{k} } {2.0 s} = (6.0 m/s) \hat{i} + (1.5 m/s) \hat{k}.

That is, the average velocity (a vector quantity) has a component of 6.0 m/s along
the x axis and a component of 1.5 m/s along the z axis.

When we speak of the velocity of a particle, we usually mean the particle’s
instantaneous velocity :math:`\overrightarrow{v}` at some instant. This :math:`\overrightarrow{v}`
is the value that :math:`\overrightarrow{v}_{avg}` approaches
in the limit as we shrink the time interval :math:`\Delta t` to 0 about that instant. Using the language of calculus, we may write :math:`\overrightarrow{v}`
as the derivative

.. math::

   \overrightarrow{v} = \frac{d \overrightarrow{r}}{d t}

Figure 4-3 shows the path of a particle that is restricted to the xy plane. As
the particle travels to the right along the curve, its position vector sweeps to the
right. During time interval :math:`\Delta t`, the position vector changes from :math:`\overrightarrow{r}_1`
to :math:`\overrightarrow{r}_2` and the
particle’s displacement is :math:`\Delta \overrightarrow{r}`.

To find the instantaneous velocity of the particle at, say, instant t1 (when the
particle is at position 1), we shrink interval :math:`\Delta t` to 0 about :math:`t_1`. Three things happen
as we do so. (1) Position vector :math:`\overrightarrow{r}_2` in Fig. 4-3 moves toward :math:`\overrightarrow{r}_1`
so that :math:`\Delta \overrightarrow{r}` shrinks
toward zero. (2) The direction of :math:`\Delta \overrightarrow{r}/\Delta t`
(and thus of :math:`\overrightarrow{v}_{avg}`) approaches the
direction of the line tangent to the particle’s path at position 1. (3) The average
velocity :math:`\overrightarrow{v}_{avg}` approaches the instantaneous velocity :math:`\overrightarrow{v}`
 at :math:`t_1`.

In the limit as :math:`\Delta t \to 0`, we have :math:`\overrightarrow{v}_{avg} \to :math:`\overrightarrow{v}`
and, most important here, :math:`\overrightarrow{v}_{avg}` takes
on the direction of the tangent line. Thus, :math:`\overrightarrow{v}` has that direction as well:
v of a particle is always tangent to the

The direction of the instantaneous velocity :
particle’s path at the particle’s position.

The result is the same in three dimensions: :math:`\overrightarrow{v}` is always tangent to the particle’s path.

To write Eq. 4-10 in unit-vector form, we substitute for :math:`\overrightarrow{r}` from Eq. 4-1:

.. math::

   \overrightarrow{v} = \frac{d}{dt} (x \hat{i} + y \hat{j} + z \hat{k}) = \frac{d x}{dt} {dt}  \hat{i} + \frac{d y}{dt}  \hat{j} +  \frac{d z}{dt}  \hat{k}

This equation can be simplified somewhat by writing it as

.. math::

   \overrightarrow{v} = v_x \hat{i} + v_y \hat{j} + v_z \hat{k} 

where the scalar components of :math:`\overrightarrow{v}` are

.. math::

   v_x = \frac{d x}{d t}, v_y = \frac{d y}{d t}, and v_z = \frac{d z}{d t}

Checkpoint 1

The figure shows a circular path taken by a particle.
If the instantaneous velocity of the particle is v "
(2 m /s)î $ (2 m /s)ĵ , through which quadrant is the par-
ticle moving at that instant if it is traveling (a) clockwise
and (b) counterclockwise around the circle? For both
cases, draw :
v on the figure.

Sample Problem 4.02 Two-dimensional velocity, rabbit run

For the rabbit in the preceding sample problem, find the
velocity :
v at time t " 15 s.
KEY IDEA

We can find :
v by taking derivatives of the components of
the rabbit’s position vector.
Calculations: Applying the vx part of Eq. 4-12 to Eq. 4-5,

"
1 " tan
(Answer)
20
0
20
40
60
80
x (m)
–20
–40
(4-14)
At t " 15 s, this gives vy " $2.5 m/s. Equation 4-11 then yields
v " ($2.1 m /s)î # ($2.5 m /s)ĵ ,
$
40
d
dy
"
(0.22t 2 $ 9.1t # 30)
dt
dt
:
#
y (m)
(4-13)
" 0.44t $ 9.1.
" tan$1
Check: Is the angle $130° or $130° # 180° " 50°?
At t " 15 s, this gives vx " $2.1 m/s. Similarly, applying the
vy part of Eq. 4-12 to Eq. 4-6, we find

which is shown in Fig. 4-5, tangent to the rabbit’s path and in
the direction the rabbit is running at t " 15 s.
To get the magnitude and angle of :
v , either we use a
vector-capable calculator or we follow Eq. 3-6 to write

4-3 AVERAGE ACCELERATION AND INSTANTANEOUS ACCELERATION

Learning Objectives
After reading this module, you should be able to . . .
4.08 Identify that acceleration is a vector quantity and thus has
both magnitude and direction and also has components.
4.09 Draw two-dimensional and three-dimensional accelera-
tion vectors for a particle, indicating the components.
4.10 Given the initial and final velocity vectors of a particle
and the time interval between those velocities, determine
the average acceleration vector in magnitude-angle and
unit-vector notations.
4.11 Given a particle’s velocity vector as a function of time,
determine its (instantaneous) acceleration vector.
4.12 For each dimension of motion, apply the constant-
acceleration equations (Chapter 2) to relate acceleration,
velocity, position, and time.

Key Ideas
:
:
● If a particle’s velocity changes from v 1 to v 2 in time interval
-t, its average acceleration during -t is
:
a avg "
● As
:
v2 $ :
v1
-t
"
:
-v
.
-t
-t is shrunk to 0, :
aavg reaches a limiting value called
:
either the acceleration or the instantaneous acceleration a :
:
dv
:
.
a"
dt
● In unit-vector notation,
:
a " ax î # ay ĵ # azk̂,
where ax " dvx /dt, ay " dvy /dt, and az " dvz /dt.

Average Acceleration and Instantaneous Acceleration
When a particle’s velocity changes from :
v 1 to :
v 2 in a time interval -t, its average
:
acceleration a avg during -t is
average
change in velocity
,
"
acceleration
time interval
:
:
or
a avg "
:
:
-v
v2 $ v1
"
.
-t
-t
(4-15)
If we shrink -t to zero about some instant, then in the limit :
a avg approaches the
instantaneous acceleration (or acceleration) :
a at that instant; that is,
:
:
a"
dv
.
dt
(4-16)

If the velocity changes in either magnitude or direction (or both), the particle
must have an acceleration.
We can write Eq. 4-16 in unit-vector form by substituting Eq. 4-11 for :
v to obtain
:
a"
"
d
(vx î # vy ĵ # vz k̂)
dt
dvx
dvy
dvz
î #
ĵ #
k̂.
dt
dt
dt
We can rewrite this as
:
a " ax î # ay ĵ # az k̂,
(4-17)
where the scalar components of :
a are
ax "
dvx
,
dt
ay "
dvy
,
dt
and
dvz
.
dt
az "
(4-18)

To find the scalar components of :
a , we differentiate the scalar components of v .
:
Figure 4-6 shows an acceleration vector a and its scalar components for a
particle moving in two dimensions. Caution: When an acceleration vector is
drawn, as in Fig. 4-6, it does not extend from one position to another. Rather, it
shows the direction of acceleration for a particle located at its tail, and its length
(representing the acceleration magnitude) can be drawn to any scale.

Checkpoint 2
Here are four descriptions of the position (in meters) of a puck as it moves in an xy plane:
(1) x " $3t 2 # 4t $ 2
and y " 6t 2 $ 4t (3) :
r " 2t 2 î $ (4t # 3)ĵ
(2) x " $3t 3 $ 4t and y " $5t 2 # 6
(4) :
r " (4t 3 $ 2t)î # 3ĵ
Are the x and y acceleration components constant? Is acceleration :
a constant?

Sample Problem 4.03 Two-dimensional acceleration, rabbit run

For the rabbit in the preceding two sample problems, find
the acceleration :
a at time t " 15 s.

KEY IDEA

We can find :
a by taking derivatives of the rabbit’s velocity
components.
Calculations: Applying the ax part of Eq. 4-18 to Eq. 4-13,
we find the x component of :
a to be
d
dvx
"
($0.62t # 7.2) " $0.62 m /s2.
dt
dt
Similarly, applying the ay part of Eq. 4-18 to Eq. 4-14 yields
the y component as
ax "
ay "
d
dvy
"
(0.44t $ 9.1) " 0.44 m /s2.
dt
dt
We see that the acceleration does not vary with time (it is a
constant) because the time variable t does not appear in the
expression for either acceleration component. Equation 4-17
then yields
:
a " ($0.62 m /s2)î # (0.44 m /s2)ĵ ,
(Answer)
which is superimposed on the rabbit’s path in Fig. 4-7.
To get the magnitude and angle of :
a , either we use a
vector-capable calculator or we follow Eq. 3-6. For the mag-
nitude we have

a " 2a 2x # a 2y " 2($0.62 m /s2)2 # (0.44 m /s2)2
" 0.76 m/s2.
(Answer)
For the angle we have
1 " tan$1
ay
ax
y (m)
40
20
0
20
40
60
80
–20
–40
a
145°
x
–60
" tan$1
#
$
0.44 m/s2
" $353.
$0.62 m/s2
However, this angle, which is the one displayed on a calcula-
tor, indicates that :
a is directed to the right and downward in
Fig. 4-7. Yet, we know from the components that :
a must be
directed to the left and upward. To find the other angle that

has the same tangent as $35° but is not displayed on a cal-
culator, we add 180°:
$35° # 180° " 145°.
(Answer)
KEY IDEAThis is consistent with the components of :
a because it gives
a vector that is to the left and upward. Note that :
a has the
same magnitude and direction throughout the rabbit’s run
because the acceleration is constant. That means that
we could draw the very same vector at any other point
along the rabbit’s path (just shift the vector to put its tail at
some other point on the path without changing the length
or orientation).
This has been the second sample problem in which we
needed to take the derivative of a vector that is written in
unit-vector notation. One common error is to neglect the unit
vectors themselves, with a result of only a set of numbers and
symbols. Keep in mind that a derivative of a vector is always
another vector.

4-4 PROJECTILE MOTION
Learning Objectives
After reading this module, you should be able to . . .
4.13 On a sketch of the path taken in projectile motion,
explain the magnitudes and directions of the velocity
and acceleration components during the flight.
4.14 Given the launch velocity in either magnitude-angle or
unit-vector notation, calculate the particle’s position, dis-
placement, and velocity at a given instant during the flight.
4.15 Given data for an instant during the flight, calculate the
launch velocity.


Key Ideas
● In projectile motion, a particle is launched into the air with a
● The trajectory (path) of a particle in projectile motion is par-
speed v0 and at an angle u0 (as measured from a horizontal x
axis). During flight, its horizontal acceleration is zero and its
vertical acceleration is $g (downward on a vertical y axis).abolic and is given by
● The equations of motion for the particle (while in flight) canif x0 and y0 are zero.
be written as
y " (tan 10)x $
gx2
,
2(v0 cos 10)2
● The particle’s horizontal range R, which is the horizontal
x $ x0 " (v0 cos 10)t,
y $ y0 " (v0 sin 10)t $ 12 gt 2,
vy " v0 sin 10 $ gt,
v 2y " (v0 sin 10 )2 $ 2g(y $ y0).
distance from the launch point to the point at which the parti-
cle returns to the launch height, is
v2
R " 0 sin 210.

Projectile Motion
We next consider a special case of two-dimensional motion: A particle moves in a
vertical plane with some initial velocity :
v 0 but its acceleration is always the free-
fall acceleration :
g , which is downward. Such a particle is called a projectile (mean-
ing that it is projected or launched), and its motion is called projectile motion. A
projectile might be a tennis ball (Fig. 4-8) or baseball in flight, but it is not a duck
in flight. Many sports involve the study of the projectile motion of a ball. For ex-
ample, the racquetball player who discovered the Z-shot in the 1970s easily won
his games because of the ball’s perplexing flight to the rear of the court.
Our goal here is to analyze projectile motion using the tools for two-
dimensional motion described in Module 4-1 through 4-3 and making the
assumption that air has no effect on the projectile. Figure 4-9, which we shall ana-
lyze soon, shows the path followed by a projectile when the air has no effect. The
projectile is launched with an initial velocity :
v 0 that can be written as
:
v 0 " v0x î # v0y ĵ.
(4-19)
The components v0x and v0y can then be found if we know the angle u0 between :
v0
and the positive x direction:
v0x " v0 cos u0
Richard Megna/Fundamental Photographs
Figure 4-8 A stroboscopic photograph of
a yellow tennis ball bouncing off a hard
surface. Between impacts, the ball has
projectile motion.
and
v0y " v0 sin u0.
(4-20)

During its two-dimensional motion, the projectile’s position vector :
a is constant and always
v change continuously, but its acceleration vector :
vector :
directed vertically downward.The projectile has no horizontal acceleration.
Projectile motion, like that in Figs. 4-8 and 4-9, looks complicated, but we
have the following simplifying feature (known from experiment):
In projectile motion, the horizontal motion and the vertical motion are indepen-
dent of each other; that is, neither motion affects the other.



This feature allows us to break up a problem involving two-dimensional motion
into two separate and easier one-dimensional problems, one for the horizontal
motion (with zero acceleration) and one for the vertical motion (with constant
downward acceleration). Here are two experiments that show that the horizontal
motion and the vertical motion are independent.
Two Golf Balls
Figure 4-10 is a stroboscopic photograph of two golf balls, one simply released and
the other shot horizontally by a spring.The golf balls have the same vertical motion,
both falling through the same vertical distance in the same interval of time. The fact
that one ball is moving horizontally while it is falling has no effect on its vertical mo-
tion; that is, the horizontal and vertical motions are independent of each other.
A Great Student Rouser
Richard Megna/Fundamental Photographs
Figure 4-10 One ball is released from rest at
the same instant that another ball is shot
horizontally to the right. Their vertical
motions are identical.
The ball and the can fall
the same distance h.
Checkpoint 3
M
r
g
o-
Ze
p
h
at
In Fig. 4-11, a blowgun G using a ball as a projectile is aimed directly at a can sus-
pended from a magnet M. Just as the ball leaves the blowgun, the can is released. If g
(the magnitude of the free-fall acceleration) were zero, the ball would follow the
straight-line path shown in Fig. 4-11 and the can would float in place after the
magnet released it. The ball would certainly hit the can. However, g is not zero,
but the ball still hits the can! As Fig. 4-11 shows, during the time of flight of the
ball, both ball and can fall the same distance h from their zero-g locations. The
harder the demonstrator blows, the greater is the ball’s initial speed, the shorter
the flight time, and the smaller the value of h.

Checkpoint 3
M
r
g
o-
Ze
p
h
at
In Fig. 4-11, a blowgun G using a ball as a projectile is aimed directly at a can sus-
pended from a magnet M. Just as the ball leaves the blowgun, the can is released. If g
(the magnitude of the free-fall acceleration) were zero, the ball would follow the
straight-line path shown in Fig. 4-11 and the can would float in place after the
magnet released it. The ball would certainly hit the can. However, g is not zero,
but the ball still hits the can! As Fig. 4-11 shows, during the time of flight of the
ball, both ball and can fall the same distance h from their zero-g locations. The
harder the demonstrator blows, the greater is the ball’s initial speed, the shorter
the flight time, and the smaller the value of h.
v " 25î $ 4.9ĵ (the x axis is horizontal, the
At a certain instant, a fly ball has velocity :
y axis is upward, and :
v is in meters per second). Has the ball passed its highest point?
Can
h
G
Figure 4-11 The projectile ball always
hits the falling can. Each falls a distance h
from where it would be were there no
free-fall acceleration.
The Horizontal Motion
Now we are ready to analyze projectile motion, horizontally and vertically.
We start with the horizontal motion. Because there is no acceleration in the hori-
zontal direction, the horizontal component vx of the projectile’s velocity remains
unchanged from its initial value v0x throughout the motion, as demonstrated in
Fig. 4-12. At any time t, the projectile’s horizontal displacement x $ x0 from an
initial position x0 is given by Eq. 2-15 with a " 0, which we write as
x $ x0 " v0x t.
Because v0x " v0 cos u0, this becomes
x $ x0 " (v0 cos u0)t.
(4-21)
The Vertical Motion
The vertical motion is the motion we discussed in Module 2-5 for a particle in
free fall. Most important is that the acceleration is constant. Thus, the equations
of Table 2-1 apply, provided we substitute $g for a and switch to y notation. Then,
for example, Eq. 2-15 becomes
y $ y0 " v0yt $ 12gt 2
" (v0 sin 10)t $ 12gt 2,
(4-22)

where the initial vertical velocity component v0y is replaced with the equivalent
v0 sin u0. Similarly, Eqs. 2-11 and 2-16 become
vy " v0 sin u0 $ gt
(4-23)
and
v2y " (v0 sin 10)2 $ 2g(y $ y0).
(4-24)

As is illustrated in Fig. 4-9 and Eq. 4-23, the vertical velocity component be-
haves just as for a ball thrown vertically upward. It is directed upward initially,
and its magnitude steadily decreases to zero, which marks the maximum height of
the path. The vertical velocity component then reverses direction, and its magni-
tude becomes larger with time.
The Equation of the Path
We can find the equation of the projectile’s path (its trajectory) by eliminating
time t between Eqs. 4-21 and 4-22. Solving Eq. 4-21 for t and substituting into
Eq. 4-22, we obtain, after a little rearrangement,
y " (tan 10)x $
gx 2
2(v0 cos 10)2
(trajectory).
(4-25)
This is the equation of the path shown in Fig. 4-9. In deriving it, for simplicity we
let x0 " 0 and y0 " 0 in Eqs. 4-21 and 4-22, respectively. Because g, u0, and v0 are
constants, Eq. 4-25 is of the form y " ax # bx2, in which a and b are constants.
This is the equation of a parabola, so the path is parabolic.

The Horizontal Range
The horizontal range R of the projectile is the horizontal distance the projectile
has traveled when it returns to its initial height (the height at which it is
launched). To find range R, let us put x $ x0 " R in Eq. 4-21 and y $ y0 " 0 in
Eq. 4-22, obtaining

Eliminating t between these two equations yields
2v20
R"
sin 10 cos 10.
g
v0
Using the identity sin 2u0 " 2 sin u0 cos u0 (see Appendix E), we obtain
R"
v20
sin 210.
g
... and range.
y
II
I
60°
(4-26)
This equation does not give the horizontal distance traveled by a projectile when
the final height is not the launch height. Note that R in Eq. 4-26 has its maximum
value when sin 2u0 " 1, which corresponds to 2u0 " 90° or u0 " 45°.

The horizontal range R is maximum for a launch angle of 45°.
However, when the launch and landing heights differ, as in many sports, a launch
angle of 45° does not yield the maximum horizontal distance.

The Effects of the Air
We have assumed that the air through which the projectile moves has no effect
on its motion. However, in many situations, the disagreement between our calcu-
lations and the actual motion of the projectile can be large because the air resists
(opposes) the motion. Figure 4-13, for example, shows two paths for a fly ball that
leaves the bat at an angle of 60° with the horizontal and an initial speed of
44.7 m/s. Path I (the baseball player’s fly ball) is a calculated path that
approximates normal conditions of play, in air. Path II (the physics professor’s fly
ball) is the path the ball would follow in a vacuum.

Checkpoint 4
A fly ball is hit to the outfield. During its flight (ignore the effects of the air), what
happens to its (a) horizontal and (b) vertical components of velocity? What are the (c)
horizontal and (d) vertical components of its acceleration during ascent, during de-
scent, and at the topmost point of its flight?

Sample Problem 4.04 Projectile dropped from airplane
In Fig. 4-14, a rescue plane flies at 198 km/h (" 55.0 m/s) and
constant height h " 500 m toward a point directly over a
victim, where a rescue capsule is to land.
(a) What should be the angle f of the pilot’s line of sight to
the victim when the capsule release is made?

KEY IDEAS
Once released, the capsule is a projectile, so its horizontal
and vertical motions can be considered separately (we need
not consider the actual curved path of the capsule).
Calculations: In Fig. 4-14, we see that f is given by

4 " tan$1
x
,
h
(4-28)
Here we know that x0 " 0 because the origin is placed at
the point of release. Because the capsule is released and
not shot from the plane, its initial velocity :
v 0 is equal to
the plane’s velocity. Thus, we know also that the initial ve-
locity has magnitude v0 " 55.0 m/s and angle u0 " 0°
(measured relative to the positive direction of the x axis).
However, we do not know the time t the capsule takes to
move from the plane to the victim.
To find t, we next consider the vertical motion and
specifically Eq. 4-22:
y $ y0 " (v0 sin 10)t $ 12gt 2.
(4-29)
Here the vertical displacement y $ y0 of the capsule is
$500 m (the negative value indicates that the capsule
moves downward). So,
$500 m " (55.0 m/s)(sin 03)t $ 12 (9.8 m/s2)t 2.
(4-30)
Solving for t, we find t " 10.1 s. Using that value in Eq. 4-28
yields
x $ 0 " (55.0 m/s)(cos 0°)(10.1 s),
(4-31)
or
x " 555.5 m.
f si
ry
gh
t
θ
v
Figure 4-14 A plane drops a rescue capsule while moving at
constant velocity in level flight. While falling, the capsule
remains under the plane.
(4-27)
where x is the horizontal coordinate of the victim (and of
the capsule when it hits the water) and h " 500 m. We
should be able to find x with Eq. 4-21:
x $ x0 " (v0 cos u0)t.

Then Eq. 4-27 gives us
555.5 m
(Answer)
" 48.03.
500 m
(b) As the capsule reaches the water, what is its velocity :
v?
4 " tan$1
KEY IDEAS
(1) The horizontal and vertical components of the capsule’s
velocity are independent. (2) Component vx does not change
from its initial value v0x " v0 cos u0 because there is no hori-
zontal acceleration. (3) Component vy changes from its initial
value v0y " v0 sin u0 because there is a vertical acceleration.
Calculations: When the capsule reaches the water,
vx " v0 cos u0 " (55.0 m/s)(cos 0°) " 55.0 m/s.
Using Eq. 4-23 and the capsule’s time of fall t " 10.1 s, we
also find that when the capsule reaches the water,
vy " v0 sin u0 $ gt
" (55.0 m/s)(sin 0°) $ (9.8 m/s2)(10.1 s)
" $99.0 m/s.
Thus, at the water
:
v " (55.0 m /s)î $ (99.0 m /s)ĵ.
(Answer)
From Eq. 3-6, the magnitude and the angle of :
v are
v " 113 m/s and
Additional examples, video, and practice available at WileyPLUS
u " $60.9°.
(Answer)

Sample Problem 4.05 Launched into the air from a water slide

One of the most dramatic videos on the web (but entirely
fictitious) supposedly shows a man sliding along a long wa-
ter slide and then being launched into the air to land in a
water pool. Let’s attach some reasonable numbers to such
a flight to calculate the velocity with which the man would
have hit the water. Figure 4-15a indicates the launch and
landing sites and includes a superimposed coordinate sys-
tem with its origin conveniently located at the launch site.
From the video we take the horizontal flight distance as
D " 20.0 m, the flight time as t " 2.50 s, and the launch an-
gle as 10 " 40.0°. Find the magnitude of the velocity at
launch and at landing.

KEY IDEAS

(1) For projectile motion, we can apply the equations for con-
stant acceleration along the horizontal and vertical axes sepa-
rately. (2) Throughout the flight, the vertical acceleration is
ay " $g " $9.8 m/s and the horizontal acceleration is ax " 0.
Calculations: In most projectile problems, the initial chal-
lenge is to figure out where to start. There is nothing wrong
with trying out various equations, to see if we can somehow
get to the velocities. But here is a clue. Because we are going
to apply the constant-acceleration equations separately to
the x and y motions, we should find the horizontal and verti-
cal components of the velocities at launch and at landing.
For each site, we can then combine the velocity components
to get the velocity.
Because we know the horizontal displacement D "
20.0 m, let’s start with the horizontal motion. Since ax " 0,

we know that the horizontal velocity component vx is con-
stant during the flight and thus is always equal to the hori-
zontal component v0x at launch. We can relate that compo-
nent, the displacement x $ x0, and the flight time t " 2.50 s
with Eq. 2-15:

x $ x0 " v0xt # 12axt 2.
(4-32)
Substituting ax " 0, this becomes Eq. 4-21. With x $ x0 " D,
we then write
20 m " v0x(2.50 s) # 12 (0)(2.50 s)2
v0x " 8.00 m/s.

That is a component of the launch velocity, but we need
the magnitude of the full vector, as shown in Fig. 4-15b,
where the components form the legs of a right triangle and
the full vector forms the hypotenuse. We can then apply a
trig definition to find the magnitude of the full velocity at
launch:

cos10 "
v0
and so
v0x
8.00 m/s
"
v0 "
cos u0
cos 40$

Now let’s go after the magnitude v of the landing veloc-
ity. We already know the horizontal component, which does
not change from its initial value of 8.00 m/s. To find the verti-
cal component vy and because we know the elapsed time t "
2.50 s and the vertical acceleration ay " $9.8 m/s2, let’s
rewrite Eq. 2-11 as
y
vy " v0y # ayt
v0
θ0
x
Launch
and then (from Fig. 4-15b) as
Water
pool
(4-33)
vy " v0 sin 10 # ayt.
Substituting ay " $g, this becomes Eq. 4-23.We can then write
vy " (10.44 m/s) sin (40.0$) $ (9.8 m/s2)(2.50 s)
D
(a)
v0
Launch
velocity
θ0
v0x
(b)
v0y
" $17.78 m/s.
v0x
θ0
Landing
velocity
v
Now that we know both components of the landing velocity,
we use Eq. 3-6 to find the velocity magnitude:
vy
(c)
Figure 4-15 (a) Launch from a water slide, to land in a water pool.
The velocity at (b) launch and (c) landing.
v " 2v 2x # v 2y
" 2(8.00 m/s)2 # ($17.78 m/s)2
" 19.49 m/s2 % 19.5 m/s.
Additional examples, video, and practice available at WileyPLUS
(Answer)

4-5 UNIFORM CIRCULAR MOTION
Learning Objectives
After reading this module, you should be able to . . .
4.16 Sketch the path taken in uniform circular motion and ex-
plain the velocity and acceleration vectors (magnitude and
direction) during the motion.
4.17 Apply the relationships between the radius of the circu-
lar path, the period, the particle’s speed, and the particle’s
acceleration magnitude.

Key Ideas
● If a particle travels along a circle or circular arc of radius r at
constant speed v, it is said to be in uniform circular motion
and has an acceleration :
a of constant magnitude
v2
a"
.
r
:
The direction of a is toward the center of the circle or circular
The acceleration vector
always points toward the
center.
v
v
a
a
The velocity
vector is always
tangent to the path.
a
arc, and :
a is said to be centripetal. The time for the particle to
complete a circle is
2) r
T"
.
v
T is called the period of revolution, or simply the period, of the
motion.

Uniform Circular Motion
A particle is in uniform circular motion if it travels around a circle or a circular
arc at constant (uniform) speed. Although the speed does not vary, the particle is
accelerating because the velocity changes in direction.
Figure 4-16 shows the relationship between the velocity and acceleration
vectors at various stages during uniform circular motion. Both vectors have
constant magnitude, but their directions change continuously. The velocity is
always directed tangent to the circle in the direction of motion. The accelera-
tion is always directed radially inward. Because of this, the acceleration associ-
ated with uniform circular motion is called a centripetal (meaning “center seek-
ing”) acceleration. As we prove next, the magnitude of this acceleration :
a is
v
Figure 4-16 Velocity and acceleration
vectors for uniform circular motion.
a"
v2
r
(centripetal acceleration),
(4-34)
where r is the radius of the circle and v is the speed of the particle.
In addition, during this acceleration at constant speed, the particle travels the
circumference of the circle (a distance of 2pr) in time
T"
2) r
v
(period).
(4-35)
T is called the period of revolution, or simply the period, of the motion. It is, in
general, the time for a particle to go around a closed path exactly once.

Proof of Eq. 4-34
To find the magnitude and direction of the acceleration for uniform circular
motion, we consider Fig. 4-17. In Fig. 4-17a, particle p moves at constant speed
v around a circle of radius r. At the instant shown, p has coordinates xp and yp.
Recall from Module 4-2 that the velocity :
v of a moving particle is always
tangent to the particle’s path at the particle’s position. In Fig. 4-17a, that means
:
v is perpendicular to a radius r drawn to the particle’s position. Then the angle
u that :
v makes with a vertical at p equals the angle u that radius r makes with
the x axis.

The scalar components of :
v are shown in Fig. 4-17b. With them, we can write
the velocity :
v as
:
v " vx î # vy ĵ " ($v sin 1)î # (v cos 1)ĵ.
v
p
(4-36)
r
Now, using the right triangle in Fig. 4-17a, we can replace sin u with yp /r and
cos u with xp /r to write
vxp
vy
:
ĵ .
v " $ p î #
(4-37)
r
r
#
θ
xp
$ # $
To find the acceleration :
a of particle p, we must take the time derivative of this
equation. Noting that speed v and radius r do not change with time, we obtain
#
$ #
:
dv
v dyp
" $
î #
a"
dt
r dt
:
$
v dxp
ĵ.
r dt
#
$ #
$
x
y
v
(4-38)
v2
v2
a" $
cos 1 î # $
sin 1 ĵ.
r
r
yp
(a)
Now note that the rate dyp /dt at which yp changes is equal to the velocity
component vy. Similarly, dxp /dt " vx, and, again from Fig. 4-17b, we see that vx "
$v sin u and vy " v cos u. Making these substitutions in Eq. 4-38, we find
:
θ
θ vy
vx
x
(4-39)
This vector and its components are shown in Fig. 4-17c. Following Eq. 3-6, we find
a " 2a 2x # a 2y "
(b)
v2
v2
v2
2(cos 1)2 # (sin 1)2 "
11 "
,
r
r
r
y
as we wanted to prove. To orient :
a , we find the angle f shown in Fig. 4-17c:

tan 4 "
ax
ay
$(v /r) sin 1
"
" tan 1.
ax
$(v2/r) cos 1
2
a
φ
ay
x
Thus, f " u, which means that :
a is directed along the radius r of Fig. 4-17a,
toward the circle’s center, as we wanted to prove.
Checkpoint 5
(c)
An object moves at constant speed along a circular path in a horizontal xy plane, with
the center at the origin. When the object is at x " $2 m, its velocity is $(4 m/s) ĵ. Give
the object’s (a) velocity and (b) acceleration at y " 2 m.

Sample Problem 4.06 Top gun pilots in turns
“Top gun” pilots have long worried about taking a turn too
tightly. As a pilot’s body undergoes centripetal acceleration,
with the head toward the center of curvature, the blood pres-
sure in the brain decreases, leading to loss of brain function.
There are several warning signs. When the centripetal
acceleration is 2g or 3g, the pilot feels heavy. At about 4g,
the pilot’s vision switches to black and white and narrows to
“tunnel vision.” If that acceleration is sustained or in-
creased, vision ceases and, soon after, the pilot is uncon-
scious — a condition known as g-LOC for “g-induced loss of
consciousness.”
What is the magnitude of the acceleration, in g units, of
a pilot whose aircraft enters a horizontal circular turn with a
velocity of :
vi " (400î # 500ĵ) m/s and 24.0 s later leaves the
turn with a velocity of :
v f " ($400î $ 500 ĵ) m/s?

KEY IDEAS
We assume the turn is made with uniform circular motion.
Then the pilot’s acceleration is centripetal and has magni-
tude a given by Eq. 4-34 (a " v2/R), where R is the circle’s
radius. Also, the time required to complete a full circle is the
period given by Eq. 4-35 (T " 2pR/v).
Calculations: Because we do not know radius R, let’s solve
Eq. 4-35 for R and substitute into Eq. 4-34. We find
2)v
.
T
To get the constant speed v, let’s substitute the components
of the initial velocity into Eq. 3-6:
a"
v " 2(400 m/s)2 # (500 m/s)2 " 640.31 m/s.

To find the period T of the motion, first note that the final
velocity is the reverse of the initial velocity. This means the
aircraft leaves on the opposite side of the circle from the ini-
tial point and must have completed half a circle in the given
24.0 s. Thus a full circle would have taken T " 48.0 s.
Substituting these values into our equation for a, we find
a"
2)(640.31 m/s)
" 83.81 m/s2 % 8.6g.
48.0 s
(Answer)

4-6 RELATIVE MOTION IN ONE DIMENSION
Learning Objective
After reading this module, you should be able to . . .
4.18 Apply the relationship between a particle’s position, ve-
locity, and acceleration as measured from two reference
frames that move relative to each other at constant velocity
and along a single axis.

Key Idea
● When two frames of reference A and B are moving relative
to each other at constant velocity, the velocity of a particle P
as measured by an observer in frame A usually differs from
that measured from frame B. The two measured velocities are
related by
:
:
:
v PA " v PB # v BA,
where :
v BA is the velocity of B with respect to A. Both ob-
servers measure the same acceleration for the particle:
:
a PA " :
a PB.

Relative Motion in One Dimension

Suppose you see a duck flying north at 30 km/h. To another duck flying alongside,
the first duck seems to be stationary. In other words, the velocity of a particle de-
pends on the reference frame of whoever is observing or measuring the velocity.
For our purposes, a reference frame is the physical object to which we attach our
coordinate system. In everyday life, that object is the ground. For example, the
speed listed on a speeding ticket is always measured relative to the ground. The
speed relative to the police officer would be different if the officer were moving
while making the speed measurement.
Suppose that Alex (at the origin of frame A in Fig. 4-18) is parked by the side
of a highway, watching car P (the “particle”) speed past. Barbara (at the origin of
frame B) is driving along the highway at constant speed and is also watching car P.
Suppose that they both measure the position of the car at a given moment. From
Fig. 4-18 we see that
xPA " xPB # xBA.
(4-40)
The equation is read: “The coordinate xPA of P as measured by A is equal to the
coordinate xPB of P as measured by B plus the coordinate xBA of B as measured
by A.” Note how this reading is supported by the sequence of the subscripts.
Taking the time derivative of Eq. 4-40, we obtain
d
d
d
(xPA) "
(xPB) #
(x ).
dt
dt
dt BA

Thus, the velocity components are related by
vPA " vPB # vBA.
(4-41)
This equation is read: “The velocity vPA of P as measured by A is equal to the

velocity vPB of P as measured by B plus the velocity vBA of B as measured by A.”
The term vBA is the velocity of frame B relative to frame A.
Here we consider only frames that move at constant velocity relative to
each other. In our example, this means that Barbara (frame B) drives always at
constant velocity vBA relative to Alex (frame A). Car P (the moving particle),
however, can change speed and direction (that is, it can accelerate).
To relate an acceleration of P as measured by Barbara and by Alex, we take
the time derivative of Eq. 4-41:
d
d
d
(vPA) "
(vPB) #
(v ).
dt
dt
dt BA
Because vBA is constant, the last term is zero and we have
aPA " aPB.
(4-42)
In other words,
Observers on different frames of reference that move at constant velocity relative
to each other will measure the same acceleration for a moving particle.

Sample Problem 4.07 Relative motion, one dimensional, Alex and Barbara

In Fig. 4-18, suppose that Barbara’s velocity relative to Alex
is a constant vBA " 52 km/h and car P is moving in the nega-
tive direction of the x axis.
(a) If Alex measures a constant vPA " $78 km/h for car P,
what velocity vPB will Barbara measure?
KEY IDEAS

We can attach a frame of reference A to Alex and a frame of
reference B to Barbara. Because the frames move at constant
velocity relative to each other along one axis, we can use
Eq. 4-41 (vPA " vPB # vBA) to relate vPB to vPA and vBA.

Calculation: We find

$78 km/h " vPB # 52 km/h.
Thus,
to relate the acceleration to the initial and final velocities
of P.
(Answer)
Comment: If car P were connected to Barbara’s car by a
cord wound on a spool, the cord would be unwinding at
a speed of 130 km/h as the two cars separated.
(b) If car P brakes to a stop relative to Alex (and thus rela-
tive to the ground) in time t " 10 s at constant acceleration,
what is its acceleration aPA relative to Alex?

KEY IDEAS
To calculate the acceleration of car P relative to Alex, we
must use the car’s velocities relative to Alex. Because the
acceleration is constant, we can use Eq. 2-11 (v " v0 # at)

to relate the acceleration to the initial and final velocities
of P.

Calculation: The initial velocity of P relative to Alex is
vPA " $78 km/h and the final velocity is 0. Thus, the acceler-
ation relative to Alex is
0 $ ($78 km/h) 1 m/s
v $ v0
"
t
10 s
3.6 km/h
2
(Answer)
" 2.2 m/s .

c) What is the acceleration aPB of car P relative to Barbara
during the braking?
KEY IDEA

To calculate the acceleration of car P relative to Barbara, we
must use the car’s velocities relative to Barbara.
Calculation: We know the initial velocity of P relative to
Barbara from part (a) (vPB " $130 km/h). The final veloc-
ity of P relative to Barbara is $52 km/h (because this is
the velocity of the stopped car relative to the moving
Barbara). Thus,
$52 km/h $ ($130 km/h) 1 m/s
v $ v0
"
t
10 s
3.6 km/h
2
" 2.2 m/s .
(Answer)
aPB "
Comment: We should have foreseen this result: Because
Alex and Barbara have a constant relative velocity, they
must measure the same acceleration for the car

4-7 RELATIVE MOTION IN TWO DIMENSIONS
Learning Objective
After reading this module, you should be able to . . .
4.19 Apply the relationship between a particle’s position, ve-
locity, and acceleration as measured from two reference
frames that move relative to each other at constant velocity
and in two dimensions.

Key Idea
:
v PA " :
v PB # :
v BA,
● When two frames of reference A and B are moving relative
to each other at constant velocity, the velocity of a particle
P as measured by an observer in frame A usually differs from
that measured from frame B. The two measured velocities are
related by
P
y
rPB
vBA
rBA
Frame A
:
:
a PA " a PB.
Relative Motion in Two Dimensions
y
rPA
:
where v BA is the velocity of B with respect to A. Both
observers measure the same acceleration for the particle:


Relative Motion in Two Dimensions
y
rPA
:
where v BA is the velocity of B with respect to A. Both
observers measure the same acceleration for the particle:
x
Frame B
x
Figure 4-19 Frame B has the constant
two-dimensional velocity :
v BA relative to
frame A. The position vector of B relative
to A is :
r BA. The position vectors of parti-
cle P are :
r PB
r PA relative to A and :
relative to B.
Our two observers are again watching a moving particle P from the origins of refer-
:
ence frames A and B, while B moves at a constant velocity v BA relative to A. (The
corresponding axes of these two frames remain parallel.) Figure 4-19 shows a cer-
tain instant during the motion. At that instant, the position vector of the origin of B
:
relative to the origin of A is :
r BA.Also, the position vectors of particle P are r PA rela-
:
tive to the origin of A and r PB relative to the origin of B. From the arrangement of
heads and tails of those three position vectors, we can relate the vectors with
:
:
:
r PA " r PB # r BA.
(4-43)
By taking the time derivative of this equation, we can relate the velocities :
v PA
and :
v PB of particle P relative to our observers:
:
v PA " :
v PB # :
v BA.
(4-44)
By taking the time derivative of this relation, we can relate the accelerations :
a PA
and :
a PB of the particle P relative to our observers. However, note that because
:
v BA is constant, its time derivative is zero. Thus, we get
:
a PA " :
a PB.
(4-45)
As for one-dimensional motion, we have the following rule: Observers on differ-
ent frames of reference that move at constant velocity relative to each other will
measure the same acceleration for a moving particle.

Sample Problem 4.08 Relative motion, two dimensional, airplanes
In Fig. 4-20a, a plane moves due east while the pilot points
the plane somewhat south of east, toward a steady wind that
blows to the northeast. The plane has velocity :
v PW relative
to the wind, with an airspeed (speed relative to the wind)
of 215 km/h, directed at angle u south of east. The wind
has velocity :
v WG relative to the ground with speed
65.0 km/h, directed 20.0° east of north. What is the magni-
tude of the velocity :
v PG of the plane relative to the ground,
and what is 1?
KEY IDEAS
The situation is like the one in Fig. 4-19. Here the moving par-
ticle P is the plane, frame A is attached to the ground (call it
G), and frame B is “attached” to the wind (call it W). We need
a vector diagram like Fig. 4-19 but with three velocity vectors.
Calculations: First we construct a sentence that relates the
three vectors shown in Fig. 4-20b:

velocity of plane
velocity of plane
velocity of wind
"
#
relative to ground relative to wind relative to ground.
(PG)
(PW)
(WG)
This is the plane's actual
direction of travel.
N
vPG
This relation is written in vector notation as
:
v PW # :
v WG.
v PG " :
(4-46)
We need to resolve the vectors into components on the co-
ordinate system of Fig. 4-20b and then solve Eq. 4-46 axis by
axis. For the y components, we find
E
θ
This is the plane's
orientation.
N
(a)
Solving for u gives us
vPG
y
(65.0 km/h)(cos 20.03)
" 16.53.
215 km/h
vWG
This is the wind
direction.
0 " $(215 km/h) sin u # (65.0 km/h)(cos 20.0°).
1 " sin$1
20°
vPW
vPG,y " vPW,y # vWG,y
or
81
θ
(Answer)
vWG
vPW
x
Similarly, for the x components we find
The actual direction
is the vector sum of
the other two vectors
(head-to-tail arrangement).
vPG,x " vPW,x # vWG,x.
Here, because :
v PG is parallel to the x axis, the component
vPG,x is equal to the magnitude vPG. Substituting this nota-
tion and the value u " 16.5°, we find
vPG " (215 km/h)(cos 16.5°) # (65.0 km/h)(sin 20.0°)
" 228 km/h.
(Answer)

Review & Summary


Position Vector The location of a particle relative to the ori-
:
gin of a coordinate system is given by a position vector r , which in
unit-vector notation is

Here x î , y ĵ , and z k̂ are the vector components of position vector :
r,
and x, y, and z are its scalar components (as well as the coordinates
of the particle). A position vector is described either by a magni-
tude and one or two angles for orientation, or by its vector or
scalar components.

Displacement If a particle moves so that its position vector
changes from :
r 1 to :
r 2, the particle’s displacement -:
r is
-r " :
r2 $ :
r 1.
(4-2)
The displacement can also be written as
-:
r " (x2 $ x1)î # ( y2 $ y1)ĵ # (z2 $ z1)k̂
" -xî # -yĵ # -zk̂.
v"
(4-4)

Average Velocity and Instantaneous Velocity If a parti-

cle undergoes a displacement - r in time interval -t, its average ve-
locity :
v avg for that time interval is
:
v avg "
-:
r
.
-t
(4-8)

As -t in Eq. 4-8 is shrunk to 0, :
v avg reaches a limit called either the
velocity or the instantaneous velocity :
v:

which can be rewritten in unit-vector notation as

where vx " dx /dt, vy " dy /dt, and vz " dz /dt. The instantaneous
velocity :
v of a particle is always directed along the tangent to the
particle’s path at the particle’s position.
Average Acceleration and Instantaneous Acceleration
If a particle’s velocity changes from :
v 1 to :
v 2 in time interval -t, its
average acceleration during -t is
a avg "
:
v2 $ :
v1
-t
"
:
-v
.
-t
(4-15)
As -t in Eq. 4-15 is shrunk to 0, :
a avg reaches a limiting value called
a:
either the acceleration or the instantaneous acceleration

In unit-vector notation,
d:
v
.
dt
:
a " ax î # ay ĵ # azk̂,
where ax " dvx /dt, ay " dvy /dt, and az " dvz /dt.

Projectile Motion Projectile motion is the motion of a particle
that is launched with an initial velocity :
v 0. During its flight, the par-
ticle’s horizontal acceleration is zero and its vertical acceleration is
the free-fall acceleration $g. (Upward is taken to be a positive di-
rection.) If :
v 0 is expressed as a magnitude (the speed v0) and an an-
gle u0 (measured from the horizontal), the particle’s equations of
motion along the horizontal x axis and vertical y axis are
x $ x0 " (v0 cos u0)t,(4-21)
y $ y0 " (v0 sin 10)t $ 12gt 2,(4-22)
vy " v0 sin u0 $ gt,(4-23)
v 2y " (v0 sin 10)2 $ 2g(y $ y0).(4-24)
The trajectory (path) of a particle in projectile motion is parabolic
and is given by
gx2
,
(4-25)
y " (tan 10)x $
2(v0 cos 10)2
if x0 and y0 of Eqs. 4-21 to 4-24 are zero. The particle’s horizontal
range R, which is the horizontal distance from the launch point to
the point at which the particle returns to the launch height, is
v2
R " 0 sin 210.

Uniform Circular Motion If a particle travels along a circle or
circular arc of radius r at constant speed v, it is said to be in uniform
circular motion and has an acceleration :
a of constant magnitude
a"
v2
.
r
(4-34)
The direction of :
a is toward the center of the circle or circular arc,
and :
a is said to be centripetal. The time for the particle to complete
a circle is
2)r
.
(4-35)
T"
v
T is called the period of revolution, or simply the period, of the
motion.
Relative Motion When two frames of reference A and B are
moving relative to each other at constant velocity, the velocity of a par-
ticle P as measured by an observer in frame A usually differs from that
measured from frame B.The two measured velocities are related by
:
v PA " :
v PB # :
v BA,
(4-44)
v BA is the velocity of B with respect to A. Both observers
where :
measure the same acceleration for the particle:
:
a PB.
a PA " :
(4-45)

Questions

1 Figure 4-21 shows the path taken by
a skunk foraging for trash food, from
initial point i. The skunk took the same
time T to go from each labeled point to
the next along its path. Rank points a, b,
and c according to the magnitude of the
average velocity of the skunk to reach
them from initial point i, greatest first.

2 Figure 4-22 shows the initial posi-
Question
1.
tion i and the final position f of a parti-
cle. What are the (a) initial position
:
vector :
r i and (b) final position vector rf , both in unit-vector nota-
tion? (c) What is the x component of displacement -:
r?


3
When Paris was shelled from 100 km away with the WWI
long-range artillery piece “Big Bertha,” the shells were fired at an
angle greater than 45º to give them a greater range, possibly even

9999

