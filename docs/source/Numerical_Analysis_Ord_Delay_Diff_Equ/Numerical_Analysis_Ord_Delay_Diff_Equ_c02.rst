Chapter 2 Initial-Value Problems of Differential Equations: Theory
==================================================================


We already introduced the concept and examples of ordinary differential equations in Chap. 1. To deal with numerical solutions of 
the equation, several basic notions and analyses are required. Here we will brieﬂy study a theory of ordinary differential 
equations and become acquainted with concepts such as continuous dependency with the initial value and stability of solution of 
the equation. The concepts will be extended to the case of differential equations with delay in the later chapters.

2.1 Existence and Uniqueness of Solution

As we already mentioned in Sect. 1.2, a theorem about the existence of a solution of the initial-value problem of the ordinary 
differential equation (1.4) is the start of our analysis, for numerical computations of an equation without solution are 
meaningless. Here, we try to give a proof of the theorem. You are required to keep Fig. 1.3 in mind.

Proof of Theorem 1.1 Using the constants ρ, R and M, we denote min(ρ, R/M) by Δ. We will note that the initial-value problem (1.4) 
has the equivalent integral expression

t x(t) = ξ + f (τ, x(τ)) dτ ∫ t0 

(2.1)

on the interval [ t 0 , t 0 + Δ ] . This means the problem is converted to an integral equation for x(t) and we are to establish 
existence of its solution. To this end, we deﬁne a sequence of functions { x n (t) } (n = 1, 2, 3, . . .) by the recurrence 
formula

x n (t) = ξ + f (τ, x n−1 (τ)) dτ for t ∈ [ t 0 , t 0 + Δ ] (n = 1, 2, 3, . . .) (2.2) ∫ t0 

with x 0 (t) ≡ ξ. The sequence, which is often called the Picard sequence, is expected to converge to the function x(t) which 
satisﬁes (2.1) [and therefore (1.4)]. Since we assumed that the function f satisﬁes the condition (C) solely in the domain D, we 
must show that ∥ x n (t) − ξ ∥ ≤ R for every t ∈ [ t 0 , t 0 + Δ ] . For n = 1, we can derive

t ∥ x 1 (t) − x 0 (t) ∥ ≤ ∥ f (τ, ξ) ∥ dτ ≤ MΔ ≤ R ∫ t0 

for all t ∈ [ t 0 , t0  the estimation

+

Δ ] . Thus, we assume that x n−1 (t) lies in D. Then, on [ t 0 , t0 

+

Δ ]

t ∥ x n (t) − ξ ∥ ≤ ∥ f (τ, x n−1 (τ)) ∥ dτ ≤ MΔ ≤ R ∫ t0 

holds again and by induction we can say that the whole sequence { x n (t) } is in the domain D.

Since the identity

x n (t) = ξ + (x 1 (t) − x 0 (t)) + (x 2 (t) − x 1 (t)) + · · · + (x n (t) − x n−1 (t))

∞

is obvious, the convergency of the function series

∑

k=1

(x k (t) − x k−1 (t)) will imply

the existence of lim x n (t). To obtain it, we introduce the difference X k (t) =

n→∞

∥

x k (t) − x k−1 (t) ∥ and estimate it as follows:

‖ t ‖ X k + 1 (t) = ‖ ‖ ( f (τ, x k (τ)) − f (τ, x k−1 (τ))) dτ ‖ ‖ ‖ ∫ t 0 ‖

t t ≤ L ∥ x k (τ) − x k−1 (τ) ∥ dτ = L X k (τ) dτ ∫ t 0 ∫ t0 

for k = 1, 2, . . .

Since the estimation

‖ t ‖ X 1 (t) = ‖ ‖ f (τ, ξ) dτ ‖ ‖ ≤ M(t − t 0 ) ‖ ∫ t 0 ‖

holds, we are to show the estimate

(t − t 0 )k  X k (t) ≤ MLk−1  k!

for all k. Assuming this is true for up to k, we can calculate

t t (τ − t 0 ) k (t − t 0 )k + 1  X k + 1 (t) ≤ L X k (τ) dτ ≤ L ML k−1 dτ = MLk  . ∫ t 0 ∫ t 0 k! (k + 1)!

Our target is attained by induction. Furthermore, the assumption t − t0 

≤

Δ derives

M (LΔ)k + 1  X k + 1 (t) = ∥ x k + 1 (t) − x k (t) ∥ ≤ . L (k + 1)!

