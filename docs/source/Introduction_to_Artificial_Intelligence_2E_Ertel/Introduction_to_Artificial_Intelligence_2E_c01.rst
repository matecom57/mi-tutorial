After 60 years, Artiﬁcial Intelligence (AI) has now reached industry and the con-
sciousness of the population. The impressive successes and new AI methods are
now so relevant that they should be taught even in a basic course. In about 30 new
pages, I report mainly on deep learning, a consistent further development of neural
networks, which ﬁnally enables image processing systems to recognize almost any
object in pixel images. Among other beneﬁts, this lead to the ﬁrst computer pro-
gram that could beat one of the world’s best Go players.
In the new section on Deep Learning, we must not leave out a short report about
the fascinating new subarea of creativity. For the ﬁrst time neural networks can
creatively generate texts, music pieces, and even paintings in the style of the old
masters. These achievements are based on many years of research on neural net-
works and machine learning. Practical AI has developed into an engineering dis-
cipline in which programs are developed in large industrial teams by experts from
various specializations.
Self-driving cars, service robots, and smart homes—which are all applications of
AI—will greatly change our lives. However, in addition to great rays of hope, there
will be a dark side. Though we live in a time of rapid technological progress, we
have long since exceeded the limits of growth. We must therefore think about
sustainability when implementing each new invention. In Chap. 1, I would like to
give you some food for thought about this topic.
Other new additions to the book include a section on performance evaluation of
clustering algorithms and two practical examples explaining Bayes’ theorem and its
relevance in everyday life. Finally, in a section on search algorithms, we analyze the
cycle check, explain route planning for car navigation systems, and briefly intro-
duce Monte Carlo Tree Search.
All known errors have been corrected and updates have been made in many
places.
I would like to sincerely thank the readers who have given me feedback and all
those who contributed to this new edition through proofreading and suggestions.

I would especially like to thank Adrian Batzill for the route planning measurements
and graphs, as well as Nate Black, Nicole Dathe, Markus Schneider, Robin Leh-
mann, Ankita Agrawal, Wenzel Massag, Lars Berge, Jonas Lang, and Richard
Cubek.

1.1
What Is Artificial Intelligence?
The term artiﬁcial intelligence stirs emotions. For one thing there is our fascination
with intelligence, which seemingly imparts to us humans a special place among life
forms. Questions arise such as “What is intelligence?”, “How can one measure
intelligence?” or “How does the brain work?”. All these questions are meaningful
when trying to understand artiﬁcial intelligence. However, the central question for
the engineer, especially for the computer scientist, is the question of the intelligent
machine that behaves like a person, showing intelligent behavior.
The attribute artiﬁcial might awaken much different associations. It brings up
fears of intelligent cyborgs. It recalls images from science ﬁction novels. It raises
the question of whether our highest good, the soul, is something we should try to
understand, model, or even reconstruct.
With such different offhand interpretations, it becomes difﬁcult to deﬁne the term
artiﬁcial intelligence or AI simply and robustly. Nevertheless I would like to try,
using examples and historical deﬁnitions, to characterize the ﬁeld of AI. In 1955,
John McCarthy, one of the pioneers of AI, was the ﬁrst to deﬁne the term artiﬁcial
intelligence, roughly as follows:
The goal of AI is to develop machines that behave as though they were intelligent.
To test this deﬁnition, the reader might imagine the following scenario. Fifteen
or so small robotic vehicles are moving on an enclosed four by four meter square
surface. One can observe various behavior patterns. Some vehicles form small
groups with relatively little movement. Others move peacefully through the
space and gracefully avoid any collision. Still others appear to follow a leader.
Aggressive behaviors are also observable. Is what we are seeing intelligent
behavior?
According to McCarthy’s deﬁnition the aforementioned robots can be described
as intelligent. The psychologist Valentin Braitenberg has shown that this seemingly

complex behavior can be produced by very simple electrical circuits [Bra84].
So-called Braitenberg vehicles have two wheels, each of which is driven by an
independent electric motor. The speed of each motor is influenced by a light sensor
on the front of the vehicle as shown in Fig. 1.1. The more light that hits the sensor,
the faster the motor runs. Vehicle 1 in the left part of the ﬁgure, according to its
conﬁguration, moves away from a point light source. Vehicle 2 on the other hand
moves toward the light source. Further small modiﬁcations can create other
behavior patterns, such that with these very simple vehicles we can realize the
impressive behavior described above.
Clearly the above deﬁnition is insufﬁcient because AI has the goal of solving
difﬁcult practical problems which are surely too demanding for the Braitenberg
vehicle. In the Encyclopedia Britannica [Bri91] one ﬁnds a Deﬁnition that goes like:
AI is the ability of digital computers or computer controlled robots to solve problems that
are normally associated with the higher intellectual processing capabilities of humans …
But this deﬁnition also has weaknesses. It would admit for example that a
computer with large memory that can save a long text and retrieve it on demand
displays intelligent capabilities, for memorization of long texts can certainly be
considered a higher intellectual processing capability of humans, as can for
example the quick multiplication of two 20-digit numbers. According to this
deﬁnition, then, every computer is an AI system. This dilemma is solved elegantly
by the following deﬁnition by Elaine Rich [Ric83]:
Artiﬁcial Intelligence is the study of how to make computers do things at which, at the
moment, people are better.
Rich, tersely and concisely, characterizes what AI researchers have been doing for
the last 50 years. Even in the year 2050, this deﬁnition will be up to date.
Tasks such as the execution of many computations in a short amount of time are
the strong points of digital computers. In this regard they outperform humans by
many multiples. In many other areas, however, humans are far superior to
machines. For instance, a person entering an unfamiliar room will recognize the
surroundings within fractions of a second and, if necessary, just as swiftly make
decisions and plan actions. To date, this task is too demanding for autonomous1

