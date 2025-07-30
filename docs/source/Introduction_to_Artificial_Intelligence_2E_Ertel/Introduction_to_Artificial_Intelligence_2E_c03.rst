First-order Predicate Logic
Many practical, relevant problems cannot be or can only very inconveniently be
formulated in the language of propositional logic, as we can easily recognize in the
following example. The statement
“Robot 7 is situated at the xy position (35, 79)”
can in fact be directly used as the propositional logic variable
“Robot_7_is_situated_at_xy_position_(35, 79)”
for reasoning with propositional logic, but reasoning with this kind of proposition
is very inconvenient. Assume 100 of these robots can stop anywhere on a grid of
100 ␁ 100 points. To describe every position of every robot, we would need
100 ⋅ 100 ⋅ 100 = 1 000 000 = 106 different variables. The deﬁnition of relationships
between objects (here robots) becomes truly difﬁcult. The relation
“Robot A is to the right of robot B.”
is semantically nothing more than a set of pairs. Of the 10 000 possible pairs of
x-coordinates there are (99 ⋅ 98)/2 = 4851 ordered pairs. Together with all 10 000
combinations of possible y-values for both robots, there are (100 ⋅ 99) = 9900
formulas of the type
Robot 7 is to the right of robot 12 ,
Robot 7 is situated at xy position ð35; 79Þ
^ Robot 12 is situated at xy position ð10; 93Þ _ . . .
deﬁning these relations, each of them with (104)2 ⋅ 0.485 = 0.485 ⋅ 108 alternatives
on the right side. In ﬁrst-order predicate logic, we can deﬁne a predicate

Position(number, xPosition, yPosition). The above relation must no longer be
enumerated as a huge number of pairs, rather it is described abstractly with a rule of
the form
8u 8v is further rightðu; vÞ ,
9xu 9yu 9xv 9yv positionðu; xu ; yu Þ ^ positionðv; xv ; yv Þ ^ xu [ xv ;
Where 8u is read as “for every u” and 9v as “there exists v”.
In this chapter we will deﬁne the syntax and semantics of ﬁrst-order predicate
logic (PL1), show that many applications can be modeled with this language and
that there is a complete and sound calculus for this language.
3.1
Syntax
First we solidify the syntactic structure of terms.
Deﬁnition 3.1 Let V be a set of variables, K a set of constants, and F a set of
function symbols. The sets V, K and F are pairwise disjoint. We deﬁne the set
of terms recursively:
• All variables and constants are (atomic) terms.
• If t1, … , tn are terms and f an n-place function symbol, then f (t1, … , tn) is
also a term.
Some examples of terms are f (sin(ln(3)), exp(x)) and g(g(g(x))). To be able to
establish logical relationships between terms, we build formulas from terms.
Deﬁnition 3.2 Let P be a set of predicate symbols. Predicate logic formulas
are built as follows:
• If t1, … , tn are terms and p an n-place predicate symbol, then p(t1, …, tn)
is an (atomic) formula.
• If A and B are formulas, then ¬A, (A), A ^ B, A _ B, A ) B, A , B are
also formulas.
• If x is a variable and A a formula, then 8x A and 9x A are also formulas.
8 is the universal quantiﬁer and 9 the existential quantiﬁer.
• p(t1, … , tn) and ¬p(t1, … , tn) are called literals.

• Formulas in which every variable is in the scope of a quantiﬁer are called
ﬁrst-order sentences or closed formulas. Variables which are not in the
scope of a quantiﬁer are called free variables.
• Deﬁnitions 2.8 (CNF) and 2.10 (Horn clauses) hold for formulas of
predicate logic literals analogously.
In Table 3.1 several examples of PL1 formulas are given along with their
intuitive interpretations.

3.2
Semantics
In propositional logic, every variable is directly assigned a truth value by an
interpretation. In predicate logic, the meaning of formulas is recursively deﬁned
over the construction of the formula, in that we ﬁrst assign constants, variables, and
function symbols to objects in the real world.

