Propositional Logic
In propositional logic, as the name suggests, propositions are connected by logical
operators. The statement “the street is wet” is a proposition, as is “it is raining”.
These two propositions can be connected to form the new proposition
if it is raining the street is wet.
Written more formally
it is raining ) the street is wet.
This notation has the advantage that the elemental propositions appear again in
unaltered form. So that we can work with propositional logic precisely, we will
begin with a deﬁnition of the set of all propositional logic formulas.
2.1
Syntax
Deﬁnition 2.1 Let Op = {¬, ^, _, ),,,(,)} be the set of logical operators
and R a set of symbols. The sets Op, R and {t, f} are pairwise disjoint. R is
called the signature and its elements are the proposition variables. The set of
propositional logic formulas is now recursively deﬁned:
• t and f are (atomic) formulas.
• All proposition variables, that is all elements from R, are (atomic)
formulas.
• If A and B are formulas, then ¬A, (A), A ^ B, A _ B, A ) B, A , B are
also formulas.

This elegant recursive deﬁnition of the set of all formulas allows us to generate
inﬁnitely many formulas. For example, given R = {A, B, C},
A ^ B;
A ^ B ^ C;
A ^ A ^ A;
C ^ B _ A;
ð:A ^ BÞ ) ð:C _ AÞ
are formulas. (((A)) _ B) is also a syntactically correct formula.
Deﬁnition 2.2 We read the symbols and operators in the following way:
t: “true”
f : “false”
¬A: “not A”
(negation)
A ∧ B: “A and B”
(conjunction)
A ∨ B: “A or B”
(disjunction)
A ⇒ B: “if A then B”
(implication (also called material implication))
A ⇔ B: “A if and only if B” (equivalence)
The formulas deﬁned in this way are so far purely syntactic constructions
without meaning. We are still missing the semantics.
2.2
Semantics
In propositional logic there are two truth values: t for “true” and f for “false”.
We begin with an example and ask ourselves whether the formula A ^ B is true.
The answer is: it depends on whether the variables A and B are true. For example, if
A stands for “It is raining today” and B for “It is cold today” and these are both true,
then A ^ B is true. If, however, B represents “It is hot today” (and this is false), then
A ^ B is false.
We must obviously assign truth values that reflect the state of the world to
proposition variables. Therefore we deﬁne
Deﬁnition 2.3 A mapping I : R ! {t, f}, which assigns a truth value to
every proposition variable, is called an interpretation.
Because every proposition variable can take on two truth values, every propo-
sitional logic formula with n different variables has 2n different interpretations.
We deﬁne the truth values for the basic operations by showing all possible inter-
pretations in a truth table (see Table 2.1 on page 25).

The empty formula is true for all interpretations. In order to determine the truth
value for complex formulas, we must also deﬁne the order of operations for logical
operators. If expressions are parenthesized, the term in the parentheses is evaluated
ﬁrst. For unparenthesized formulas, the priorities are ordered as follows, beginning
with the strongest binding: ¬, ^, _, ),,.
To clearly differentiate between the equivalence of formulas and syntactic
equivalence, we deﬁne
Deﬁnition 2.4 Two formulas F and G are called semantically equivalent if
they take on the same truth value for all interpretations. We write F ␂ G.
Semantic equivalence serves above all to be able to use the meta-language, that
is, natural language, to talk about the object language, namely logic. The statement
“A ␂ B” conveys that the two formulas A and B are semantically equivalent. The
statement “A, B” on the other hand is a syntactic object of the formal language of
propositional logic.
According to the number of interpretations in which a formula is true, we can
divide formulas into the following classes:
Deﬁnition 2.5 A formula is called
• Satisﬁable if it is true for at least one interpretation.
• Logically valid or simply valid if it is true for all interpretations. True
formulas are also called tautologies.
• Unsatisﬁable if it is not true for any interpretation.
Every interpretation that satisﬁes a formula is called a model of the formula.
Clearly the negation of every generally valid formula is unsatisﬁable. The
negation of a satisﬁable, but not generally valid formula F is satisﬁable.
We are now able to create truth tables for complex formulas to ascertain their
truth values. We put this into action immediately using equivalences of formulas
which are important in practice.