robots. According to Rich’s deﬁnition, this is therefore a task for AI. In fact,
research on autonomous robots is an important, current theme in AI. Construction
of chess computers, on the other hand, has lost relevance because they already play
at or above the level of grandmasters.
It would be dangerous, however, to conclude from Rich’s deﬁnition that AI is
only concerned with the pragmatic implementation of intelligent processes. Intel-
ligent systems, in the sense of Rich’s deﬁnition, cannot be built without a deep
understanding of human reasoning and intelligent action in general, because of
which neuroscience (see Sect. 1.1.1) is of great importance to AI. This also shows
that the other cited deﬁnitions reflect important aspects of AI.
A particular strength of human intelligence is adaptivity. We are capable of
adjusting to various environmental conditions and change our behavior accordingly
through learning. Precisely because our learning ability is so vastly superior to that
of computers, machine learning is, according to Rich’s deﬁnition, a central subﬁeld
of AI.
1.1.1 Brain Science and Problem Solving
Through research of intelligent systems we can try to understand how the human
brain works and then model or simulate it on the computer. Many ideas and
principles in the ﬁeld of neural networks (see Chap. 9) stem from brain science with
the related ﬁeld of neuroscience.
A very different approach results from taking a goal-oriented line of action,
starting from a problem and trying to ﬁnd the most optimal solution. How humans
solve the problem is treated as unimportant here. The method, in this approach, is
secondary. First and foremost is the optimal intelligent solution to the problem.
Rather than employing a ﬁxed method (such as, for example, predicate logic) AI
has as its constant goal the creation of intelligent agents for as many different tasks
as possible. Because the tasks may be very different, it is unsurprising that the
methods currently employed in AI are often also quite different. Similar to medi-
cine, which encompasses many different, often life-saving diagnostic and therapy
procedures, AI also offers a broad palette of effective solutions for widely varying
applications. For mental inspiration, consider Fig. 1.2 on page 4. Just as in medi-
cine, there is no universal method for all application areas of AI, rather a great
number of possible solutions for the great number of various everyday problems,
big and small.
Cognitive science is devoted to research into human thinking at a somewhat
higher level. Similarly to brain science, this ﬁeld furnishes practical AI with many
important ideas. On the other hand, algorithms and implementations lead to further
important conclusions about how human reasoning functions. Thus these three
ﬁelds beneﬁt from a fruitful interdisciplinary exchange. The subject of this book,
however, is primarily problem-oriented AI as a subdiscipline of computer science.
There are many interesting philosophical questions surrounding intelligence and
artiﬁcial intelligence. We humans have consciousness; that is, we can think about

ourselves and even ponder that we are able to think about ourselves. How does
consciousness come to be? Many philosophers and neurologists now believe that
the mind and consciousness are linked with matter, that is, with the brain. The

question of whether machines could one day have a mind or consciousness could
at some point in the future become relevant. The mind-body problem in particu-
lar concerns whether or not the mind is bound to the body. We will not discuss
these questions here. The interested reader may consult [Spe98, Spe97] and
is invited, in the course of AI technology studies, to form a personal opinion about
these questions.
1.1.2 The Turing Test and Chatterbots
Alan Turing made a name for himself as an early pioneer of AI with his deﬁnition
of an intelligent machine, in which the machine in question must pass the following
test. The test person Alice sits in a locked room with two computer terminals. One
terminal is connected to a machine, the other with a non-malicious person Bob.
Alice can type questions into both terminals. She is given the task of deciding, after
ﬁve minutes, which terminal belongs to the machine. The machine passes the test if
it can trick Alice at least 30% of the time [Tur50].
While the test is very interesting philosophically, for practical AI, which deals
with problem solving, it is not a very relevant test. The reasons for this are similar to
those mentioned above related to Braitenberg vehicles (see Exercise 1.3 on
page 21).
The AI pioneer and social critic Joseph Weizenbaum developed a program
named Eliza, which is meant to answer a test subject’s questions like a human
psychologist [Wei66]. He was in fact able to demonstrate success in many cases.
Supposedly his secretary often had long discussions with the program. Today in the
internet there are many so-called chatterbots, some of whose initial responses are
quite impressive. After a certain amount of time, however, their artiﬁcial nature
becomes apparent. Some of these programs are actually capable of learning, while
others possess extraordinary knowledge of various subjects, for example geography
or software development. There are already commercial applications for chatterbots
in online customer support and there may be others in the ﬁeld of e-learning. It is
conceivable that the learner and the e-learning system could communicate through a
chatterbot. The reader may wish to compare several chatterbots and evaluate their
intelligence in Exercise 1.1 on page 20.
1.2
The History of AI
AI draws upon many past scientiﬁc achievements which are not mentioned here, for
AI as a science in its own right has only existed since the middle of the Twentieth
Century. Table 1.1 on page 6, with the most important AI milestones, and a
graphical representation of the main movements of AI in Fig. 1.3 on page 8
complement the following text.