Deﬁnition 3.3 An interpretation I is deﬁned as
• A mapping from the set of constants and variables K [ V to a set W of
names of objects in the world.
• A mapping from the set of function symbols to the set of functions in the
world. Every n-place function symbol is assigned an n-place function.
• A mapping from the set of predicate symbols to the set of relations in the
world. Every n-place predicate symbol is assigned an n-place relation.
Example 3.1 Let c1, c2, c3 be constants, “plus” a two-place function symbol, and
“gr” a two-place predicate symbol. The truth of the formula
F ␃ grðplusðc1 ; c3 Þ; c2 Þ
depends on the interpretation I. We ﬁrst choose the following obvious interpretation
of constants, the function, and of the predicates in the natural numbers:
I1 : c1 7! 1; c2 7! 2; c3 7! 3;
plus 7! þ ;
gr 7![ :
Thus the formula is mapped to
1 þ 3 [ 2;
or after evaluation
4 [ 2:
The greater-than relation on the set {1, 2, 3, 4} is the set of all pairs (x, y) of
numbers with x > y, meaning the set G = {(4, 3), (4, 2), (4, 1), (3, 2), (3, 1), (2, 1)}.
Because (4, 2) 2 G, the formula F is true under the interpretation I1 . However, if we
choose the interpretation
I2 : c1 7! 2; c2 7! 3; c3 7! 1;
plus 7! ␄;
gr 7![ ;
we obtain
2 ␄ 1 [ 3;
or
1 [ 3:
The pair (1, 3) is not a member of G. The formula F is false under the interpretation
I2 . Obviously, the truth of a formula in PL1 depends on the interpretation. Now,
after this preview, we deﬁne truth.

Deﬁnition 3.4
• An atomic formula p(t1,…, tn ) is true (or valid) under the interpretation I
if, after interpretation and evaluation of all terms t1, … , tn and interpre-
tation of the predicate p through the n-place relation r, it holds that
ðIðt1 Þ; . . . ; Iðtn ÞÞ 2 r:
• The truth of quantiﬁerless formulas follows from the truth of atomic
formulas—as in propositional calculus—through the semantics of the
logical operators deﬁned in Table 2.1 on page 25.
• A formula 8x F is true under the interpretation I exactly when it is true
given an arbitrary change of the interpretation for the variable x (and only
for x)
• A formula 9x F is true under the interpretation I exactly when there is an
interpretation for x which makes the formula true.
The deﬁnitions of semantic equivalence of formulas, for the concepts satis-
ﬁable, true, unsatisﬁable, and model, along with semantic entailment (Deﬁ-
nitions 2.4, 2.5, 2.6) carry over unchanged from propositional calculus to
predicate logic.
Theorem 3.1 Theorems 2.2 (deduction theorem) and 2.3 (proof by contra-
diction) hold analogously for PL1.
Example 3.2 The family tree given in Fig. 3.1 graphically represents (in the
semantic level) the relation

Child ¼ fðOscar A., Karen A., Frank A.Þ;
(Henry A., Anne A., Oscar A.),
(Isabelle A., Anne A., Oscar A.),
First-order Predicate Logic
ðMary B., Karen A., Frank A.Þ;
(Eve A., Anne A., Oscar A.),
(Clyde B., Mary B., Oscar B.)g
For example, the triple (Oscar A., Karen A., Frank A.) stands for the proposition
“Oscar A. is a child of Karen A. and Frank A.”. From the names we read off the
one-place relation
Female ¼ fKaren A., Anne A., Mary B., Eve A., Isabelle A.g
of the women. We now want to establish formulas for family relationships. First we
deﬁne a three-place predicate child(x, y, z) with the semantic
Iðchildðx; y; zÞÞ ¼ w ␃ ðIðxÞ; IðyÞ; IðzÞÞ 2 Kind:
Under the interpretation IðoscarÞ ¼ Oscar A., IðeveÞ ¼ Eve A., IðanneÞ ¼ Anne A.,
it is also true that child(eve, anne, oscar). For child(eve, oscar, anne) to be true,
we require, with
8x 8y 8z childðx; y; zÞ , childðx; z; yÞ;
symmetry of the predicate child in the last two arguments. For further deﬁnitions we
refer to Exercise 3.1 on page 63 and deﬁne the predicate descendant recursively as
8x 8y descendantðx; yÞ , 9z childðx; y; zÞ _
ð9u 9v childðx; u; vÞ ^ descendantðu; yÞÞ:
Now we build a small knowledge base with rules and facts. Let
KB ␃ femaleðkarenÞ ^ femaleðanneÞ ^ femaleðmaryÞ
^ femaleðeveÞ ^ femaleðisabelleÞ
^ childðoscar; karen; franzÞ ^ childðmary; karen; franzÞ
^ childðeve; anne; oscarÞ ^ childðhenry; anne; oscarÞ
^ childðisabelle; anne; oscarÞ ^ childðclyde; mary; oscarbÞ
^ ð8x 8y 8z childðx; y; zÞ ) childðx; z; yÞÞ
^ ð8x 8y descendantðx; yÞ , 9z childðx; y; zÞ
_ ð9u 9v childðx; u; vÞ ^ descendantðu; yÞÞÞ:
We can now ask, for example, whether the propositions child(eve, oscar, anne) or
descendant(eve, franz) are derivable. To that end we require a calculus.

3.2.1 Equality
To be able to compare terms, equality is a very important relation in predicate logic.
The equality of terms in mathematics is an equivalence relation, meaning it is
reflexive, symmetric and transitive. If we want to use equality in formulas, we must
either incorporate these three attributes as axioms in our knowledge base, or we
must integrate equality into the calculus. We take the easy way and deﬁne a
predicate “=” which, deviating from Deﬁnition 3.2 on page 40, is written using
inﬁx notation as is customary in mathematics. (An equation x = y could of course
also be written in the form eq(x, y).) Thus, the equality axioms have the form
8x
8x 8y
8x 8y 8z
x¼x
x¼y)y¼x
x¼y^y¼z)x¼z
ðreflexivityÞ
ðsymmetryÞ
ðtransitivityÞ:
ð3:1Þ
To guarantee the uniqueness of functions, we additionally require
8x 8y x ¼ y ) f ðxÞ ¼ f ðyÞ ðsubstitution axiomÞ
ð3:2Þ
for every function symbol. Analogously we require for all predicate symbols
8x 8y x ¼ y ) pðxÞ , pðyÞ
ðsubstitution axiomÞ:
ð3:3Þ
We formulate other mathematical relations, such as the “<” relation, by similar
means (Exercise 3.4 on page 64).
Often a variable must be replaced by a term. To carry this out correctly and
describe it simply, we give the following deﬁnition.
Deﬁnition 3.5 We write u[x/t] for the formula that results when we replace
every free occurrence of the variable x in u with the term t. Thereby we do
not allow any variables in the term t that are quantiﬁed in u. In those cases
variables must be renamed to ensure this.
Example 3.3 If, in the formula 8x x ¼ y, the free variable y is replaced by the term
x + 1, the result is 8x x ¼ x þ 1. With correct substitution we obtain the formula
8x x ¼ y þ 1, which has a very different semantic.
3.3
Quantifiers and Normal Forms
By Deﬁnition 3.4 on page 43, the formula 8x p(x) is true if and only if it is true
for all interpretations of the variable x. Instead of the quantiﬁer, one could write
p(a1) ^ ⋅⋅⋅ ^ p(an) for all constants a1 ⋅⋅⋅ an in K. For 9x p(x) one could write
p(a1) _ ⋅⋅⋅ _ p(an). From this it follows with de Morgan’s law that

Through this equivalence, universal, and existential quantiﬁers are mutually
replaceable.
Example 3.4 The proposition “Everyone wants to be loved” is equivalent to the
proposition “Nobody does not want to be loved”.
Quantiﬁers are an important component of predicate logic’s expressive power.
However, they are disruptive for automatic inference in AI because they make the
structure of formulas more complex and increase the number of applicable inference
rules in every step of a proof. Therefore our next goal is to ﬁnd, for every predicate
logic formula, an equivalent formula in a standardized normal form with as few
quantiﬁers as possible. As a ﬁrst step we bring universal quantiﬁers to the beginning
of the formula and thus deﬁne
Deﬁnition 3.6 A predicate logic formula u is in prenex normal form if it
holds that
• u = Q1x1 ⋅⋅⋅ Qnxn w.
• w is a quantiﬁerless formula.
• Qi 2{8, 9} for i = 1, … , n.
Caution is advised if a quantiﬁed variable appears outside the scope of its
quantiﬁer, as for example x in
8x pðxÞ ) 9x qðxÞ:
Here one of the two variables must be renamed, and in
8x pðxÞ ) 9y qðyÞ
the quantiﬁer can easily be brought to the front, and we obtain as output the
equivalent formula
8x 9y pðxÞ ) qðyÞ:
If, however, we wish to correctly bring the quantiﬁer to the front of
ð8x pðxÞÞ ) 9y qðyÞ