Proof To show the ﬁrst equivalence, we calculate the truth table for ¬A _ B and
A ) B and see that the truth values for both formulas are the same for all
interpretations. The formulas are therefore equivalent, and thus all the values of the
last column are “t”s.

The proofs for the other equivalences are similar and are recommended as exercises
for the reader (Exercise 2.2 on page 37).
□
2.3
Proof Systems
In AI we are interested in taking existing knowledge and from that deriving new
knowledge or answering questions. In propositional logic this means showing that a
knowledge base KB—that is, a (possibly extensive) propositional logic formula—
a formula Q1 follows. Thus, we ﬁrst deﬁne the term “entailment”.

Deﬁnition 2.6 A formula KB entails a formula Q (or Q follows from KB) if
every model of KB is also a model of Q. We write KB ␃ Q.
In other words, in every interpretation in which KB is true, Q is also true. More
succinctly, whenever KB is true, Q is also true. Because, for the concept of
entailment, interpretations of variables are brought in, we are dealing with a
semantic concept.
Every formula that is not valid chooses so to speak a subset of the set of all
interpretations as its model. Tautologies such as A _ ¬A, for example, do not restrict
the number of satisfying interpretations because their proposition is empty. The
empty formula is therefore true in all interpretations. For every tautology T then
; ␃ T. Intuitively this means that tautologies are always true, without restriction of
the interpretations by a formula. For short we write ␃ T. Now we show an important
connection between the semantic concept of entailment and syntactic implication.
Theorem 2.2 (Deduktionstheorem)
A ␃ B if and only if ␃ A ) B:
Proof Observe the truth table for implication:
ABA)B
t
t
f
ft
f
t
ft
f
t
t
An arbitrary implication A ) B is clearly always true except with the interpretation
A ↦ t, B ↦ f. Assume that A ␃ B holds. This means that for every interpretation
that makes A true, B is also true. The critical second row of the truth table does not
even apply in that case. Therefore A ) B is true, which means that A ) B is a
tautology. Thus one direction of the statement has been shown.
Now assume that A ) B holds. Thus the critical second row of the truth table is
also locked out. Every model of A is then also a model of B. Then A ␃ B holds. □
If we wish to show that KB entails Q, we can also demonstrate by means of the
truth table method that KB ) Q is a tautology. Thus we have our ﬁrst proof system
for propositional logic, which is easily automated. The disadvantage of this method
is the very long computation time in the worst case. Speciﬁcally, in the worst case

with n proposition variables, for all 2n interpretations of the variables the formula
KB ) Q must be evaluated. The computation time grows therefore exponentially
with the number of variables. Therefore this process is unusable for large variable
counts, at least in the worst case.
If a formula KB entails a formula Q, then by the deduction theorem KB ) Q is a
tautology. Therefore the negation ¬(KB ) Q) is unsatisﬁable. We have
:ðKB ) QÞ ␂ :ð:KB _ QÞ ␂ KB ^ :Q:
Therefore, KB ^ ¬Q is also unsatisﬁable. We formulate this simple, but important
consequence of the deduction theorem as a theorem.
Theorem 2.3 (Proof by contradiction) KB ␃ Q if and only if KB ^ ¬Q is
unsatisﬁable.
To show that the query Q follows from the knowledge base KB, we can also add
the negated query ¬Q to the knowledge base and derive a contradiction. Because of
the equivalence A ^ ¬A , f from Theorem 2.1 on page 26 we know that a
contradiction is unsatisﬁable. Therefore, Q has been proved. This procedure, which
is frequently used in mathematics, is also used in various automatic proof calculi
such as the resolution calculus and in the processing of PROLOG programs.
One way of avoiding having to test all interpretations with the truth table method
is the syntactic manipulation of the formulas KB and Q by application of inference
rules with the goal of greatly simplifying them, such that in the end we can instantly
see that KB ␃ Q. We call this syntactic process derivation and write KB ⊢ Q. Such
syntactic proof systems are called calculi. To ensure that a calculus does not
generate errors, we deﬁne two fundamental properties of calculi.
Deﬁnition 2.7 A calculus is called sound if every derived proposition fol-
lows semantically. That is, if it holds for formulas KB and Q that
if
KB ‘ Q
then
KB ␃ Q:
A calculus is called complete if all semantic consequences can be derived.
That is, for formulas KB and Q the following holds:
if
KB ␃ Q then
KB ‘ Q:
The soundness of a calculus ensures that all derived formulas are in fact semantic
consequences of the knowledge base. The calculus does not produce any “false
consequences”. The completeness of a calculus, on the other hand, ensures that the
calculus does not overlook anything. A complete calculus always ﬁnds a proof if