Table 1.1 Milestones in the development of AI from Gödel to today
1931
1937
1943
1950
1951
1955
1956
1958
1959
1961
1963
1965
1966
1969
1972
1976
1981
1982
1986
1990
The Austrian Kurt Gödel shows that in ﬁrst-order predicate logic all true statements
are derivable [Göd31a]. In higher-order logics, on the other hand, there are true
statements that are unprovable [Göd31b]. (In [Göd31b] Gödel showed that predicate
logic extended with the axioms of arithmetic is incomplete.)
Alan Turing points out the limits of intelligent machines with the halting
problem [Tur37].
McCulloch and Pitts model neural networks and make the connection to propositional
logic.
Alan Turing deﬁnes machine intelligence with the Turing test and writes about
learning machines and genetic algorithms [Tur50].
Marvin Minsky develops a neural network machine. With 3000 vacuum tubes he
simulates 40 neurons.
Arthur Samuel (IBM) builds a learning checkers program that plays better than its
developer [Sam59].
McCarthy organizes a conference in Dartmouth College. Here the name Artiﬁcial
Intelligence was ﬁrst introduced.
Newell and Simon of Carnegie Mellon University (CMU) present the Logic Theorist,
the ﬁrst symbol-processing computer program [NSS83].
McCarthy invents at MIT (Massachusetts Institute of Technology) the high-level
language LISP. He writes programs that are capable of modifying themselves.
Gelernter (IBM) builds the Geometry Theorem Prover.
The General Problem Solver (GPS) by Newell and Simon imitates human
thought [NS61].
McCarthy founds the AI Lab at Stanford University.
Robinson invents the resolution calculus for predicate logic [Rob65] (Sect. 3.5).
Weizenbaum’s program Eliza carries out dialog with people in natural
language [Wei66] (Sect. 1.1.2).
Minsky and Papert show in their book Perceptrons that the perceptron, a very simple
neural network, can only represent linear functions [MP69] (Sect. 1.1.2).
French scientist Alain Colmerauer invents the logic programming language PROLOG
(Chap. 5).
British physician de Dombal develops an expert system for diagnosis of acute
abdominal pain [dDLS+72]. It goes unnoticed in the mainstream AI community of the
time (Sect. 7.3).
Shortliffe and Buchanan develop MYCIN, an expert system for diagnosis of infectious
diseases, which is capable of dealing with uncertainty (Chap. 7).
Japan begins, at great expense, the “Fifth Generation Project” with the goal of building
a powerful PROLOG machine.
R1, the expert system for conﬁguring computers, saves Digital Equipment Corporation
40 million dollars per year [McD82].
Renaissance of neural networks through, among others, Rumelhart, Hinton and
Sejnowski [RM86]. The system Nettalk learns to read texts aloud [SR86] (Chap. 9).
Pearl [Pea88], Cheeseman [Che85], Whittaker, Spiegelhalter bring probability theory
into AI with Bayesian networks (Sect. 7.4). Multi-agent systems become popular.
(continued)

Table 1.1 (continued)
1992
1993
1995
1997
2003
2006
2009
2010
2011
2015
2016
Tesauros TD-gammon program demonstrates the advantages of reinforcement
learning.
Worldwide RoboCup initiative to build soccer-playing autonomous robots [Roba].
From statistical learning theory, Vapnik develops support vector machines, which are
very important today.
IBM’s chess computer Deep Blue defeats the chess world champion Gary Kasparov.
First international RoboCup competition in Japan.
The robots in RoboCup demonstrate impressively what AI and robotics are capable of
achieving.
Service robotics becomes a major AI research area.
First Google self-driving car drives on the California freeway.
Autonomous robots begin to improve their behavior through learning.
IBM’s “Watson” beats two human champions on the television game show
“Jeopardy!”. Watson understands natural language and can answer difﬁcult questions
very quickly (Sect. 1.4).
Daimler premiers the ﬁrst autonomous truck on the Autobahn.
Google self-driving cars have driven over one million miles and operate within cities.
Deep learning (Sect. 11.9) enables very good image classiﬁcation.
Paintings in the style of the Old Masters can be automatically generated with deep
learning. AI becomes creative!
The Go program AlphaGo by Google DeepMind [SHM+16] beats the European
champion 5:0 in January and Korean Lee Sedol, one of the world’s best Go players,
4:1 in March. Deep learning techniques applied to pattern recognition, as well as
reinforcement learning and Monte Carlo tree search lead to this success.
1.2.1 The First Beginnings
In the 1930s Kurt Gödel, Alonso Church, and Alan Turing laid important foundations
for logic and theoretical computer science. Of particular interest for AI are Gödel’s
theorems. The completeness theorem states that ﬁrst-order predicate logic is com-
plete. This means that every true statement that can be formulated in predicate logic is
provable using the rules of a formal calculus. On this basis, automatic theorem provers
could later be constructed as implementations of formal calculi. With the incom-
pleteness theorem, Gödel showed that in higher-order logics there exist true state-
ments that are unprovable.2 With this he uncovered painful limits of formal systems.
Alan Turing’s proof of the undecidability of the halting problem also falls into
this time period. He showed that there is no program that can decide whether a
given arbitrary program (and its respective input) will run in an inﬁnite loop. With

this Turing also identiﬁed a limit for intelligent programs. It follows, for example,
that there will never be a universal program veriﬁcation system.3
In the 1940s, based on results from neuroscience, McCulloch, Pitts and Hebb
designed the ﬁrst mathematical models of neural networks. However, computers at
that time lacked sufﬁcient power to simulate simple brains.
1.2.2 Logic Solves (Almost) All Problems
AI as a practical science of thought mechanization could of course only begin once
there were programmable computers. This was the case in the 1950s. Newell and
Simon introduced Logic Theorist, the ﬁrst automatic theorem prover, and thus also
showed that with computers, which actually only work with numbers, one can also
process symbols. At the same time McCarthy introduced, with the language LISP,
a programming language specially created for the processing of symbolic
structures. Both of these systems were introduced in 1956 at the historic Dartmouth
Conference, which is considered the birthday of AI.
In the US, LISP developed into the most important tool for the implementation
of symbol-processing AI systems. Thereafter the logical inference rule known as
resolution developed into a complete calculus for predicate logic.