we ﬁrst write the formula in the equivalent form
:ð8x pðxÞÞ _ 9y qðyÞ:
The ﬁrst universal quantiﬁer now turns into
ð9x:pðxÞÞ _ 9y qðyÞ
and now the two quantiﬁers can ﬁnally be pulled forward to
9x 9y:pðxÞ _ qðyÞ;
which is equivalent to
9x 9ypðxÞ ) qðyÞ:
We see then that in (3.4) on page 46 we cannot simply pull both quantiﬁers to the
front. Rather, we must ﬁrst eliminate the implications so that there are no negations
on the quantiﬁers. It holds in general that we may only pull quantiﬁers out if
negations only exist directly on atomic sub-formulas.
Example 3.5 As is well known in analysis, convergence of a series (an)n2ℕ to a
limit a is deﬁned by
8e [ 0 9n0 2 N 8n [ n0 jan ␄ aj \ e:
With the function abs(x) for |x|, a(n) for an, minus(x, y) for x–y and the predicates
el(x, y) for x 2 y, gr(x, y) for x > y, the formula reads
8e ðgrðe; 0Þ ) 9n0 ðelðn0 ; NÞ ) 8n ðgrðn; n0 Þ ) grðe; absðminusðaðnÞ; aÞÞÞÞÞÞ:
ð3:5Þ
This is clearly not in prenex normal form. Because the variables of the inner
quantiﬁers 9n0 and 8n do not occur to the left of their respective quantiﬁers, no
variables must be renamed. Next we eliminate the implications and obtain
8e ð:grðe; 0Þ _ 9n0 ð:elðn0 ; NÞ _ 8n ð:grðn; n0 Þ _ grðe; absðminusðaðnÞ; aÞÞÞÞÞÞ:
Because every negation is in front of an atomic formula, we bring the quantiﬁers
forward, eliminate the redundant parentheses, and with
8e 9n0 8n ð:grðe; 0Þ _ :elðn0 ; NÞ _ :grðn; n0 Þ _ grðe; absðminusðaðnÞ; aÞÞÞÞ
it becomes a quantiﬁed clause in conjunctive normal form.

The transformed formula is equivalent to the output formula. The fact that this
transformation is always possible is guaranteed by
Theorem 3.2 Every predicate logic formula can be transformed into an
equivalent formula in prenex normal form.
In addition, we can eliminate all existential quantiﬁers. However, the formula
resulting from the so-called Skolemization is no longer equivalent to the output
formula. Its satisﬁability, however, remains unchanged. In many cases, especially
when one wants to show the unsatisﬁability of KB ^ ¬Q, this is sufﬁcient. The
following formula in prenex normal form will now be skolemized:
8x1 8x2 9y1 8x3 9y2 pðf ðx1 Þ; x2 ; y1 Þ _ qðy1 ; x3 ; y2 Þ:
Because the variable y1 apparently depends on x1 and x2, every occurrence of y1 is
replaced by a Skolem function g(x1, x2). It is important that g is a new function
symbol that has not yet appeared in the formula. We obtain
8x1 8x2 8x3 9y2 pðf ðx1 Þ; x2 ; gðx1 ; x2 ÞÞ _ qðgðx1 ; x2 Þ; x3 ; y2 Þ
and replace y2 analogously by h(x1, x2, x3), which leads to
8x1 8x2 8x3 pðf ðx1 Þ; x2 ; gðx1 ; x2 ÞÞ _ qðgðx1 ; x2 Þ; x3 ; hðx1 ; x2 ; x3 ÞÞ:
Because now all the variables are universally quantiﬁed, the universal quantiﬁers
can be left out, resulting in
pðf ðx1 Þ; x2 ; gðx1 ; x2 ÞÞ _ qðgðx1 ; x2 Þ; x3 ; hðx1 ; x2 ; x3 ÞÞ:
Now we can eliminate the existential quantiﬁer (and thereby also the universal
quantiﬁer) in (3.5) on page 47 by introducing the Skolem function n0(e). The
skolemized prenex and conjunctive normal form of (3.5) on page 47 thus reads
:grðe; 0Þ _ :elðn0 ðeÞ; NÞ _ :grðn; n0 ðeÞÞ _ grðe; absðminusðaðnÞ; aÞÞÞ:
By dropping the variable n0, the Skolem function can receive the name n0.
When skolemizing a formula in prenex normal form, all existential quanti-
ﬁers are eliminated from the outside inward, where a formula of the form
8x1 … 8xn 9y u is replaced by 8x1 … 8xn u[y/f (x1, … , xn)], during which f may
not appear in u. If an existential quantiﬁer is on the far outside, such as in 9y p(y),
then y must be replaced by a constant (that is, by a zero-place function symbol).