the formula to be proved follows from the knowledge base. If a calculus is sound
and complete, then syntactic derivation and semantic entailment are two equivalent
relations (see Fig. 2.1).
To keep automatic proof systems as simple as possible, these are usually made to
operate on formulas in conjunctive normal form.
Deﬁnition 2.8 A formula is in conjunctive normal form (CNF) if and only if
it consists of a conjunction
K1 ^ K2 ^ ␄ ␄ ␄ ^ Km
of clauses. A clause Ki consists of a disjunction
ðLi1 _ Li2 _ ␄ ␄ ␄ _ Lini Þ
of literals. Finally, a literal is a variable (positive literal) or a negated variable
(negative literal).
The formula (A _ B _ ¬C) ^ (A _ B) ^ (¬B _ ¬C) is in conjunctive normal
form. The conjunctive normal form does not place a restriction on the set of
formulas because:
Theorem 2.4 Every propositional logic formula can be transformed into an
equivalent conjunctive normal form.

Example 2.1 We put A _ B ) C ^ D into conjunctive normal form by using the
equivalences from Theorem 2.1 on page 26:
A_ B)C^D
␂ :ðA _ BÞ _ ðC ^ DÞðimplicationÞ
␂ ð:A ^ :BÞ _ ðC ^ DÞ
␂ ð:A _ ðC ^ DÞÞ ^ ð:B _ ðC ^ DÞÞðde MorganÞ
ðdistributive lawÞ
␂ ðð:A _ CÞ ^ ð:A _ DÞÞ ^ ðð:B _ CÞ ^ ð:B _ DÞÞ ðdistributive lawÞ
␂ ð:A _ CÞ ^ ð:A _ DÞ ^ ð:B _ CÞ ^ ð:B _ DÞ
ðassociative lawÞ
We are now only missing a calculus for syntactic proof of propositional logic
formulas. We start with the modus ponens, a simple, intuitive rule of inference, which,
from the validity of A and A ) B, allows the derivation of B. We write this formally as
A;
A)B
:
B
This notation means that we can derive the formula(s) below the line from the
comma-separated formulas above the line. Modus ponens as a rule by itself, while
sound, is not complete. If we add additional rules we can create a complete
calculus, which, however, we do not wish to consider here. Instead we will
investigate the resolution rule
A _ B; :B _ C
A_C
ð2:1Þ
as an alternative. The derived clause is called resolvent. Through a simple trans-
formation we obtain the equivalent form
A _ B; B ) C
:
A_C
If we set A to f, we see that the resolution rule is a generalization of the modus
ponens. The resolution rule is equally usable if C is missing or if A and C are
missing. In the latter case the empty clause can be derived from the contradiction
B ^ ¬B (Exercise 2.7 on page 38).
2.4
Resolution
We now generalize the resolution rule again by allowing clauses with an arbitrary
number of literals. With the literals A1, …, Am, B, C1, …, Cn the general resolution
rule reads