In the 1970s the logic programming language PROLOG was introduced as the
European counterpart to LISP. PROLOG offers the advantage of allowing direct
programming using Horn clauses, a subset of predicate logic. Like LISP, PROLOG
has data types for convenient processing of lists.
Until well into the 1980s, a breakthrough spirit dominated AI, especially among
many logicians. The reason for this was the string of impressive achievements in
symbol processing. With the Fifth Generation Computer Systems project in Japan
and the ESPRIT program in Europe, heavy investment went into the construction of
intelligent computers.
For small problems, automatic provers and other symbol-processing systems
sometimes worked very well. The combinatorial explosion of the search space,
however, deﬁned a very narrow window for these successes. This phase of AI was
described in [RN10] as the “Look, Ma, no hands!” era.
Because the economic success of AI systems fell short of expectations, funding
for logic-based AI research in the United States fell dramatically during the 1980s.
1.2.3 The New Connectionism
During this phase of disillusionment, computer scientists, physicists, and Cognitive
scientists were able to show, using computers which were now sufﬁciently pow-
erful, that mathematically modeled neural networks are capable of learning using
training examples, to perform tasks which previously required costly programming.
Because of the fault-tolerance of such systems and their ability to recognize pat-
terns, considerable successes became possible, especially in pattern recognition.
Facial recognition in photos and handwriting recognition are two example appli-
cations. The system Nettalk was able to learn speech from example texts [SR86].
Under the name connectionism, a new subdiscipline of AI was born.
Connectionism boomed and the subsidies flowed. But soon even here feasibility
limits became obvious. The neural networks could acquire impressive capabilities,
but it was usually not possible to capture the learned concept in simple formulas or
logical rules. Attempts to combine neural nets with logical rules or the knowledge
of human experts met with great difﬁculties. Additionally, no satisfactory solution
to the structuring and modularization of the networks was found.
1.2.4 Reasoning Under Uncertainty
AI as a practical, goal-driven science searched for a way out of this crisis. One
wished to unite logic’s ability to explicitly represent knowledge with neural net-
works’ strength in handling uncertainty. Several alternatives were suggested.
The most promising, probabilistic reasoning, works with conditional probabil-
ities for propositional calculus formulas. Since then many diagnostic and expert
systems have been built for problems of everyday reasoning using Bayesian

networks. The success of Bayesian networks stems from their intuitive compre-
hensibility, the clean semantics of conditional probability, and from the
centuries-old, mathematically grounded probability theory.
The weaknesses of logic, which can only work with two truth values, can be
solved by fuzzy logic, which pragmatically introduces inﬁnitely many values
between zero and one. Though even today its theoretical foundation is not totally
ﬁrm, it is being successfully utilized, especially in control engineering.
A much different path led to the successful synthesis of logic and neural net-
works under the name hybrid systems. For example, neural networks were
employed to learn heuristics for reduction of the huge combinatorial search space in
proof discovery [SE90].
Methods of decision tree learning from data also work with probabilities.
Systems like CART, ID3 and C4.5 can quickly and automatically build very
accurate decision trees which can represent propositional logic concepts and then
be used as expert systems. Today they are a favorite among machine learning
techniques (Sect. 8.4).
Since about 1990, data mining has developed as a subdiscipline of AI in the area
of statistical data analysis for extraction of knowledge from large databases. Data
mining brings no new techniques to AI, rather it introduces the requirement of using
large databases to gain explicit knowledge. One application with great market
potential is steering ad campaigns of big businesses based on analysis of many
millions of purchases by their customers. Typically, machine learning techniques
such as decision tree learning come into play here.
1.2.5 Distributed, Autonomous and Learning Agents
Distributed artiﬁcial intelligence, DAI, has been an active area research since about
1985. One of its goals is the use of parallel computers to increase the efﬁciency of
problem solvers. It turned out, however, that because of the high computational
complexity of most problems, the use of “intelligent” systems is more beneﬁcial
than parallelization itself.
A very different conceptual approach results from the development of autonomous
software agents and robots that are meant to cooperate like human teams. As with the
aforementioned Braitenberg vehicles, there are many cases in which an individual
agent is not capable of solving a problem, even with unlimited resources. Only the
cooperation of many agents leads to the intelligent behavior or to the solution of a
problem. An ant colony or a termite colony is capable of erecting buildings of very
high architectural complexity, despite the fact that no single ant comprehends how the
whole thing ﬁts together. This is similar to the situation of provisioning bread for a
large city like New York [RN10]. There is no central planning agency for bread, rather
there are hundreds of bakers that know their respective areas of the city and bake the
appropriate amount of bread at those locations.
Active skill acquisition by robots is an exciting area of current research. There
are robots today, for example, that independently learn to walk or to perform