The procedure for transforming a formula in conjunctive normal form is sum-
marized in the pseudocode represented in Fig. 3.2. Skolemization has polynomial
runtime in the number of literals. When transforming into normal form, the number
of literals in the normal form can grow exponentially, which can lead to exponential
computation time and exponential memory usage. The reason for this is the repe-
ated application of the distributive law. The actual problem, which results from a
large number of clauses, is the combinatorial explosion of the search space for a
subsequent resolution proof. However, there is an optimized transformation algo-
rithm which only spawns polynomially many literals [Ede91].
3.4
Proof Calculi
For reasoning in predicate logic, various calculi of natural reasoning such as
Gentzen calculus or sequent calculus, have been developed. As the name suggests,
these calculi are meant to be applied by humans, since the inference rules are more
or less intuitive and the calculi work on arbitrary PL1 formulas. In the next section
we will primarily concentrate on the resolution calculus, which is in practice the
most important efﬁcient, automatizable calculus for formulas in conjunctive normal
form. Here, using Example 3.2 on page 43 we will give a very small “natural”
proof. We use the inference rule
A;
A)B
B
ðmodus ponens, MPÞ
and
8x A
A½x=t␅
ð8-elimination; 8EÞ:
The modus ponens is already familiar from propositional logic. When eliminating
universal quantiﬁers one must keep in mind that the quantiﬁed variable x must be

replaced by a ground term t, meaning a term that contains no variables. The proof of
child(eve, oscar, anne) from an appropriately reduced knowledge base is presented
in Table 3.2.
The two formulas of the reduced knowledge base are listed in rows 1 and 2. In
row 3 the universal quantiﬁers from row 2 are eliminated, and in row 4 the claim is
derived with modus ponens.
The calculus consisting of the two given inference rules is not complete.
However, it can be extended into a complete procedure by addition of further
inference rules. This nontrivial fact is of fundamental importance for mathematics
and AI. The Austrian logician Kurt Gödel proved in 1931 that [Göd31a].
Theorem 3.3 (Gödel’s completeness theorem) First-order predicate logic
is complete. That is, there is a calculus with which every proposition that is a
consequence of a knowledge base KB can be proved. If KB ␆ u, then it holds
that KB ⊢ u.
Every true proposition in ﬁrst-order predicate logic is therefore provable. But is
the reverse also true? Is everything we can derive syntactically actually true? The
answer is “yes”:
Theorem 3.4 (Correctness) There are calculi with which only true propo-
sitions can be proved. That is, if KB ⊢ u holds, then KB ␆ u.
In fact, nearly all known calculi are correct. After all, it makes little sense to
work with incorrect proof methods. Provability and semantic consequence are
therefore equivalent concepts, as long as correct and complete calculus is being
used. Thereby ﬁrst-order predicate logic becomes a powerful tool for mathematics
and AI. The aforementioned calculi of natural deduction are rather unsuited for
automatization. Only resolution calculus, which was introduced in 1965 and
essentially works with only one simple inference rule, enabled the construction of
powerful automated theorem provers, which later were employed as inference
machines for expert systems.

3.5
51
Resolution
Indeed, the correct and complete resolution calculus triggered a logic euphoria
during the 1970s. Many scientists believed that one could formulate almost every
task of knowledge representation and reasoning in PL1 and then solve it with an
automated prover. Predicate logic, a powerful, expressive language, together with a
complete proof calculus seemed to be the universal intelligent machine for repre-
senting knowledge and solving many difﬁcult problems (Fig. 3.3).
If one feeds a set of axioms (that is, a knowledge base) and a query into such a
logic machine as input, the machine searches for a proof and returns it—for one
exists and will be found—as output. With Gödel’s completeness theorem and the
work of Herbrand as a foundation, much was invested into the mechanization of
logic. The vision of a machine that could, with an arbitrary non-contradictory PL1
knowledge base, prove any true query was very enticing. Accordingly, until now
many proof calculi for PL1 are being developed and realized in the form of theorem
provers. As an example, here we describe the historically important and widely
used resolution calculus and show its capabilities. The reason for selecting reso-
lution as an example of a proof calculus in this book is, as stated, its historical and

didactic importance. Today, resolution represents just one of many calculi used in
high-performance provers.
We begin by trying to compile the proof in Table 3.2 on page 50 with the
knowledge base of Example 3.2 on page 43 into a resolution proof. First the
formulas are transformed into conjunctive normal form and the negated query
:Q ␃ :childðeve; oscar; anneÞ
is added to the knowledge base, which gives
KB ^ :Q ␃ ðchildðeve; anne; oscarÞÞ1 ^
ð:childðx; y; zÞ _ childðx; z; yÞÞ2 ^
ð:childðeve; oscar; anneÞÞ3 :
The proof could then look something like
ð2Þ x=eve; y=anne; z=oscar : ð:childðeve; anne; oscarÞ _
childðeve; oscar; anneÞÞ4
Resð3; 4Þ : ð:childðeve; anne; oscarÞÞ5
Resð1; 5Þ : ðÞ6 ;
where, in the ﬁrst step, the variables x, y, z are replaced by constants. Then two
resolution steps follow under application of the general resolution rule from (2.2),
which was taken unchanged from propositional logic.
The circumstances in the following example are somewhat more complex. We
assume that everyone knows his own mother and ask whether Henry knows anyone.
With the function symbol “mother” and the predicate “knows”, we have to derive a
contradiction from
ðknowsðx; motherðxÞÞÞ1 ^ ð:knowsðhenry; yÞÞ2 :
By the replacement x/henry, y/mother(henry) we obtain the contradictory clause
pair
ðknowsðhenry; motherðhenryÞÞÞ1 ^ ð:knowsðhenry; motherðhenryÞÞÞ2 :
This replacement step is called uniﬁcation. The two literals are complementary,
which means that they are the same other than their signs. The empty clause is now
derivable with a resolution step, by which it has been shown that Henry does know
someone (his mother). We deﬁne