ðA1 _ ␄ ␄ ␄ _ Am _ BÞ; ð:B _ C1 _ ␄ ␄ ␄ _ Cn Þ
:
ðA1 _ ␄ ␄ ␄ _ Am _ C1 _ ␄ ␄ ␄ _ Cn Þ
ð2:2Þ
We call the literals B and ¬B complementary. The resolution rule deletes a pair of
complementary literals from the two clauses and combines the rest of the literals
into a new clause.
To prove that from a knowledge base KB, a query Q follows, we carry out a
proof by contradiction. Following Theorem 2.3 on page 28 we must show that a
contradiction can be derived from KB ^ ¬Q. In formulas in conjunctive normal
form, a contradiction appears in the form of two clauses (A) and (¬A), which lead to
the empty clause as their resolvent. The following theorem ensures us that this
process really works as desired.
For the calculus to be complete, we need a small addition, as shown by the
following example. Let the formula (A _ A) be given as our knowledge base. To
show by the resolution rule that from there we can derive (A ^ A), we must
show that the empty clause can be derived from (A _ A) ^ (¬A _ ¬A). With the
resolution rule alone, this is impossible. With factorization, which allows deletion
of copies of literals from clauses, this problem is eliminated. In the example, a
double application of factorization leads to (A) ^ (¬A), and a resolution step to the
empty clause.
Theorem 2.5 The resolution calculus for the proof of unsatisﬁability of
formulas in conjunctive normal form is sound and complete.
Because it is the job of the resolution calculus to derive a contradiction from
KB ^ ¬Q, it is very important that the knowledge base KB is consistent:
Deﬁnition 2.9 A formula KB is called consistent if it is impossible to derive
from it a contradiction, that is, a formula of the form / ^ ¬/.
Otherwise anything can be derived from KB (see Exercise 2.8 on page 38). This
is true not only of resolution, but also for many other calculi.
Of the calculi for automated deduction, resolution plays an exceptional role.
Thus we wish to work a bit more closely with it. In contrast to other calculi,
resolution has only two inference rules, and it works with formulas in conjunctive
normal form. This makes its implementation simpler. A further advantage com-
pared to many calculi lies in its reduction in the number of possibilities for the
application of inference rules in every step of the proof, whereby the search space is
reduced and computation time decreased.
As an example, we start with a simple logic puzzle that allows the important
steps of a resolution proof to be shown.

Example 2.2 Logic puzzle number 7, entitled A charming English family, from the
German book [Ber89] reads (translated to English):
Despite studying English for seven long years with brilliant success, I must admit that when
I hear English people speaking English I’m totally perplexed. Recently, moved by noble
feelings, I picked up three hitchhikers, a father, mother, and daughter, who I quickly
realized were English and only spoke English. At each of the sentences that follow I
wavered between two possible interpretations. They told me the following (the second
possible meaning is in parentheses): The father: “We are going to Spain (we are from
Newcastle).” The mother: “We are not going to Spain and are from Newcastle (we stopped
in Paris and are not going to Spain).” The daughter: “We are not from Newcastle (we
stopped in Paris).” What about this charming English family?
To solve this kind of problem we proceed in three steps: formalization, trans-
formation into normal form, and proof. In many cases formalization is by far the
most difﬁcult step because it is easy to make mistakes or forget small details. (Thus
practical exercise is very important. See Exercises 2.9–2.11 on page 38.)
Here we use the variables S for “We are going to Spain”, N for “We are from
Newcastle”, and P for “We stopped in Paris” and obtain as a formalization of the
three propositions of father, mother, and daughter
ðS _ NÞ ^ ½ð:S ^ NÞ _ ðP ^ :SÞ␅ ^ ð:N _ PÞ:
Factoring out ¬S in the middle sub-formula brings the formula into CNF in one
step. Numbering the clauses with subscripted indices yields
KB ␂ ðS _ NÞ1 ^ ð:SÞ2 ^ ðP _ NÞ3 ^ ð:N _ PÞ4 :
Now we begin the resolution proof, at ﬁrst still without a query Q. An expression of
the form “Res(m, n): 〈clause〉k” means that 〈clause〉 is obtained by resolution of
clause m with clause n and is numbered k.
Resð1; 2Þ:
Resð3; 4Þ:(N)5
(P)6
Resð1; 4Þ:(S _ P)7
We could have derived clause P also from Res(4, 5) or Res(2, 7). Every further
resolution step would lead to the derivation of clauses that are already available.
Because it does not allow the derivation of the empty clause, it has therefore been
shown that the knowledge base is non-contradictory. So far we have derived
N and P. To show that ¬S holds, we add the clause (S)8 to the set of clauses as a
negated query. With the resolution step
Resð2; 8Þ :
ðÞ9
the proof is complete. Thus ¬S ^ N ^ P holds. The “charming English family”
evidently comes from Newcastle, stopped in Paris, but is not going to Spain.