various motorskills related to soccer (Chap. 10). Cooperative learning of multiple
robots to solve problems together is still in its infancy.
1.2.6 AI Grows Up
The above systems offered by AI today are not a universal recipe, but a workshop
with a manageable number of tools for very different tasks. Most of these tools are
well-developed and are available as ﬁnished software libraries, often with conve-
nient user interfaces. The selection of the right tool and its sensible use in each
individual case is left to the AI developer or knowledge engineer. Like any other
artisanship, this requires a solid education, which this book is meant to promote.
More than nearly any other science, AI is interdisciplinary, for it draws upon
interesting discoveries from such diverse ﬁelds as logic, operations research,
statistics, control engineering, image processing, linguistics, philosophy, psychol-
ogy, and neurobiology. On top of that, there is the subject area of the particular
application. To successfully develop an AI project is therefore not always so
simple, but almost always extremely exciting.
1.2.7 The AI Revolution
Around the year 2010 after about 25 years of research on neural networks, scientists
could start harvesting the fruits of their research. The very powerful deep learning
networks can for example learn to classify images with very high arruracy. Since
image classiﬁcation is of crucial importance for all types of smart robots, this initiated
the AI revolution which in turn leads to smart self-driving cars and service robots.
1.3
AI and Society
There have been many scientiﬁc books and science ﬁction novels written on all
aspects of this subject. Due to great advances in AI research, we have been on the
brink of the age of autonomous robots and the Internet of Things since roughly
2005. Thus we are increasingly confronted with AI in everyday life. The reader,
who may soon be working as an AI developer, must also deal with the social impact
of this work. As an author of a book on AI techniques, I have the crucial task of
examining this topic. I would like to deal with some particularly important aspects
of AI which are of great practical relevance for our lives.
1.3.1 Does AI Destroy Jobs?
In January 2016, the World Econonic Forum published a study [SS16], frequently
cited by the German press, predicting that “industry 4.0 ” would destroy over ﬁve

million jobs in the next ﬁve years. This forecast is hardly surprising because auto-
mation in factories, ofﬁces, administration, transportation, in the home and in many
other areas has led to continually more work being done by computers, machines and
robots. AI has been one of the most important factors in this trend since about 2010.
Presumably, the majority of people would gladly leave physically hard, dirty and
unhealthy jobs and tasks to machines. Thus automation is a complete blessing for
humanity, assuming it does not result in negative side effects, such as harm to the
environment. Many of the aforementioned unpleasant jobs can be done faster, more
precisely, and above all cheaper by machines. This seems almost like a trend
towards paradise on Earth, where human beings do less and less unpleasant work
and have correspondingly more time for the good things in life. This seems almost
like a trend towards paradise on earth. We have to do less and less unpleasant work
and in turn have more time for the good things in life.4 All the while, we would
enjoy the same (or potentially even increasing) prosperity, for the economy would
not employ these machines if they did not markedly raise productivity.
Unfortunately we are not on the road to paradise. For several decades, we have
worked more than 40 hours per week, have been stressed, complained of burnout
and other sicknesses, and suffered a decline in real wages. How can this be, if
productivity is continually increasing? Many economists say that the reason for this
is competitive pressure. In an effort to compete and deliver the lowest priced goods
to market, companies need to lower production costs and thus lay off workers. This
results in the aforementioned unemployment. In order to avoid a drop in sales
volume due to reduced prices, more products need to be manufactured and sold.
The economy must grow!
If the economy continues to grow in a country in which the population is no
longer growing (as is the case in most modern industrialized countries), each citizen
must necessarily consume more. For that to happen, new markets must be created,5
and marketing has the task of convincing us that we want the new products.
This is—allegedly—the only way to “sustainably” ensure prosperity. Apparently
there seems to be no escape from this growth/consumption spiral. This has two fatal
consequences. For one thing, this increase in consumption should make people
happier, but it is having quite the opposite effect: mental illness is increasing.
Even more obvious and, above all, fatal, are economic growth’s effects on our
living conditions. It is no secret that the earth’s growth limit has long been excee-
ded [MMZM72, Ran12], and that we are overexploiting nature’s nonrenewable
resources. We are therefore living at the expense of our children and grandchildren,
who consequently will have poorer living conditions than we have today. It is also
known that every additional dollar of economic growth is an additional burden on
the environment—for example through additional CO2 concentration in the atmo-
sphere and the resulting climate change [Pae16]. We are destroying our own basis of

existence. Thus it is obvious that we should abandon this path of growth for the sake
of a livable future. But how?
Let’s think back to the road to paradise that AI is supposedly preparing for us.
Apparently, as we practice it, it does not lead to paradise. Understanding this
problem and ﬁnding the right path is one of the central tasks of today. Because of
inherent complexities, this problem can not be fully dealt with in an introductory AI
textbook. However, I would like to provide the reader with a little food for thought.
Although productivity is growing steadily in almost all areas of the economy,
workers are required to work as hard as ever. They do not beneﬁt from the increase
in productivity. So, we must ask, where do the proﬁts go? Evidently not to the
people to whom they are owed, i.e. the workers. Instead, part of the proﬁts is spent
on investment and thus on further growth and the rest is taken by the capital
owners, while employees work the same hours for declining real wages [Pik14].
This leads to ever-increasing capital concentration among a few rich individuals and
private banks, while on the other hand increasing poverty around the world is
creating political tensions that result in war, expulsion and flight.
What is missing is a fair and just distribution of proﬁts. How can this be
achieved? Politicians and economists are continually trying to optimize our eco-
nomic system, but politics has not offered a sustainable solution, and too few
economists are investigating this highly exciting economic question. Obviously the
attempt to optimize the parameters of our current capitalist economic system has not
lead to a more equitable distribution of wealth, but to the opposite.
This is why economists and ﬁnancial scientists must begin to question the
system and look for alternatives. We should ask ourselves how to change the rules
and laws of the economy so that all people proﬁt from increased productivity.
A growing community of economists and sustainability scientists have offered
interesting solutions, a few of which I will briefly describe here.
Problem Number One is the creation of ﬁat money by the banks. New money—
which is needed, among other things, to keep our growing economy going—is now
being created by private banks. This is made possible by the fact that banks have to
own only a small part, namely the minimum cash reserve ratio, of the money they
give as loans. In the EU in 2016, the minimum cash reserve ratio is one percent.
States then borrow this money from private banks in the form of government
bonds and thus fall into debt. This is how our current government debt crises have
developed. This problem can be solved easily by prohibiting creation of money by
the banks by increasing the minimum cash reserve ratio to 100%. State central banks
will then get back the monopoly on creating money, and the newly created money
can be used directly by the state for the purposes of social welfare. It should be
evident that this simple measure would signiﬁcantly ease the problem of public debt.
Further interesting components of such an economic reform could be the
conversion of the current interest rate system to the so-called natural economic order
[GP58], and the introduction of the “economy for the common good” [Fel14] and the
biophysical economy [GK09, Küm11]. The practical implementation of the econ-
omy for the common good would involve a tax reform, the most important elements
of which would be the abolition of the income tax and substantially increased value