Deﬁnition 3.7 Two literals are called uniﬁable if there is a substitution r for
all variables which makes the literals equal. Such a r is called a uniﬁer.
A uniﬁer is called the most general uniﬁer (MGU) if all other uniﬁers can be
obtained from it by substitution of variables.
Example 3.6 We want to unify the literals p(f(g(x)), y, z) and p(u, u, f(u)). Several
uniﬁers are
r1 :
y=f ðgðxÞÞ;
z=f ðf ðgðxÞÞÞ;
u=f ðgðxÞÞ;
r2 :
r3 :x=hðvÞ;
x=hðhðvÞÞ;y=f ðgðhðvÞÞÞ;
z=f ðf ðgðhðvÞÞÞÞ;
y=f ðgðhðhðvÞÞÞÞ; z=f ðf ðgðhðhðvÞÞÞÞÞ;u=f ðgðhðvÞÞÞ
u=f ðgðhðhðvÞÞÞÞ
r4 :
r5 :x=hðaÞ;
x=a;y=f ðgðhðaÞÞÞ;
y=f ðgðaÞÞ;u=f ðgðhðaÞÞÞ
u=f ðgðaÞÞ
z=f ðf ðgðhðaÞÞÞÞ;
z=f ðf ðgðaÞÞÞ;
where r1 is the most general uniﬁer. The other uniﬁers result from r1 through the
substitutions x=hðvÞ; x=hðhðvÞÞ; x=hðaÞ; x=a.
We can see in this example that during uniﬁcation of literals, the predicate
symbols can be treated like function symbols. That is, the literal is treated like a term.
Implementations of uniﬁcation algorithms process the arguments of functions
sequentially. Terms are uniﬁed recursively over the term structure. The simplest
uniﬁcation algorithms are very fast in most cases. In the worst case, however, the
computation time can grow exponentially with the size of the terms. Because for
automated provers the overwhelming number of uniﬁcation attempts fail or are very
simple, in most cases the worst case complexity has no dramatic effect. The fastest
uniﬁcation algorithms have nearly linear complexity even in the worst case [Bib82].
We can now give the general resolution rule for predicate logic:
Deﬁnition 3.8 The resolution rule for two clauses in conjunctive normal
form reads
ðA1 _ ␇ ␇ ␇ _ Am _ BÞ; ð:B0 _ C1 _ ␇ ␇ ␇ _ Cn Þ rðBÞ ¼ rðB0 Þ
;
ðrðA1 Þ _ ␇ ␇ ␇ _ rðAm Þ _ rðC1 Þ _ ␇ ␇ ␇ _ rðCn ÞÞ
ð3:6Þ
where r is the MGU of B and B′.
Theorem 3.5 The resolution rule is correct. That is, the resolvent is a
semantic consequence of the two parent clauses.

For Completeness, however, we still need a small addition, as is shown in the
following example.
Example 3.7 The famous Russell paradox reads “There is a barber who shaves
everyone who does not shave himself.” This statement is contradictory, meaning it
is unsatisﬁable. We wish to show this with resolution. Formalized in PL1, the
paradox reads
8x shavesðbarber; xÞ , :shavesðx; xÞ
and transformation into clause form yields (see Exercise 3.6 on page 64)
ð:shavesðbarbier; xÞ _ :shavesðx; xÞÞ1 ^ ðshavesðbarbier; xÞ _ shavesðx; xÞÞ2 :
ð3:7Þ
From these two clauses we can derive several tautologies, but no contradiction.
Thus resolution is not complete. We need yet a further inference rule.
Deﬁnition 3.9 Factorization of a clause is accomplished by
ðA1 _ A2 _ ␇ ␇ ␇ _ An Þ rðA1 Þ ¼ rðA2 Þ
;
ðrðA2 Þ _ ␇ ␇ ␇ _ rðAn ÞÞ
where r is the MGU of A1 and A2.
Now a contradiction can be derived from (3.7)
Fakð1; r : x=barberÞ :
Fakð2; r : x=barberÞ :
Resð3; 4Þ :
ð:shavesðbarber; barberÞÞ3
ðshavesðbarber; barberÞÞ4
ðÞ5
and we assert:
Theorem 3.6 The resolution rule (3.6) together with the factorization rule
(3.9) is refutation complete. That is, by application of factorization and
resolution steps, the empty clause can be derived from any unsatisﬁable
formula in conjunctive normal form.

3.5.1 Resolution Strategies
While completeness of resolution is important for the user, the search for a proof
can be very frustrating in practice. The reason for this is the immense combinatorial
search space. Even if there are only very few pairs of clauses in KB ^ ¬Q in the
beginning, the prover generates a new clause with every resolution step, which
increases the number of possible resolution steps in the next iteration. Thus it has
long been attempted to reduce the search space using special strategies, preferably
without losing completeness. The most important strategies are the following.
Unit resolution prioritizes resolution steps in which one of the two clauses
consists of only one literal, called a unit clause. This strategy preserves com-
pleteness and leads in many cases, but not always, to a reduction of the search
space. It therefore is a heuristic process (see Sect. 6.3).
One obtains a guaranteed reduction of the search space by application of the set
of support strategy. Here a subset of KB ^ ¬Q is deﬁned as the set of support
(SOS). Every resolution step must involve a clause from the SOS, and the resolvent
is added to the SOS. This strategy is incomplete. It becomes complete when it is
ensured that the set of clauses is satisﬁable without the SOS (see Exercise 3.7 on
page 64). The negated query ¬Q is often used as the initial SOS.
In input resolution, a clause from the input set KB ^ ¬Q must be involved in
every resolution step. This strategy also reduces the search space, but at the cost of
completeness.
With the pure literal rule all clauses that contain literals for which there are no
complementary literals in other clauses can be deleted. This rule reduces the search
space and is complete, and therefore it is used by practically all resolution provers.
If the literals of a clause K1 represent a subset of the literals of the clause K2, then
K2 can be deleted. For example, the clause
ðrainingðtodayÞ ) street wetðtodayÞÞ
is redundant if street_wet(today) is already valid. This important reduction step is
called subsumption. Subsumption, too, is complete.
3.5.2 Equality
Equality is an especially inconvenient cause of explosive growth of the search
space. If we add (3.1) on page 45 and the equality axioms formulated in (3.2) on
page 45 to the knowledge base, then the symmetry clause ¬x = y _ y = x can be
uniﬁed with every positive or negated equation, for example. This leads to the
derivation of new clauses and equations upon which equality axioms can again be
applied, and so on. The transitivity and substitution axioms have similar conse-
quences. Because of this, special inference rules for equality have been developed
which get by without explicit equality axioms and, in particular, reduce the search