Example 2.3 Logic puzzle number 28 from [Ber89], entitled The High Jump, reads
Three girls practice high jump for their physical education ﬁnal exam. The bar is set to 1.20
meters. “I bet”, says the ﬁrst girl to the second, “that I will make it over if, and only if, you
don’t”. If the second girl said the same to the third, who in turn said the same to the ﬁrst,
would it be possible for all three to win their bets?
We show through proof by resolution that not all three can win their bets.
Formalization:
The first girl’s jump succeeds: A;
the second girl’s jump succeeds: B;
the third girl’s jump succeeds: C:
First girl’s bet: ðA , :BÞ;
second girl’s bet: ðB , :C Þ;
third girl’s bet: ðC , :AÞ:
Claim: the three cannot all win their bets:
Q ␂ :ððA , :BÞ ^ ðB , :CÞ ^ ðC , :AÞÞ
It must now be shown by resolution that ¬Q is unsatisﬁable.
Transformation into CNF: First girl’s bet:
ðA , :BÞ ␂ ðA ) :BÞ ^ ð:B ) AÞ ␂ ð:A _ :BÞ ^ ðA _ BÞ
The bets of the other two girls undergo analogous transformations, and we obtain
the negated claim
:Q ␂ ð:A _ :BÞ1 ^ ðA _ BÞ2 ^ ð:B _ :CÞ3 ^ ðB _ CÞ4 ^ ð:C _ :AÞ5
^ ðC _ AÞ6 :
From there we derive the empty clause using resolution:
Resð1; 6Þ :ðC _ :BÞ7
Resð4; 7Þ :
Resð2; 5Þ :ðCÞ8
ðB _ :CÞ9
Resð3; 9Þ :ð:CÞ10
Resð8; 10Þ :ðÞ
Thus the claim has been proved.
2.5
Horn Clauses
A clause in conjunctive normal form contains positive and negative literals and can
be represented in the form

ð:A1 _ ␄ ␄ ␄ _ :Am _ B1 _ ␄ ␄ ␄ _ Bn Þ
with the variables A1, …, Am and B1, …, Bn. This clause can be transformed in two
simple steps into the equivalent form
A 1 ^ ␄ ␄ ␄ ^ A m ) B 1 _ ␄ ␄ ␄ _ Bn :
This implication contains the premise, a conjunction of variables and the conclu-
sion, a disjunction of variables. For example, “If the weather is nice and there is
snow on the ground, I will go skiing or I will work.” is a proposition of this form.
The receiver of this message knows for certain that the sender is not going
swimming. A signiﬁcantly clearer statement would be “If the weather is nice and
there is snow on the ground, I will go skiing.”. The receiver now has deﬁnite
information. Thus we call clauses with at most one positive literal deﬁnite clauses.
These clauses have the advantage that they only allow one conclusion and are thus
distinctly simpler to interpret. Many relations can be described by clauses of this
type. We therefore deﬁne
Deﬁnition 2.10 Clauses with at most one positive literal of the form
ð:A1 _ ␄ ␄ ␄ _ :Am _ BÞ or
ð:A1 _ ␄ ␄ ␄ _ :Am Þ or B
or (equivalently)
A 1 ^ ␄ ␄ ␄ ^ Am ) B
or
A 1 ^ ␄ ␄ ␄ ^ Am ) f
or
B:
are named Horn clauses (after their inventor). A clause with a single positive
literal is a fact. In clauses with negative and one positive literal, the positive
literal is called the head.
To better understand the representation of Horn clauses, the reader may derive
them from the deﬁnitions of the equivalences we have currently been using
(Exercise 2.12 on page 38).
Horn clauses are easier to handle not only in daily life, but also in formal
reasoning, as we can see in the following example. Let the knowledge base consist
of the following clauses (the “^” binding the clauses is left out here and in the text
that follows):
ðnice weather Þ1
ðsnowfallÞ2
ðsnowfall ) snowÞ3
ðnice weather ^ snow ) skiingÞ4