added tax on energy and resource consumption. We would thus arrive at a highly
prosperous, more sustainable human world with less environmental damage and
more local trade. The reader may study the literature and assess whether the ideas
quoted here are interesting and, if necessary, help to make the required changes.
To conclude this section, I would like to quote the famous physicist Stephen
Hawking. In a community-driven interview on www.reddit.com he gave the following
answer to whether he had any thoughts about unemployment caused by automation:
If machines produce everything we need, the outcome will depend on how things are
distributed. Everyone can enjoy a life of luxurious leisure if the machine-produced
wealth is shared, or most people can end up miserably poor if the machine-owners
successfully lobby against wealth redistribution. So far, the trend seems to be toward the
second option, with technology driving ever-increasing inequality.
Another Hawking quotation is also ﬁtting. During the same interview,6 to an AI
professor’s question about which moral ideas he should impart to his students,
Hawking answered:
… Please encourage your students to think not only about how to create AI, but also about
how to ensure its beneﬁcial use.
As a consequence we should question the reasonableness of AI applications such as
the export of intelligent cruise missiles to “allied” Arab states, the deployment of
humanoid combat robots, etc.
1.3.2 AI and Transportation
In the past 130 years, automotive industry engineers have made great strides. In
Germany, one out of every two people owns their own car. These cars are highly
reliable. This makes us very mobile and we use this very convenient mobility in work,
everyday life and leisure. Moreover, we are dependent on it. Today, we can not get by
without a motor vehicle, especially in rural areas with weak public transportation
infrastructure, as for instance in Upper Swabia, where the author and his students live.
The next stage of increased convenience in road transportation is now imminent.
In a few years, we will be able to buy electric self-driving cars, i.e. robotic cars,
which will autonomously bring us to almost any destination. All passengers in the
robotic car would be able to read, work or sleep during the trip. This is possible on
public transit already, but passengers in a robotic car would be able to do this at any
time and on any route.
Autonomous vehicles that can operate independently could also travel without
passengers. This will lead to yet another increase in convenience: robotic taxis. Via a
smartphone app, we will be able to order the optimal taxi, in terms of size and
equipment, for any conceivable transportation purpose. We will be able to choose
whether we want to travel alone in the taxi or whether we are willing to share a ride with

other passengers. We will not need our own car anymore. All associated responsibil-
ities and expenses, such as refueling, technical service, cleaning, searching for parking,
buying and selling, garage rent, etc. are void, which saves us money and effort.
Besides the immediate gains in comfort and convenience, robotic cars will offer
other signiﬁcant advantages. For example, according to a McKinsey study [GHZ14],
we will need far fewer cars and, above all, far fewer parking places in the era of
self-driving cars, which will lead to an immense reduction in resource consumption.
According to a Lawrence Berkeley National Laboratory study [GS15], electric
self-driving cars will cause a 90% reduction in green house emissions per passenger
mile due to the vehicles’ energy efﬁciency and the optimized ﬁt between the vehicle
and its purpose. Due to their optimal resource utilization, robotic taxis will be much
more environmentally friendly than, for example, heavy buses, which often run at
low capacity, especially in rural areas. Overall, robot taxis will contribute dramati-
cally to energy savings and thus, among other things, to a signiﬁcant improvement in
CO2 and climate problems.
Passenger safety will be much higher than it is today. Experts currently estimate
future accident rates between zero and ten percent compared to today. Emotional
driving (“road rage”), distracted driving and driving under the influence of drugs
and alcohol will no longer exist.
Taxi drivers losing their jobs is often cited as a disadvantage of robotic cars. It is
almost certain that there will no longer be taxi drivers from about 2030 onwards,
but that is not necessarily a problem. As explained in the previous section, our
society just needs to deal with the newly gained productivity properly.
In addition to the many advantages mentioned above, robotic cars have two critical
problems. Firstly, the so-called rebound effect will nullify at least some of the gains in
resource, energy and time savings. Shorter driving times as well as more comfortable
and cheaper driving will tempt us to drive more. We can only deal with this problem
by rethinking our attitude towards consumption and quality of life. Do we have to use
the entire time saved for more activities? Here we are all invited to critical reflection.
Another problem we should take seriously is that the robotic cars will need to be
networked. In principle, this gives hackers and terrorists the ability to access and
manipulate the vehicles’ controls through security holes in their network protocols.
If a hacker manages to do this once, he could repeat the attack on a grand scale,
potentially bringing entire vehicle fleets to a halt, causing accidents, spying on
vehicle occupants, or initiating other criminal actions. Here, as in other areas such
as home automation and the Internet of Things, IT security experts will be needed
to ensure the highest possible security guarantees using tools of the trade such as
cryptographic methods. By the way, improved machine learning algorithms will be
useful in detecting hacking attacks.
1.3.3 Service Robotics
In a few years, shortly after self-driving cars, the next bit of consumption bait on the
shelves of electronics stores will be service robots. Recently the Google subsidiary