∞

∑

k=0

∞

Since the inﬁnite series

(LΔ) k + 1 /(k + 1)! converges, the inﬁnite sum

∑

(xk + 1 

k=0

(t) − x k (t)) converges uniformly on [ t 0 , t 0 + Δ ] . Therefore the Picard sequence { x n (t) } has a limit x(t) which 
satisﬁes the integral equation (2.1). Furthermore, since a uniform limit of continuous functions is also continuous, x(t) 
satisﬁes the given differential equation and it fulﬁlls the initial condition, too.

Next, wewill showtheuniqueness of thesolutionunder thehypothesis of Theorem 1.1. The integral expression (2.1) serves the goal 
again. Assume that there are two solutions x(t) and y(t) (of course they are continuous on [ t 0 , t 0 + Δ ] ). Namely,

t t x(t) = ξ + f (τ, x(τ)) dτ and y(t) = ξ + f (τ, y(τ)) dτ. ∫ t 0 ∫ t0 

On the interval [ t 0 , t0 

+

δ ] (note δ, not Δ) we have

‖ t ‖ ∥ x(t) − y(t) ∥ = ‖ ‖ ( f (τ, x(τ)) − f (τ, y(τ))) dτ ‖ ‖ ‖ ∫ t 0 ‖

t ≤ L ∥ x(τ) − y(τ) ∥ dτ ≤ Lδ max ∥ x(t) − y(t) ∥ . ∫ t 0 t∈ [ t 0 ,t 0 + δ ]

This means the inequality

max ∥ x(t) − y(t) ∥ ≤ Lδ max ∥ x(t) − y(t) ∥ t∈ [ t 0 ,t 0 + δ ] t∈ [ t 0 ,t 0 + δ ]

holds. However, a positive δ can be sufﬁciently small so that Lδ becomes less than unity. Then the above inequality can be valid 
only for the case max ∥ x(t) −

t∈ [ t 0 ,t 0 + δ ]

y(t) ∥ = 0.Thus,twosolutionscoincideon [ t 0 , t 0 + δ ] .Thesameassertionisrepeated on [ t 0 + δ, t 0 + 2δ ] , [ t 0 + 2δ, t 0 + 
3δ ] and so on, and we can conﬁrm the identity x(t) = y(t) holds on [ t 0 , t 0 + Δ ] .  We emphasize again that the condition 
(C) is a sufﬁcient condition of unique existence of (local) solution of the initial-value problem (1.4). What happens if the 
condition breaks down?

Example 2.1 We think about the initial-value problem

Fig. 2.1 Solutions of Example 2.1