If we now want to know whether skiing holds, this can easily be derived. A slightly
generalized modus ponens sufﬁces here as an inference rule:
A 1 ^ ␄ ␄ ␄ ^ Am ;
A1 ^ ␄ ␄ ␄ ^ A m ) B
:
B
The proof of “skiing” has the following form (MP(i1, …, ik) represents application
of the modus ponens on clauses i1 to ik:
MPð2; 3Þ :
ðsnowÞ5
MPð1; 5; 4Þ : ðskiingÞ6 :
With modus ponens we obtain a complete calculus for formulas that consist of
propositional logic Horn clauses. In the case of large knowledge bases, however,
modus ponens can derive many unnecessary formulas if one begins with the
wrong clauses. Therefore, in many cases it is better to use a calculus that starts
with the query and works backward until the facts are reached. Such systems are
designated backward chaining, in contrast to forward chaining systems, which
start with facts and ﬁnally derive the query, as in the above example with the
modus ponens.
For backward chaining of Horn clauses, SLD resolution is used. SLD stands for
“Selection rule driven linear resolution for deﬁnite clauses”. In the above example,
augmented by the negated query (skiing ) f)
ðnice weather Þ1
ðsnowfallÞ2
ðsnowfall ) snowÞ3
ðnice weather ^ snow ) skiingÞ4
ðskiing ) f Þ5
we carry out SLD resolution beginning with the resolution steps that follow from
this clause
Resð5; 4Þ :ðnice weather ^ snow ) f Þ6
Resð6; 1Þ :
Resð7; 3Þ :ðsnow ) f Þ7
ðsnowfall ) f Þ8
Resð8; 2Þ :ðÞ
and derive a contradiction with the empty clause. Here we can easily see “linear
resolution”, which means that further processing is always done on the currently
derived clause. This leads to a great reduction of the search space. Furthermore, the

literals of the current clause are always processed in a ﬁxed order (for example,
from right to left) (“Selection rule driven”). The literals of the current clause are
called subgoal. The literals of the negated query are the goals. The inference rule
for one step reads
A 1 ^ ␄ ␄ ␄ ^ A m ) B 1 ; B1 ^ B 2 ^ ␄ ␄ ␄ ^ B n ) f
:
A1 ^ ␄ ␄ ␄ ^ Am ^ B 2 ^ ␄ ␄ ␄ ^ Bn ) f
Before application of the inference rule, B1, B2, …, Bn—the current subgoals—must
be proved. After the application, B1 is replaced by the new subgoal A1 ^ ␄␄␄ ^ Am.
To show that B1 is true, we must now show that A1 ^ ␄␄␄ ^ Am are true. This process
continues until the list of subgoals of the current clauses (the so-called goal stack) is
empty. With that, a contradiction has been found. If, for a subgoal ¬Bi, there is no
clause with the complementary literal Bi as its clause head, the proof terminates and
no contradiction can be found. The query is thus unprovable.
SLD resolution plays an important role in practice because programs in the logic
programming language PROLOG consist of predicate logic Horn clauses, and their
processing is achieved by means of SLD resolution (see Exercise 2.13 on page 38,
or Chap. 5).
2.6
Computability and Complexity
The truth table method, as the simplest semantic proof system for propositional
logic, represents an algorithm that can determine every model of any formula in
ﬁnite time. Thus the sets of unsatisﬁable, satisﬁable, and valid formulas are
decidable. The computation time of the truth table method for satisﬁability grows in
the worst case exponentially with the number n of variables because the truth table
has 2n rows. An optimization, the method of semantic trees, avoids looking at
variables that do not occur in clauses, and thus saves computation time in many
cases, but in the worst case it is likewise exponential.
In resolution, in the worst case the number of derived clauses grows exponen-
tially with the number of initial clauses. To decide between the two processes, we
can therefore use the rule of thumb that in the case of many clauses with few
variables, the truth table method is preferable, and in the case of few clauses with
many variables, resolution will probably ﬁnish faster.
The question remains: can proof in propositional logic go faster? Are there better
algorithms? The answer: probably not. After all, S. Cook, the founder of com-
plexity theory, has shown that the 3-SAT problem is NP-complete. 3-SAT is the set
of all CNF formulas whose clauses have exactly three literals. Thus it is clear that
there is probably (modulo the P/NP problem) no polynomial algorithm for 3-SAT,
and thus probably not a general one either. For Horn clauses, however, there is an
algorithm in which the computation time for testing satisﬁability grows only lin-
early as the number of literals in the formula increases.