Boston Dynamics provided an impressive example in its humanoid robot Atlas.7
Like the new cars, service robots offer a large gain in comfort and convenience
which we would probably like to enjoy. One need only imagine such a robot
dutifully cleaning and scrubbing after a party from night until morning without a
grumble. Or think of the help that an assistance robot like Marvin, shown in
Fig. 1.4, could provide to the elderly8 or to people with disabilities [SPR+16].
In contrast to the robotic cars, however, these beneﬁts come with costlier
trade-offs. Completely new markets would be created, more natural resources and
more energy would be consumed, and it is not even certain that people’s lives
would be simpliﬁed by the use of service robots in all areas. One of the ﬁrst
applications for robots like Atlas, developed by Boston Dynamics in contract with
Google, will probably be military combat.
It is therefore all the more important that, before these robots come to market,
we engage in social discourse on this topic. Science ﬁction ﬁlms, such as
“Ex Machina” (2015) with its female androids, the chilling “I, Robot” (2004) or the
humorous “Robot and Frank” (2012), which depicts the pleasant side of a service
robot as an old man’s helper, can also contribute to such a discussion.

1.4
17
Agents
Although the term intelligent agents is not new to AI, only in recent years has it
gained prominence through [RN10], among others. Agent denotes rather generally a
system that processes information and produces an output from an input. These
agents may be classiﬁed in many different ways.
In classical computer science, software agents are primarily employed
(Fig. 1.5). In this case the agent consists of a program that calculates a result from
user input.
In robotics, on the other hand, hardware agents (also called autonomous robots)
are employed, which additionally have sensors and actuators at their disposal
(Fig. 1.6). The agent can perceive its environment with the sensors. With the
actuators it carries out actions and changes its environment.
With respect to the intelligence of the agent, there is a distinction between reflex
agents, which only react to input, and agents with memory, which can also include
the past in their decisions. For example, a driving robot that through its sensors
knows its exact position (and the time) has no way, as a reflex agent, of determining
its velocity. If, however, it saves the position, at short, discrete time steps, it can
thus easily calculate its average velocity in the previous time interval.
If a reflex agent is controlled by a deterministic program, it represents a function
of the set of all inputs to the set of all outputs. An agent with memory, on the other
hand, is in general not a function. Why? (See Exercise 1.5 on page 21.) Reflex
agents are sufﬁcient in cases where the problem to be solved involves a Markov
decision process. This is a process in which only the current state is needed to
determine the optimal next action (see Chap. 10).
A mobile robot which should move from room 112 to room 179 in a building
takes actions different from those of a robot that should move to room 105. In other
words, the actions depend on the goal. Such agents are called goal-based.

Example 1.1 A spam ﬁlter is an agent that puts incoming emails into wanted or
unwanted (spam) categories, and deletes any unwanted emails. Its goal as a goal-
based agent is to put all emails in the right category. In the course of this
not-so-simple task, the agent can occasionally make mistakes. Because its goal is to
classify all emails correctly, it will attempt to make as few errors as possible.
However, that is not always what the user has in mind. Let us compare the fol-
lowing two agents. Out of 1,000 emails, Agent 1 makes only 12 errors. Agent 2 on
the other hand makes 38 errors with the same 1,000 emails. Is it therefore worse
than Agent 1? The errors of both agents are shown in more detail in the following
table, the so-called “confusion matrix”:
spam filter
decides
Agent 1:Agent 2:
correct class
wanted spam
wanted 189
1
spam
11
799correct class
wanted spam
wanted 200
38
spam
0
762
spam filter
decides
Agent 1 in fact makes fewer errors than Agent 2, but those few errors are severe
because the user loses 11 potentially important emails. Because there are in this
case two types of errors of differing severity, each error should be weighted with the
appropriate cost factor (see Sect. 7.3.5 and Exercise 1.7 on page 21).
The sum of all weighted errors gives the total cost caused by erroneous
decisions.The goal of a cost-based agent is to minimize the cost of erroneous
decisions in the long term, that is, on average. In Sect. 7.3 we will become
familiar with the medical diagnosis system LEXMED as an example of a
cost-based agent.
Analogously, the goal of a utility-based agent is to maximize the utility derived
from correct decisions in the long term, that is, on average. The sum of all decisions
weighted by their respective utility factors gives the total utility.
Of particular interest in AI are Learning agents, which are capable of changing
themselves given training examples or through positive or negative feedback, such
that the average utility of their actions grows over time (see Chap. 8).
As mentioned in Sect. 1.2.5, distributed agents are increasingly coming into use,
whose intelligence are not localized in one agent, but rather can only be seen
through cooperation of many agents.
The design of an agent is oriented, along with its objective, strongly toward its
environment, or alternately its picture of the environment, which strongly depends
on it sensors. The environment is observable if the agent always knows the complete
state of the world. Otherwise the environment is only partially observable. If an
action always leads to the same result, then the environment is deterministic.
Otherwise it is nondeterministic. In a discrete environment only ﬁnitely many
states and actions occur, whereas a continuous environment boasts inﬁnitely many
states or actions.

