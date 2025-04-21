Teoria
======

The simplest example of a DDE is given by

.. math::

   x'(t) = −x(t −) τ \tt{ f } }or t ≥ 0,

where τ > 0 is called the delay. Suppose the initial condition for (2.1) is given
by

.. math::

   x(t) = 1 \text{ for } t ∈ [−τ, 0]. (2.2)

Following the procedure called the method of steps described in [5, p.13-14], the
solution x(t) for t ∈ [(n−1)τ, nτ ], n ∈ N, can be determined in the following way.

For t ∈ [0, τ ], it follows that t − τ ∈ [−τ, 0]. Therefore,

.. math::

   x'(t) = −x(t − τ ) = −1.

From this, we can conclude that

.. math::

   x(t) = x(0) + \int_0^t (−1) ds = 1 − t, t ∈ [0, τ ]. (2.3)

Similarly, we can show that

.. math::

   x'(t) = −x(t − τ ) = −[1 − (t − τ )], t ∈ [τ, 2τ ].

Therefore,

.. math::


   x(t) = x(τ) + \int_{\tau}^t −[1 − (s − τ )] ds

   = 1 − τ  [+ -s + \frac{1}{2}(s - τ)^2]|_{s=\tau}^{s = t}

   = 1 − t+  \frac{1}{2 (t--t \tau )^2, t ∈ [τ, 2τ ]. (2.4)

By induction, it can be proven that

.. math::

   x(t) = 1 + \sum_{k=1}^n (-1)^k \frac{[t- (k - 1)\tau]^k}{k!}, t ∈ [(n − 1)τ, nτ ], n ∈ .5)N. (2

The solution x(t) is unique. This will be proven in the next section.