2.7
37
Applications and Limitations
Theorem provers for propositional logic are part of the developer’s everyday
toolset in digital technology. For example, the veriﬁcation of digital circuits and
the generation of test patterns for testing of microprocessors in fabrication are
some of these tasks. Special proof systems that work with binary decision dia-
grams (BDD) are also employed as a data structure for processing propositional
logic formulas.
In AI, propositional logic is employed in simple applications. For example,
simple expert systems can certainly work with propositional logic. However, the
variables must all be discrete, with only a few values, and there may not be any
cross-relations between variables. Complex logical connections can be expressed
much more elegantly using predicate logic.
Probabilistic logic is a very interesting and current combination of propositional
logic and probabilistic computation that allows modeling of uncertain knowledge.
It is handled thoroughly in Chap. 7.
2.8
Exercises
➳ Exercise 2.1 Give a Backus–Naur form grammar for the syntax of propositional
logic.
Exercise 2.2 Show that the following formulas are tautologies:
(a) ¬(A ^ B) , ¬A _ ¬B
(b) A ) B , ¬B ) ¬A
(c) ((A ) B) ^ (B ) A)) , (A , B)
(d) (A _ B) ^ (¬B _ C) ) (A _ C)
Exercise 2.3 Transform the following formulas into conjunctive normal form:
(a) A , B
(b) A ^ B , A _ B
(c) A ^ (A ) B) ) B
Exercise 2.4 Check the following statements for satisﬁability or validity.
(a) (play_lottery ^ six_right) ) winner
(b) (play_lottery ^ six_right ^ (six_right ) win)) ) win
(c) ¬(¬gas_in_tank ^ (gas_in_tank _ ¬car_starts) ) ¬car_starts)
❄ ❄ Exercise 2.5 Using the programming language of your choice, program a theorem
prover for propositional logic using the truth table method for formulas in
conjunctive normal form. To avoid a costly syntax check of the formulas, you may
represent clauses as lists or sets of literals, and the formulas as lists or sets of
clauses. The program should indicate whether the formula is unsatisﬁable, satisﬁ-
able, or true, and output the number of different interpretations and models.

Exercise 2.6
(a) Show that modus ponens is a valid inference rule by showing that
A ^ ðA ) BÞ ␃ B.
(b) Show that the resolution rule (2.1) is a valid inference rule.
❄ Exercise 2.7 Show by application of the resolution rule that, in conjunctive normal
form, the empty clause is equivalent to the false statement.
❄ Exercise 2.8 Show that, with resolution, one can “derive” any arbitrary clause from
a knowledge base that contains a contradiction.
Exercise 2.9 Formalize the following logical functions with the logical operators
and show that your formula is valid. Present the result in CNF.
(a) The XOR operation (exclusive or) between two variables.
(b) The statement at least two of the three variables A, B, C are true.
❄ Exercise 2.10 Solve the following case with the help of a resolution proof: “If the
criminal had an accomplice, then he came in a car. The criminal had no accomplice
and did not have the key, or he had the key and an accomplice. The criminal had the
key. Did the criminal come in a car or not?”
Exercise 2.11 Show by resolution that the formula from
(a) Exercise 2.2(d) is a tautology.
(b) Exercise 2.4(c) is unsatisﬁable.
Exercise 2.12 Prove the following equivalences, which are important for working
with Horn clauses:
(a) (¬A1_ ␄␄␄ _ ¬Am _ B) ␂ A1 ^ ␄␄␄ ^ Am ) B
(b) (¬A1 _ ␄␄␄ _ ¬Am) ␂ A1 ^ ␄␄␄ ^ Am ) f
(c) A ␂ w ) A
Exercise 2.13 Show by SLD resolution that the following Horn clause set is
unsatisﬁable.
ðAÞ1
ðBÞ2
ðCÞ3
ðDÞ4
ðEÞ5
ðA ^ B ^ C ) FÞ6
ðA ^ D ) GÞ7
ðC ^ F ^ E ) HÞ8
ðH ) f Þ9
➳ Exercise 2.14 In Sect. 2.6 it says: “Thus it is clear that there is probably (modulo
the P/NP problem) no polynomial algorithm for 3-SAT, and thus probably not a
general one either.” Justify the “probably” in this sentence.