1.5
19
Knowledge-Based Systems
An agent is a program that implements a mapping from perceptions to actions. For
simple agents this way of looking at the problem is sufﬁcient. For complex
applications in which the agent must be able to rely on a large amount of infor-
mation and is meant to do a difﬁcult task, programming the agent can be very costly
and unclear how to proceed. Here AI provides a clear path to follow that will
greatly simplify the work.
First we separate knowledge from the system or program, which uses the
knowledge to, for example, reach conclusions, answer queries, or come up with a
plan. This system is called the inference mechanism. The knowledge is stored in
a knowledge base (KB). Acquisition of knowledge in the knowledge base is
denoted Knowledge Engineering and is based on various knowledge sources such
as human experts, the knowledge engineer, and databases. Active learning
systems can also acquire knowledge through active exploration of the world (see
Chap. 10). In Fig. 1.7 the general architecture of knowledge-based systems is
presented.
Moving toward a separation of knowledge and inference has several crucial
advantages. The separation of knowledge and inference can allow inference
systems to be implemented in a largely application-independent way. For example,
application of a medical expert system to other diseases is much easier by replacing
the knowledge base rather than by programming a whole new system.
Through the decoupling of the knowledge base from inference, knowledge can
be stored declaratively. In the knowledge base there is only a description of the
knowledge, which is independent from the inference system in use. Without this
clear separation, knowledge and processing of inference steps would be interwoven,
and any changes to the knowledge would be very costly.

Formal language as a convenient interface between man and machine lends itself
to the representation of knowledge in the knowledge base. In the following chapters
we will get to know a whole series of such languages. First, in Chaps. 2 and 3 there
are propositional calculus and ﬁrst-order predicate logic (PL1). But other for-
malisms such as probabilistic logic and decision trees are also presented. We start
with propositional calculus and the related inference systems. Building on that, we
will present predicate logic, a powerful language that is accessible by machines and
very important in AI.
As an example for a large scale knowledge based system we want to refer to
the software agent “Watson”. Developed at IBM together with a number of
universities, Watson is a question answering program, that can be fed with clues
given in natural language. It works on a knowledge base comprising four terabytes
of hard disk storage, including the full text of Wikipedia [FNA+09]. Watson was
developed within IBM’s DeepQA project which is characterized in [Dee11] as
follows:
The DeepQA project at IBM shapes a grand challenge in Computer Science that aims to
illustrate how the wide and growing accessibility of natural language content and the
integration and advancement of Natural Language Processing, Information Retrieval,
Machine Learning, Knowledge Representation and Reasoning, and massively parallel
computation can drive open-domain automatic Question Answering technology to a point
where it clearly and consistently rivals the best human performance.
In the U.S. television quiz show “Jeopardy!”, in February 2011, Watson defeated
the two human champions Brad Rutter and Ken Jennings in a two-game,
combined-point match and won the one million dollar price. One of Watson’s
particular strengths was its very fast reaction to the questions with the result that
Watson often hit the buzzer (using a solenoid) faster than its human competitors and
then was able to give the ﬁrst answer to the question.
The high performance and short reaction times of Watson were due to an
implementation on 90 IBM Power 750 servers, each of which contains 32
processors, resulting in 2880 parallel processors.
1.6
Exercises
Exercise 1.1 Test some of the chatterbots available on the internet. Start for
example with www.hs-weingarten.de/*ertel/aibook in the collection of links under
Turingtest/Chatterbots, or at www.simonlaven.com or www.alicebot.org. Write
down a starting question and measure the time it takes, for each of the various
programs, until you know for certain that it is not a human.
❄ ❄ Exercise 1.2 At www.pandorabots.com you will ﬁnd a server on which you can
build a chatterbot with the markup language AIML quite easily. Depending on
your interest level, develop a simple or complex chatterbot, or change an
existing one.

Exercise 1.3 Give reasons for the unsuitability of the Turing test as a deﬁnition of
“artiﬁcial intelligence” in practical AI.
➳ Exercise 1.4 Many well-known inference processes, learning processes, etc. are
NP-complete or even undecidable. What does this mean for AI?
Exercise 1.5
(a) Why is a deterministic agent with memory not a function from the set of all
inputs to the set of all outputs, in the mathematical sense?
(b) How can one change the agent with memory, or model it, such that it becomes
equivalent to a function but does not lose its memory?
Exercise 1.6 Let there be an agent with memory that can move within a plane.
From its sensors, it receives at clock ticks of a regular interval Dt its exact position
(x, y) in Cartesian coordinates.
(a) Give a formula with which the agent can calculate its velocity from the current
time t and the previous measurement of t − Dt.
(b) How must the agent be changed so that it can also calculate its acceleration?
Provide a formula here as well.
❄ Exercise 1.7
(a) Determine for both agents in Example 1.1 on page 18 the costs created by the
errors and compare the results. Assume here that having to manually delete a
spam email costs one cent and retrieving a deleted email, or the loss of an
email, costs one dollar.
(b) Determine for both agents the proﬁt created by correct classiﬁcations and
compare the results. Assume that for every desired email recognized, a proﬁt
of one dollar accrues and for every correctly deleted spam email, a proﬁt of
one cent.