dx = ) with x(t 0 ) = 0. √ x (t > t0  dt

It is easy to conﬁrm that the function x(t) = (1/4)(t − t 0 ) 2 is a solution by substituting it into the differential equation. 
However, x(t) ≡ 0 is a solution, too. Moreover, the smooth function deﬁned by

0 (t 0 t ≤ t 1 ) x(t) = ≤ { (1/4)(t − t 1 ) 2 (t > t 1 )

is a solution again for any t 1 (> t 0 ). Hence, we can see there are inﬁnitely many solutions of the problem. Figure 2.1 shows 
several solution curves of the problem in (t, x)-plane. Indeed the right-hand side of the differential equation does not satisfy 
the condition (C), for the function 1/ √ x diverges when x ↓ 0.

Then you may ask a question: ‘Is the condition (C) a necessary condition for the unique existence of a solution?’ Again, this is 
not true. It is known that an initial-value problem which has a unique solution exists with the right-hand side function f (t, x) 
not satisfying (C). Hence, you can understand that the situation is very complicated. Here we omit more detailed discussion and 
understand that most of the problems which we will handle satisfy the condition.

2.2 Dependence on the Initial Value

When the unique existence of a solution of the initial-value problem (1.4) is established, we will raise another question: What is 
the dependency of the solution on the initial value ξ? That is, what is the variation of the solution x(t) of the same 
differential equation when the initial value varies as ξ + δ? The ﬁrst answer is:

Theorem 2.1 Assume that the initial-value problem (1.4) satisﬁes the same condition of Theorem 1.1 on the domain D. If the 
estimation ∥ ξ − ξ ′ ∥ < δ holds for a small positive δ (that is, ξ ′ is sufﬁciently close to ξ), there is a positive constant 
K which satisﬁes

∥ x(t ; ξ) − x(t ; ξ ′ ) ∥ ≤ K ∥ ξ − ξ ′ ∥ ∀t ∈ [ t 0 , t 0 + ρ ]

for the two solutions x(t ; ξ) and x(t ; ξ ′ ) of (1.4). Here the symbols x(t ; ξ) and x(t ; ξ ′ ) are introduced to give emphasis 
to the dependence on the initial value and ρ denotes the maximum length of the interval where the two solutions commonly exist.

Proof The integral expression of x(t ; ξ) and x(t ; ξ ′ ) leads to

t x(t ; ξ) − x(t ; ξ ′ ) = ξ − ξ ′ + ( f (τ, x(τ ; ξ)) − f (τ, x(τ ; ξ ′ )) ) dτ. ∫ t0 

Thus, we have

t ∥ x(t ; ξ) − x(t ; ξ ′ ) ∥ ≤ ∥ ξ − ξ ′ ∥ + L ∥ x(τ ; ξ) − x(τ ; ξ ′ ) ∥ dτ. ∫ t0 

By applying Grönwall’s lemma, whose statement and proof are given below, we obtain

t ∥ x(t ; ξ) − x(t ; ξ ′ ) ∥ ≤ ∥ ξ − ξ ′ ∥ + L ∥ ξ − ξ ′ ∥ exp(L(t − τ)) dτ ∫ t0 

= ∥ ξ − ξ ′ ∥ exp(L(t − t 0 )),

which completes the proof.



The following lemma is instrumental in mathematical analysis.

Lemma 2.1 (Th. Grönwall) Assume that a nonnegative constant m, a continuous nonnegative function u(t) : [ t 0 , T ] ↦ − → [ 0, 
∞) and a continuous positive function w(t) : [ t 0 , T ] ↦ − → [ 0, ∞) are given to satisfy

t u(t) ≤ m + w(s)u(s) ds for t ∈ [ t 0 , T ] . ∫ t0 

Then u(t) fulﬁlls the inequality

u(t) ≤ m exp w(s) ds for t ∈ [ t 0 , T ] . ( ∫ t 0 )

Proof Let U(t) be deﬁned by

t U(t) = m + w(s)u(s) ds ∫ t0 

for t ∈ [ t 0 , T ] . Note that u(t) ≤ U(t) holds for t ∈ [ t 0 , T ] . Then, U(t) is positive and differentiable for all t ∈ 
[ t 0 , T ] , and satisﬁes

U ′ (t) = w(t)u(t) ≤ w(t)U(t) (t ∈ [ t 0 , T ] ).

A division of the above inequality by U(t) enables us to give

d U ′ (t) log U(t) = w(t) (t t0  , T ] ). ∈ ≤ [ dt U(t)

By integration of both sides, we obtain

t t d log U(t) − log m = w(s) ds log U(s) ds ≤ ∫ t 0 dt ∫ t0 

for all t ∈ [ t 0 , T ] . Therefore, we obtain the inequality

t U(t) exp (log U(t) − log m) = ≤ exp w(s) ds , m ( ∫ t 0 )

which conﬁrms the conclusion.



Our next question is how smoothly the solution depends on the initial value.

Theorem 2.2 Again we assume that the initial-value problem (1.4) satisﬁes the same condition of Theorem 1.1 on the domain D. 
Furthermore, we assume that the partial derivatives ∂ f /∂x 1 , ∂ f /∂x 2 , . . . , ∂ f /∂x d exist and are continuous on D. 
Let its Jacobian matrix J(t, x) be denoted by

∂f ∂ f ∂ f J(t, x) = , , · · · , . [ ∂x 1 ∂x 2 ∂x d ]

Then, the solution x(t ; ξ) is continuously differentiable with respect to ξ in D. Furthermore, the vector which consists of the 
derivatives ∂x/∂ξ k = [ ∂x 1 /∂ξ k , ∂x 2 /∂ξ k , · · · , ∂x d /∂ξ k ] T is the solution of the following initial-value 
problem of the linear differential equation

dy = J(t, x(t ξ))y (t > t0  ) and y(t 0 ) = e k , ; dt

(2.3)


where e k is the d-dimensional vector whose k-th component is 1 and others are zero.

Proof of the theorem is very complicated and we omit it here. The signiﬁcant point is that we obtain an expression of the 
derivative of the solution with respect to the initial value. Equation (2.3) is often referred to as the ﬁrst variational 
equation of the original initial-value problem. Considering (2.3), we are aware of the importance of the solution of a linear 
system of differential equations.

Theorem 2.3 Assume that the d × d-dimensional matrix function A(t) is continuous and the d-dimensional function f (t) is bounded 
on the interval [ t 0 , T ] .

(i) For any initial value ξ the problem

dx = A(t)x (t > t0  ) and x(t 0 ) = ξ dt

(2.4)

which is called homogeneous, has a unique matrix function R(t ; t 0 ) which gives its solution as (2.5)

x(t) = R(t ; t 0 )ξ.

(ii) For the inhomogeneous problem

dx = A(t)x f (t) (t > t0  ) and x(t 0 ) = ξ + dt

(2.6)

its solution is given by

t x(t) = R(t ; t 0 )ξ + R(t ; t 0 ) R(τ ; t 0 ) −1 f (τ) dτ. ∫ t0 

(2.7)

The matrix R(t ; t 0 ) is called the fundamental matrix of the differential equation in (2.4). The theorem can be derived by 
observing the following facts.

(i) In the homogeneous case, due to Theorem 1.1 a unique solution exists on [ t 0 , T ] . Moreover, the solutions of the 
differential equation consist of a linear space. That is, when x(t) and y(t) are solutions, their linear combination is a 
solution, too: (d(αx(t) + β y(t))/dt = A(t)(αx(t) + β y(t))).

(ii) This means we can deﬁne a linear map from the initial value to the solution for every t ∈ [ t 0 , T ] and the map is 
continuous on the interval. Hence we can introduce the matrix function R(t ; t 0 ) representing the map on the interval.

(iii) The fundamental matrix R(t ; t 0 ) consists of d linearly independent solutions dx/dt = A(t)x as column vectors. Hence it is 
differentiable and nonsingular on the interval and satisﬁes

dR(t ; t 0 ) = A(t)R(t ; t 0 ) and R(t 0 ; t 0 ) = I d . dt

(iv) In the inhomogeneous case, differentiation of the right-hand side of (2.7) conﬁrms that x(t) satisﬁes the differential 
equation as well as the initial condition.

We can also obtain an estimation of the norm of x(t) in (2.7) as

t ∥ x(t) ∥ ≤ exp(L(t)) ξ ∥ + exp(−L(τ)) ∥ f (τ) ∥ dτ , ∥ ( ∫ t 0 )

(2.8)

t where L(t) = ∥ A(τ) ∥ dτ. ∫ t0 

When the matrix A(t) does not depend on t and is equal to a constant matrix A, the above results become simpler. We introduce the 
exponential of A by

∞ An  exp = A ∑ n! . n=0

dx Then the fundamental matrix of the differential equation = Ax can be expressed dt

dx by R(t ; t 0 ) = exp((t − t 0 )A) and the solution of the initial-value problem = dt Ax + f (t) and x(t 0 ) = ξ is

t x(t) = exp((t − t 0 )A)ξ + exp((t − τ)A) f (τ) dτ. ∫ t0 

(2.9)

2.3 Stability of Solution

You may be aware that the results of the preceding sections (except linear cases) are about local properties of the solution. That 
is, we can only obtain properties of the solution limited by the initial value. On the other hand, we are also interested in the 
solution behaviour of (1.4) when t becomes large. This is called a global theory and we will focus on the stability property of 
the solution.

As in Deﬁnition 1.1, on the domain D ( ⊂ R d ) we consider the initial-value problem of a differential equation of general form

dx = f (t, x) (t t0  ), ≥ dt

(2.10)

x(t 0 ) = x 0 ,

where f (t, x) : [ 0, ∞) × D ↦ − → R d is continuous in t and locally Lipschitz in x on [ 0, ∞) × D. Assume that D contains 
the origin 0 of R d and f satisﬁes the condition f (t, 0) = 0 for every t ( ≥ 0). Then, x(t) = 0 clearly satisﬁes the 
differential equation of (2.10). Hence we can say that the origin 0 is an equilibrium point of the system (2.10) if f (t, 0) = 0 
for every t ( ≥ 0). Then, we observe the solution

behaviour of (2.10) starting from the initial value close to the origin and give the following deﬁnition of stability.

Deﬁnition 2.1 The equilibrium point x = 0 of the system (2.10) is:

(i) stableif,foreachpositiveε,thereexistsapositiveδ = δ(ε, t 0 )suchthat ∥ x 0 ∥ < δ

implies ∥ x(t) ∥ < ε for t ≥ t 0 and

(ii) asymptotically stable if it is stable and moreover there is a positive constant γ = γ (t 0 ) fulﬁlling the condition x(t) → 
0 as t → ∞ for all the initial values

x 0 with ∥ x 0 ∥ < γ .

This is generic, for an equilibrium point at the origin could be a translation of a nonzero equilibrium point or, more generally, 
a translation of a nonzero solution of the system (2.10).

For example, we examine the stability of the equation given by (1.3), for it is autonomous and therefore it has the origin as 
equilibrium point. When we select positive δ 1 and δ 2 and solve the equation from t = 0 with the initial value (δ 1 , δ 2 ω), we 
know its solution

dy y(t) = δ 1 cos(ωt) + δ 2 sin(ωt) and ω cos(ωt) − δ 1 ω sin(ωt). (t) = δ2  dt

Therefore, if we take δ 1 2 + δ 2 2 < ε 2 /(1 + ω 2 ), the estimation

dy 2 y 2 (t) + < ε (t) √ ( dt )

holds for any t ∈ (0, ∞). This shows the stability of the equilibrium point of the equation in the sense of 2-norm.

However, the example is almost trivial, for we already know the general solution whose behaviour is obvious for t → ∞. The 
essential problem is to make a criterion for stability without solving the initial-value problem. Mathematical theory for this 
direction is beyond the scope of the present volume and interested readers are recommended to consult references of qualitative 
theory of differential equations.

We can obtain more precise result about asymptotic stability for the linear system having a constant matrix.

dx Theorem 2.4 The zero solution of the differential equation = Ax is asymptotidt cally stable if and only if all the eigenvalues 
of A have negative real part.

Proof First we prove the case of diagonalizable A. The matrix A has a transformation matrix P, which gives P −1 AP = diag [ λ 1 , 
. . . , λ d ] . Then, we obtain

Therefore, the estimation Re λ j < 0 implies | exp((t − t 0 )λ j ) | → 0 (t → ∞) for all j and the conclusion holds. For 
non-diagonalizable A, we can employ the Jordan decomposition of A and the statement holds.

Assume that the matrix A has an eigenvalue λ whose real part is non-negative. Let v be the corresponding eigenvector and deﬁne 
x(t) = exp(λt) v. Then, we have

dx = exp(λt) λ v = exp(λt) Av = Ax, dt

which asserts x(t) is a solution of the equation. However, because of | exp(λt) | ≥ 1 for t > 0, the estimation ∥ x(t) ∥ ≥ ∥ 
v ∥ holds for t ≥ 0 and x(t) never converges to 0 as t → ∞. This means the condition is necessary for the asymptotic 
stability. 

Hereafter we often say that the linear system is asymptotically stable when its unique zero solution is asymptotically stable. You 
might suppose that in the linear timevarying case

dx = A(t) x (t t0  ), ≥ dt

(2.11)

x(t 0 ) = x 0 ,

a similar analysis will be possible as in the constant matrix case of Theorem 2.4, but it is not the case. We illustrate it 
through the following:

Example 2.2 Suppose that the linear time-varying equation (2.11) is given with the matrix

−1 + α cos 2 t 1 − α sin t cos t A(t) = , [ −1 − α sin t cos t −1 + α sin 2 t ]

where α is a positive constant. When we ﬁx t, the following eigenvalue-like identity

A(t)x ± = λ ± x± 

holds for certain x ± and each t with

α 2 α2  −4 −4 α 2 α2  + √ √ λ + = and λ − = . 2 2

Since the values λ ± happen not to be t-dependent, we can introduce a matrix function, given as

R(t, 0) = [ − sin t cos t exp (α − 1)t cos t exp (−t) ]

which plays a similar role to the fundamental matrix in the constant-coefﬁcient case. In fact, the function x(t) = R(t, 0)x 0 
satisﬁes (2.11) for arbitrary t ( ≥ t 0 ). Although both of λ ± have a negative real part for every positive t when 0 < α < 2, 
every component of R(t, 0)x 0 is unbounded in the case α > 1, i.e., the system (2.11) is not stable generally.

Readers interested in the topic can refer to Section I.13 of [15].

Further Remarks As mentioned in the last paragraph of Sect. 2.1, a necessary and sufﬁcient condition for the unique existence of 
a solution of the initial-value problem, even though expected, is very difﬁcult to state mathematically. In contrast to this, the 
Lipschitz condition (C) is rather easy to check and widely applied to actual problems. Even if a unique solution exists, its 
higher-order differentiability with respect to the independent variable t is another problem. Roughly speaking, when the function 
f (t, x) is sufﬁciently smooth with respect to t and x, the solution is also smooth. In the sequel, we will often suppose that 
the solution can be expanded in the Taylor series even if it exists only locally.

Stability is also a signiﬁcant issue. Here we introduced an analytical method for stability analysis. Another way to employ 
Lyapunov function is popular and often appliedinengineeringscience.Furthermore,atopologicalapproachiswidelyapplied for stability 
analysis.

Interested readers who want to study more can refer to the classical textbooks by Arnold [1], Coddington–Levinson [11] or Robinson 
[31].

Exercises

2.1. Conﬁrm that the differential equation of Example 2.1 with different initial conditions

dx = ) and x(t 0 ) = 1 √ x (t > t0  dt

has a unique solution x(t) = (t − t 0 + 4) 2 /4 (t ≥ t 0 ). Prove that the problem satisﬁes the Lipschitz condition around the 
initial point (t 0 , x(t 0 )).

2.2. Solve the initial-value problem of the scalar equation

d x π(1 + x 2 ) = (t > 0), dt 2

x(0) = 0

and conﬁrm that the solution diverges when t is approaching 1. Hence the solution cannot exist globally.

2.3. Carry out the method of Picard iteration for the scalar initial value problem

dx = kx (t > 0), dt

x(0) = 1,

where k is a constant.

2.4. Rewrite the equation (1.3) into a two-dimensional linear system to derive the coefﬁcient matrix A with the parameter ω = √ 
(g/a). Then, calculate the fundamental solution exp(t A) and conﬁrm that it gives the general solution of the equation. Hint. Try 
to make the powers (t A) 2 , (t A) 3 , . . . and to compare the components of ( I + t A + (t A) 2 /2! + (t A) 3 /3! + · · · ) [ θ 
0 , 0 ] T with the Maclaurin expansion of cos(ωt) and sin(ωt).

2.5. If the two matrices A and B are of the same size and commutative (i.e., AB = B A), prove that the identity exp(A + B) = (exp 
A)(exp B) holds. Moreover, show an example which gives exp(A + B) = ̸ (exp A)(exp B).

2.6. Solve the following initial-value problem of a linear system of differential equations:

d x 1 4 −2 x 1 −1 = + exp(t) , dt [ x 2 ] [ 3 −3 ] [ x 2 ] [ 2 ]

x 1 (0) 1 = [ x 2 (0) ] [ 2 ]

by means of the fundamental matrix.

(1) Denote the coefﬁcient matrix by A, determine its two eigenpairs (λ 1 , p 1 ) and (λ 2 , p 2 ) and derive the diagonalization 
matrix P = [ p 1 , p 2 ] .

(2) Determine the diagonalized matrix  by calculating P −1 AP and its exponential exp(t).

(3) Derive the fundamental matrix by exp(t A) = P exp(t)P −1 .

(4) Apply (2.9).

2.7. Show that the solution (x(t), y(t)) of a system of differential equations

dx dy = y, = 2x dt dt

satisﬁes 2x 2 − y 2 = C with a certain constant C. Hence, conﬁrm that no matter how small δ (δ > 0) is taken, the trajectory 
(x(t), y(t)) of the solution starting from (x(0), y(0)) = (δ, 0) travels far from the origin (0, 0) in the xy-plane. This means an 
asymptotic instability of the equation.

2.8. When two differentiable functions x 1 (t) and x 2 (t) are given, the determinant

x 1 (t) x 2 (t) def W(x 1 , x 2 ) = det ′ ′ [ x 1 (t) x 2 (t) ]

is said to be the Wronskian or the Wronski determinant of (x 1 , x 2 ). Prove that the necessary and sufﬁcient condition of the 
linear independence of (x 1 , x 2 ) is W(x 1 , x 2 ) = ̸ 0. The Wronskian is useful to discriminate the linear independence of two 
solutions of linear second-order differential equation with variable coefﬁcients

d2 x d x p(t) q(t)x = 0, + + dt 2 dt

because the Wronskian of its two solutions x 1 (t) and x 2 (t) is given by

W(x 1 , x 2 ) = c exp − p(t) d t . ( ∫ )