space. Demodulation, for example, allows substitution of a term t2 for t1, if the
equation t1 = t2 exists. An equation t1 = t2 is applied by means of uniﬁcation to a
term t as follows:
t1 ¼ t2 ;
ð. . . t. . .Þ; rðt1 Þ ¼ rðtÞ
:
ð. . . rðt2 Þ. . .Þ
Somewhat more general is paramodulation, which works with conditional equa-
tions [Bib82, Lov78].
The equation t1 = t2 allows the substitution of the term t1 by t2 as well as the
substitution t2 by t1. It is usually pointless to reverse a substitution that has already
been carried out. On the contrary, equations are frequently used to simplify terms.
They are thus often used in one direction only. Equations which are only used in
one direction are called directed equations. Efﬁcient processing of directed equa-
tions is accomplished by so-called term rewriting systems. For formulas with many
equations there exist special equality provers.
3.6
Automated Theorem Provers
Implementations of proof calculi on computers are called theorem provers. Along
with specialized provers for subsets of PL1 or special applications, there exist today
a whole line of automated provers for the full predicate logic and higher-order
logics, of which only a few will be discussed here. An overview of the most
important systems can be found in [McC].
One of the oldest resolution provers was developed at the Argonne National
Laboratory in Chicago. Based on early developments starting in 1963, Otter
[Kal01], was created in 1984. Above all, Otter was successfully applied in
specialized areas of mathematics, as one can learn from its home page:
“Currently, the main application of Otter is research in abstract algebra and formal logic.
Otter and its predecessors have been used to answer many open questions in the areas of
ﬁnite semigroups, ternary Boolean algebra, logic calculi, combinatory logic, group theory,
lattice theory, and algebraic geometry.”
Several years later the University of Technology, Munich, created the high-
performance prover SETHEO [LSBB92] based on fast PROLOG technology. With
the goal of reaching even higher performance, an implementation for parallel
computers was developed under the name PARTHEO. It turned out that it was not
worthwhile to use special hardware in theorem provers, as is also the case in other
areas of AI, because these computers are very quickly overtaken by faster pro-
cessors and more intelligent algorithms. Munich is also the birthplace of E [Sch02],
an award-winning modern equation prover, which we will become familiar with in
the next example. On E’s homepage one can read the following compact, ironic
characterization, whose second part incidentally applies to all automated provers in
existence today.

“E is a purely equational theorem prover for clausal logic. That means it is a program that
you can stuff a mathematical speciﬁcation (in clausal logic with equality) and a hypothesis
into, and which will then run forever, using up all of your machines resources. Very
occasionally it will ﬁnd a proof for the hypothesis and tell you so ;-).”
Finding proofs for true propositions is apparently so difﬁcult that the search suc-
ceeds only extremely rarely, or only after a very long time—if at all. We will go
into this in more detail in Chap. 4. Here it should be mentioned, though, that not
only computers, but also most people have trouble ﬁnding strict formal proofs.
Though evidently computers by themselves are in many cases incapable of
ﬁnding a proof, the next best thing is to build systems that work semi-automatically
and allow close cooperation with the user. Thereby the human can better apply his
knowledge of special application domains and perhaps limit the search for the
proof. One of the most successful interactive provers for higher-order predicate
logic is Isabelle [NPW02], a common product of Cambridge University and the
University of Technology, Munich.
Anyone searching for a high-performance prover should look at the current
results of the CASC (CADE ATP System Competition) [SS06].1 Here we ﬁnd that
the winner from 2001 to 2006 in the PL1 and clause normal form categories was
Manchester’s prover Vampire, which works with a resolution variant and a special
approach to equality. The system Waldmeister of the Max Planck Institute in
Saarbrücken has been leading for years in equality proving.
The many top positions of German systems at CASC show that German research
groups in the area of automated theorem proving are playing a leading role, today as
well as in the past.
3.7
Mathematical Examples
We now wish to demonstrate the application of an automated prover with the
aforementioned prover E [Sch02]. E is a specialized equality prover which greatly
shrinks the search space through an optimized treatment of equality.
We want to prove that left- and right-neutral elements in a semigroup are equal.
First we formalize the claim step by step.
Deﬁnition 3.10 A structure (M,⋅) consisting of a set M with a two-place inner
operation “⋅” is called a semigroup if the law of associativity
8x 8y 8z ðx ␇ yÞ ␇ z ¼ x ␇ ðy ␇ zÞ
holds. An element e2 M
8x e ␇ x ¼ x ð8x x ␇ e ¼ xÞ.

It remains to be shown that
Theorem 3.7 If a semigroup has a left-neutral element el and a right-neutral
element er, then el = er.
First we prove the theorem semi-formally by intuitive mathematical reasoning.
Clearly it holds for all x 2 M that
el ␇ x ¼ xð3:8Þ
x ␇ er ¼ x:ð3:9Þ
and
If we set x = er in (3.8) and x = el in (3.9), we obtain the two equations el ⋅ er = er
and el ⋅ er = el. Joining these two equations yields
el ¼ el ␇ er ¼ er ;
which we want to prove. In the last step, incidentally, we used the fact that equality
is symmetric and transitive.
Before we apply the automated prover, we carry out the resolution proof man-
ually. First we formalize the negated query and the knowledge base KB, consisting
of the axioms as clauses in conjunctive normal form:
negated query
ð:el ¼ er Þ1
ðmðmðx; yÞ; zÞ ¼ mðx; mðy; zÞÞÞ2
ðmðel ; xÞ ¼ xÞ3
ðmðx; er Þ ¼ xÞ4
equality axioms:
ðx ¼ xÞ5(reflexivity)
ð:x ¼ y _ y ¼ xÞ6(symmetry)
ð:x ¼ y _ :y ¼ z _ x ¼ zÞ7
ð:x ¼ y _ mðx; zÞ ¼ mðy; zÞÞ8(transitivity)
substitution in m
ð:x ¼ y _ mðz; xÞ ¼ mðz; yÞÞ9substitution in m;
where multiplication is represented by the two-place function symbol m. The
equality axioms were formulated analogously to (3.1) on page 45 and (3.2) on
page 45. A simple resolution proof has the form

Resð3; 6; x6 =mðel ; x3 Þ; y6 =x3 Þ :
Resð7; 10; x7 =x10 ; y7 =mðel ; x10 ÞÞ :
Resð4; 11; x4 =el ; x11 =er ; z11 =el Þ :
Resð1; 12; ;Þ :
ðx ¼ mðel ; xÞÞ10
ð:mðel ; xÞ ¼ z _ x ¼ zÞ11
ðer ¼ el Þ12
ðÞ:
Here, for example, Res(3, 6, x6/m(el , x3), y6/x3) means that in the resolution of clause 3
with clause 6, the variable x from clause 6 is replaced by m(el, x3) with variable x from
clause 3. Analogously, y from clause 6 is replaced by x from clause 3.
Now we want to apply the prover E to the problem. The clauses are transformed
into the clause normal form language LOP through the mapping
(¬A1 _ ␇␇␇ _ ¬Am _ B1 _ ␇␇␇ _ Bn)
7! B1; ␇␇␇ ; Bn < –A1, ␇␇␇ , Am.
The syntax of LOP represents an extension of the PROLOG syntax (see Chap. 5)
for non Horn clauses. Thus we obtain as an input ﬁle for E

where equality is modeled by the predicate symbol eq. Calling the prover delivers

Positive literals are identiﬁed by ++ and negative literals by – –. In lines 0 to 4,
marked with initial, the clauses from the input data are listed again. pm(a, b)
stands for a resolution step between clause a and clause b. We see that the proof
found by E is very similar to the manually created proof. Because we explicitly
model the equality by the predicate eq, the particular strengths of E do not come
into play. Now we omit the equality axioms and obtain

as input for the prover.
The proof also becomes more compact. We see in the following output of the
prover that the proof consists essentially of a single inference step on the two
relevant clauses 1 and 2.

The reader might now take a closer look at the capabilities of E (Exercise 3.9 on
page 64).
3.8
Applications
In mathematics automated theorem provers are used for certain specialized tasks.
For example, the important four color theorem of graph theory was ﬁrst proved in
1976 with the help of a special prover. However, automated provers still play a
minor role in mathematics.

On the other hand, in the beginning of AI, predicate logic was of great impor-
tance for the development of expert systems in practical applications. Due to its
problems modeling uncertainty (see Sect. 4.4), expert systems today are most often
developed using other formalisms.
Today logic plays an ever more important role in veriﬁcation tasks. Automatic
program veriﬁcation is currently an important research area between AI and soft-
ware engineering. Increasingly complex software systems are now taking over tasks
of more and more responsibility and security relevance. Here a proof of certain
safety characteristics of a program is desirable. Such a proof cannot be brought
about through testing of a ﬁnished program, for in general it is impossible to apply a
program to all possible inputs. This is therefore an ideal domain for general or even
specialized inference systems. Among other things, cryptographic protocols are in
use today whose security characteristics have been automatically veriﬁed [FS97,
Sch01]. A further challenge for the use of automated provers is the synthesis of
software and hardware. To this end, for example, provers should support the
software engineer in the generation of programs from speciﬁcations.
Software reuse is also of great importance for many programmers today. The
programmer looks for a program that takes input data with certain properties and
calculates a result with desired properties. A sorting algorithm accepts input data
with entries of a certain data type and from these creates a permutation of these
entries with the property that every element is less than or equal to the next element.
The programmer ﬁrst formulates a speciﬁcation of the query in PL1 consisting of
two parts. The ﬁrst part PREQ comprises the preconditions, which must hold before
the desired program is applied. The second part POSTQ contains the postconditions,
which must hold after the desired program is applied.
In the next step a software database must be searched for modules which fulﬁll
these requirements. To check this formally, the database must store a formal
description of the preconditions PREM and postconditions POSTM for every mod-
ule M. An assumption about the capabilities of the modules is that the preconditions
of the module follow from the preconditions of the query. It must hold that
PREQ ) PREM :
All conditions that are required as a prerequisite for the application of module
M must appear as preconditions in the query. If, for example, a module in the
database only accepts lists of integers, then lists of integers as input must also
appear as preconditions in the query. An additional requirement in the query that,
for example, only even numbers appear, does not cause a problem.
Furthermore, it must hold for the postconditions that
POST M ) POST Q :
That is, after application of the module, all attributes that the query requires must be
fulﬁlled. We now show the application of a theorem prover to this task in an
example from [Sch01].

Example 3.8 VDM-SL, the Vienna Development Method Speciﬁcation Language,
is often used as a language for the speciﬁcation of pre- and postconditions. Assume
that in the software database the description of a module ROTATE is available, which
moves the ﬁrst list element to the end of the list. We are looking for a module SHUFFLE,
which creates an arbitrary permutation of the list. The two speciﬁcations read

Here “^” stands for the concatenation of lists, and “⋅” separates quantiﬁers with their
variables from the rest of the formula. The functions “head l” and “tail l” choose the
ﬁrst element and the rest from the list, respectively. The speciﬁcation of SHUFFLE
indicates that every list element i that was in the list (x) before the application of
SHUFFLE must be in the result (x′) after the application, and vice versa. It must now be
shown that the formula (PREQ ) PREM) ^ (POSTM ) POSTQ) is a consequence of
the knowledge base containing a description of the data type List. The two VDM-SL
speciﬁcations yield the proof task
∀l, l , x, x : List · (l = x ∧ l = x ∧ (w ⇒ w)) ∧
(l = x ∧ l = x ∧ ((l = [] ⇒ l = []) ∧ (l
l = (tl l)ˆ[hd l])
⇒ ∀i : Item · (∃x1 , x2 : List · x = x1ˆ[i]ˆx2 ⇔ ∃y1 , y2 : List · x = y1ˆ[i]ˆy2 ))),
which can then be proven with the prover SETHEO.
In the coming years the semantic web will likely represent an important appli-
cation of PL1. The content of the World Wide Web is supposed to become inter-
pretable not only for people, but for machines. To this end web sites are being
furnished with a description of their semantics in a formal description language.
The search for information in the web will thereby become signiﬁcantly more
effective than today, where essentially only text building blocks are searchable.
Decidable subsets of predicate logic are used as description languages. The
development of efﬁcient calculi for reasoning is very important and closely con-
nected to the description languages. A query for a future semantically operating
search engine could (informally) read: Where in Switzerland next Sunday at ele-
vations under 2000 meters will there be good weather and optimally prepared ski
slopes? To answer such a question, a calculus is required that is capable of working
very quickly on large sets of facts and rules. Here, complex nested function terms
are less important.

As a basic description framework, the World Wide Web Consortium developed
the language RDF (Resource Description Framework). Building on RDF, the sig-
niﬁcantly more powerful language OWL (Web Ontology Language) allows the
description of relations between objects and classes of objects, similarly to PL1
[SET09]. Ontologies are descriptions of relationships between possible objects.
A difﬁculty when building a description of the innumerable websites is the
expenditure of work and also checking the correctness of the semantic descriptions.
Here machine learning systems for the automatic generation of descriptions can be
very helpful. An interesting use of “automatic” generation of semantics in the web
was introduced by Luis von Ahn of Carnegie Mellon University [vA06]. He
developed computer games in which the players, distributed over the network, are
supposed to collaboratively describe pictures with key words. Thus the pictures are
assigned semantics in a fun way at no cost.
3.9
Summary
We have provided the most important foundations, terms, and procedures of
predicate logic and we have shown that even one of the most difﬁcult intellectual
tasks, namely the proof of mathematical theorems, can be automated. Automated
provers can be employed not only in mathematics, but rather, in particular, in
veriﬁcation tasks in computer science. For everyday reasoning, however, predicate
logic in most cases is ill-suited. In the next and the following chapters we show its
weak points and some interesting modern alternatives. Furthermore, we will show
in Chap. 5 that one can program elegantly with logic and its procedural
extensions.
Anyone interested in ﬁrst-order logic, resolution and other calculi for automated
provers will ﬁnd good advanced instruction in [New00, Fit96, Bib82, Lov78,
CL73]. References to Internet resources can be found on this book’s web site.
3.10
Exercises
Exercise 3.1 Let the three-place predicate “child” and the one-place predicate
“female” from Example 3.2 on page 43 be given. Deﬁne:
(a) A one-place predicate “male”.
(b) A two-place predicate “father” and “mother”.
(c) A two-place predicate “siblings”.
(d) A predicate “parents (x, y, z)”, which is true if and only if x is the father and
y is the mother of z.
(e) A predicate “uncle (x, y)”, which is true if and only if x is the uncle of y (use
the predicates that have already been deﬁned).
(f) A two-place predicate “ancestor” with the meaning: ancestors are parents,
grandparents, etc. of arbitrarily many generations.

Exercise 3.2 Formalize the following statements in predicate logic:
(a) Every person has a father and a mother.
(b) Some people have children.
(c) All birds fly.
(d) There is an animal that eats (some) grain-eating animals.
(e) Every animal eats plants or plant-eating animals which are much smaller than
itself.
Exercise 3.3 Adapt Exercise 3.1 on page 63 by using one-place function symbols
and equality instead of “father” and “mother”.
Exercise 3.4 Give predicate logic axioms for the two-place relation “<” as a total
order. For a total order we must have (1) Any two elements are comparable. (2) It is
symmetric. (3) It is transitive.
Exercise 3.5 Unify (if possible) the following terms and give the MGU and the
resulting terms.
(a) p(x, f(y)), p(f(z), u)
(b) p(x, f(x)), p(y, y)
(c) x = 4 − 7 ␇ x, cos y = z
(d) x < 2 ␇ x, 3 < 6
(e) q(f(x, y, z), f (gðw; wÞ, g(x, x), g(y, y))), q(u, u)
Exercise 3.6
(a) Transform Russell’s Paradox from Example 3.7 on page 54 into CNF.
(b) Show that the empty clause cannot be derived using resolution without
factorization from (3.7) on page 54. Try to understand this intuitively.
Exercise 3.7
(a) Why is resolution with the set of support strategy incomplete?
(b) Justify (without proving) why the set of support strategy becomes complete if
(KB ^ ¬Q)\SOS is satisﬁable.
(c) Why is resolution with the pure literal rule complete?
❄ Exercise 3.8 Formalize and prove with resolution that in a semigroup with at least
two different elements a, b, a left-neutral element e, and a left null element n, these
two elements have to be different, that is, that n 6¼ e. Use demodulation, which
allows replacement of “like with like”.
Exercise 3.9 Obtain the theorem prover E [Sch02] or another prover and prove the
following statements. Compare these proofs with those in the text.
(a) The claim from Example 2.3 on page 33.
(b) Russell’s paradox from Example 3.7 on page 54.
(c) The claim from Exercise 3.8.


