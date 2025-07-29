c01
===

Deep R Programming is a comprehensive and in-depth introductory course on one of 
themostpopularlanguagesfordatascience.Itequipsambitiousstudents,professionals, and researchers with the knowledge and skills to 
become independent users of this potent environmentso thatthey can tackleanyproblem relatedto data wrangling and analytics, numerical 
computing, statistics, and machine learning.

For many students around the world, educational resources are hardly affordable. Therefore, I have decided that this book should 
remain an independent, non-profit, open-access project (available both in PDF 1 and HTML 2 forms). Whilst, for some people, the 
presence of a “designer tag” from a major publisher might still be a proxy for quality, it is my hope that this publication will 
prove useful to those seeking knowledge for knowledge’s sake.

0

Preface

0.1 To R, or not to R

R has been named the eleventh most dreaded programming language in the 2022 StackOverflow Developer Survey 6 .

Also, it is a free app, so there must be something wrong with it, right?

But whatever, R is deprecated anyway; the modern way is to use tidyverse.

Or we should all just switch to Python 7 .

Yeah, nah.

0.2 R (GNU S) as a language and an environment

Let’s get one 8 thing straight: R is not just a statistical package. It is a general-purpose, high-level programming language that 
happens to be very powerful for numerical, data-intense computing activities of any kind. It offers extensive support for 
statistical, machine learning, data analysis, data wrangling, and data visualisation applications, but there is much more.

As we detail below, R has a long history. It is an open-source version of the S environment, which was written for statisticians, by 
statisticians. Therefore, it is a free, yet often more capable alternative to other software (but without any strings attached). 
Unlike in some of them, in R, a spreadsheet-like GUI is not the main gateway for performing computations on data. Here, we must write 
code to get things done. Despite the beginning of the learning curve’s being a little steeper for non-programmers, in the long run, R 
empowers us more because we are not limited to tackling the most common scenarios. If some functionality is missing or does not suit 
our needs, we can easily (re)implement it ourselves.

R is thus very convenient for rapid prototyping. It helps turn our ideas into fully operational code that can be battle-tested, 
extended, polished, run in production, and otherwise enjoyed. As an interpreted language, it can be executed not only in an 
interactive read-eval-print loop (command–result, question–answer, …), but also in batch mode (running standalone scripts).

Therefore, we would rather position R amongst such environments for numerical or scientific computing as Python with numpy and 
pandas, Julia, GNU Octave, Scilab, and MATLAB. However, it is more specialised in data science applications than any of them. Hence, 
it provides a much smoother experience. This is why, over the years, R has become the de facto standard in statistics and related 
fields.

Important R is a whole ecosystem. Apart from the R language interpreter, it features advanced:

• graphics capabilities (see Chapter 13),

• a consistent, well-integrated help system (Section 1.4),

• ways for convenient interfacing with compiled code (Chapter 14),

• a package system and centralised package repositories (such as CRAN and Bioconductor; Section 7.3.1),

• a lively community of users and developers – curious and passionate people, like you and yours cordially.

Note R [70] is a dialect of the very popular S system designed in the mid-1970s by Rick A. Becker, John M. Chambers, and Allan R. 
Wilks at Bell Labs see [3, 4, 5, 6] for historical notes and [7, 9, 13, 57] for works on newer versions of S. Quoting from [4]:

The design goal for S is, most broadly stated, to enable and encourage good data analysis, that is, to provide users with specific 
facilities and a general environment that helps them quickly and conveniently look at many displays, 
summaries,andmodelsfortheirdata,andtofollowthekindofiterative,exploratorypath that most often leads to a thorough analysis. The 
system is designed for interactive use with simple but general expressions for the user to type, and immediate, 
informativefeedbackfromthesystem,includinggraphicoutputonanyofavariety of graphical devices.

S became popular because it offered greater flexibility than the standalone statistical packages. It was praised for its high 
interactivity and array-centrism that was taken

from APL, the familiar syntax of the C language involving {curly braces}, the ability to treat code as data known from Lisp (Chapter 
15), the notion of lazy arguments (Chapter 17), and the ease of calling external C and Fortran routines (Chapter 14). Its newer 
versions were also somewhat object-orientated (Chapter 10).

However, S was a proprietary and closed-source system. To address this, Robert 
GentlemanandRossIhakaoftheStatisticsDepartment,UniversityofAucklanddeveloped R in the 1990s 9 . They were later joined by many 
contributors 10 . It has been decided that it will be distributed under the terms of the free GNU General Public License, version 2.

In essence, R was supposed to be backwards-compatible with S, but some design choices led to their evaluation models’ being slightly 
different. In Chapter 16, we discuss that R’s design was inspired by the Scheme language [1].

0.3 Aims, scope, and design philosophy

Many users were introduced to R by means of some very advanced operations involving data frames, formulae, and functions that rely on 
nonstandard evaluation (metaprogramming), like:

lm(

Ozone~Solar.R+Temp, data=subset(airquality, Temp>60, select=-(Month:Day)) ) |> summary()

This is horrible.

Another cohort was isolated from base R through a thick layer of popular third-party packages that introduce an overwhelming number 
of functions (every operation, regardless of its complexity, has a unique name). They often duplicate the core functionality, and 
might not be fully compatible with our traditional system.

Both user families ought to be fine, as long as they limit themselves to solving only the most common data processing problems.

But we yearn for more. We do not want hundreds of prefabricated recipes for popular dishes that we can mindlessly apply without much 
understanding.

Our aim is to learn the fundamentals of base R, which constitutes the lingua franca of

all R users. We want to be able to indite code that everybody should understand; code that will work without modifications in the 
next decades, too.

We want to be able to tackle any data-intense problem. Furthermore, we want to develop transferable skills so that learning new tools 
such as Python with numpy and pandas (e.g., [27, 47]) or Julia will be much easier later. After all, R is not the only notable 
environment out there.

Anyway, enough preaching. This graduate 11 -level textbook is for readers who:

• would like to experience the joy of solving problems by programming,

• want to become independent users of the R environment,

• can appreciate a more cohesively and comprehensively 12 organised material,

• do not mind a slightly steeper learning curve at the beginning,

• do not want to be made obsolete by artificial “intelligence” in the future.

Some readers will benefit from its being their first introduction to R (yet, without all the pampering). For others 13 , this will be 
a fine course from intermediate to advanced (do not skip the first chapters, though).

Either way, we should not forget to solve all the prescribed exercises.

Good luck!

0.4 Classification of R data types and book structure

The most commonly used R data types can be classified as follows; see also Figure 1.

1. Basic types are discussed in the first part of the book:

• atomic vectors represent whole sequences of values, where every element is of the same type:

– logical (Chapter 3) includes items that are TRUE (“yes”, “present”), FALSE (“no”, “absent”), or NA (“not available”, “missing”);

– numeric (Chapter 2) represents real numbers, such as 1, 3.14, -0.

0000001, etc.;

– character (Chapter 6) contains strings of characters, e.g., "groß", "123", or “Добрий день”;

• function (Chapter 7) is used to group a series of expressions (code lines) so that they can be applied on miscellaneous input data 
to generate the (hopefully) desired outcomes, for instance, cat, print, plot, sample, and sum;

• list (generic vector; Chapter 4) can store elements of mixed types.

The above will be complemented with a discussion on vector indexing (Chapter 5) and ways to control the program flow (Chapter 8).

2. Compoundtypes are mostly discussed in the second part. They are wrappers around objects of basic types that might behave unlike 
the underlying primitives thanks to the dedicated operations overloaded for them. For instance:

• factor (Section 10.3.2) is a vector-like object that represents qualitative data (on a nominal or an ordered scale);

• matrix (Chapter11)storestabulardata,i.e.,arrangedintorowsandcolumns, where each cell is usually of the same type;

• data.frame (Chapter 12) is also used for depositing tabular data, but this time such that each column can be of a different type;

• formula (Section 17.6) is utilised by some functions to specify supervised learning models or define operations to be performed 
within data subgroups, amongst others;

• and many more, which we can arbitrarily define using the principles of S3style object-orientated programming (Chapter 10).

In this part of the book, we also discuss the principles of sustainable coding (Chapter 9) as well as introduce ways to prepare 
publication-quality graphics (Chapter 13).

3. More advanced material is discussed in the third part. For most readers, it should 
beoftheoreticalinterestonly.However,itcanhelpgainacompleteunderstanding of and control over our environment. This includes the 
following data types:

• symbol (name), call, expression (Chapter 15) are objects representing un-

evaluated R expressions that can be freely manipulated and executed if needed;

• environment (Chapter 16) store named objects in hash maps and provides the basis for the environment model of evaluation;

• externalptr (Section 14.2.8) provides the ability to maintain any dynamically allocated C/C++ objects between function calls.

We should not be surprised that we did not list any data types defined by a few trendy14  third-party packages. We will later see 
that we can most often do without them. If that is not the case, we will become skilled enough to learn them quickly ourselves.

0.5 About the author

I, Marek Gagolewski 15 (pronounced like Maa’rek (Mark) Gong-o-leaf-ski), am currently an Associate Professor in Data Science at the 
Faculty of Mathematics and Information Science, Warsaw University of Technology.

My research interests are related to data science, in particular: modelling complex phenomena, developing usable, general-purpose 
algorithms, studying their analytical properties, and finding out how people use, misuse, understand, and misunderstand methods of 
data analysis in research, commercial, and decision-making settings. I am an author of ~100 publications, including journal papers in 
outlets such as Proceedings of the National Academy of Sciences (PNAS), Journal of Statistical Software, The R Journal, Journal of 
Classification, Information Fusion, International Journal of Forecasting, Statistical Modelling, Physica A: Statistical Mechanics and 
its Applications, Information Sciences, Knowledge-Based Systems, IEEE Transactions on Fuzzy Systems, and Journal of Informetrics.

In my “spare” time, I write books for my students: check out my Minimalist Data

Wrangling with Python 16 [27]. I also develop 17 open-source software for data analysis, such as stringi 18 (one of the most often 
downloaded R packages) and genieclust 19 (a fast and robust clustering algorithm in both Python and R).

1

Introduction

1.1 Hello, world!

Traditionally, every programming journey starts by printing a “Hello, world”-like greeting. Let’s then get it over with asap:

cat("My hovercraft is full of eels.\n") ## My hovercraft is full of eels.

# `\n` == newline

By calling (invoking) the cat function, we printed out a given character string that we enclosed in double-quote characters.

Documenting code is a good development practice. It is thus worth knowing that any text following a hash sign (that is not part of a 
string) is a comment. It is ignored by the interpreter.

# This is a comment.

# This is another comment.

cat("I cannot wait", "till lunchtime.\n") # two arguments (another comment) ## I cannot wait till lunchtime.

cat("# I will not buy this record.\n# It is scratched.\n") ## # I will not buy this record.

## # It is scratched.

By convention, in this book, the textual outputs generated by R itself are always preceded by two hashes. This makes copy-pasting all 
code chunks easier in case we would like to experiment with them (which is always highly encouraged).

Whenever a call to a function is to be made, the round brackets are obligatory. All objects within the parentheses (they are 
separated by commas) constitute the input data to be consumed by the operation. Thus, the syntax is: a_function_to_call(argument1, 
argument2, etc.).

1.2 Setting up the development environment

1.2.1 Installing R

It is quite natural to pine for the ability to execute the foregoing code ourselves; to learn programming without getting our hands 
dirty is impossible.

The official precompiled binary distributions of R can be downloaded from https:// cran.r-project.org/.

For serious programming work 1 , we recommend, sooner rather than later, switching to 2 one of the UNIX-like operating systems. This 
includes the free, open-source (== good) variants of GNU/Linux, amongst others, or the proprietary (== not so good) m**OS. In such a 
case, we can employ our favourite package manager (e.g., apt, dnf, pacman, or Homebrew) to install R.

Other users (e.g., of Wi***ws) might consider installing Anaconda or Miniconda, especially if they would like to work with Jupyter 
(Section 1.2.5) or Python as well.

Below we review several ways in which we can write and execute R code. It is up to the benign readers to research, set up, and learn 
the development environment that suits their needs. As usual in real life, there is no single universal approach that always works 
best in all scenarios.

1.2.2 Interactive mode

Whenever we would like to compute something quickly, e.g., determine basic aggregates of a few numbers entered by hand or evaluate a 
mathematical expression like “2+2”, R’s read-eval-print loop (REPL) can give us instant gratification.

How to start the R console varies from system to system. For instance, the users of UNIX-like boxes can simply execute R from the 
terminal (shell, command line). Those on Wi***ws can activate RGui from the Start menu.

Important When working interactively, the default 3 command prompt, “>”, means: I am awaiting orders. Moreover, “+” denotes: Please 
continue. In the latter case, we should either complete the unfinished expression or cancel the operation by pressing ESC or CTRL+C 
(depending on the operating system).

> cat("And now + for something

+ completely different + + + it is an unfinished expression...

+ awaiting another double quote character and then the closing bracket... + + press ESC or CTRL+C to abort input >

For readability, we never print out the command prompt characters in this book.

1.2.3 Batch mode: Working with R scripts (**)

The interactive mode of operation is unsuitable for more complicated tasks, though. 
TheusersofUNIX-likeoperatingsystemswillbeinterestedinanotherextreme,which involves writing standalone R scripts that can be executed 
line by line without any user intervention. To do so, in the terminal, we can invoke:

Rscript file.R

where file.R is the path to a source file; see Section 9.2.3 for more details

Exercise 1.1 (**) In your favourite text editor (e.g., Notepad++, Kate, vi, Emacs, RStudio, or VSCodium), create a file named test.R. 
Write a few calls to the cat function. Then, execute this script from the terminal through Rscript.

1.2.4 Weaving: Automatic report generation (**)

Reproducibledataanalysis 4 requiresustokeeptheresults(text,tables,plots,auxiliary files) synchronised with the code and data that 
generate them.

utils::Sweave (the Sweave function from the utils package) and knitr [64] are two

example template processors that evaluate R code chunks within documents written in LaTeX, HTML, or other markup languages. The 
chunks are replaced by the outputs they yield.

This book is a showcase of such an approach: all the results, including Figure 2.3 and the message about busy hovercrafts, were 
generated programmatically. Thanks to its being written in the highly universal Markdown 5 language, it could be converted to a 
single PDF document 6 as well as the whole website 7 . This was facilitated by tools like pandoc and docutils.

Exercise 1.2 (**) Call install.packages("knitr") in R. Then, create a text file named test.Rmd with the following content:

# Hello, Markdown!

This is my first automatically generated report, where I print messages and stuff.

```{r} print("G'day!") print(2+2) plot((1:10)^2) ```

Thank you for your attention.

Assuming that the file is located in the current working directory (compare Section 7.3.2), call knitr::knit("test.Rmd") from the R 
console, or run in the terminal:

Rscript -e 'knitr::knit("test.Rmd")'

Inspect the generated Markdown file, test.md.

Furthermore, if you have the pandoc tool installed, to generate a standalone HTML file, execute in the terminal:

pandoc test.md --standalone -o test.html

Alternatively, see Section 7.3.2 for ways to call external programs from R.

1.2.5 Semi-interactivemodes(JupyterNotebooks,sendingcodetotheassociated R console, etc.)

The nature of the most frequent use cases of R encourages a semi-interactive workflow, where we quickly progress with prototyping by 
trial and error. In this mode, we compose a series of short code fragments inside a standalone R script. Each fragment implements a 
simple, well-defined task, such as loading data files, data cleansing, feature visualisation, computations of information aggregates, 
etc. Importantly, any code chunk can be sent to the associated R console and executed there. This way, we can inspect the result it 
generates. If we are not happy with the outcome, we can apply the necessary corrections.

There are quite a few integrated development environments that enable such a workflow, including JupyterLab, Emacs, RStudio, and 
VSCodium. Some of them require additional plugins for R.

Executing an individual code line or a whole text selection is usually done by pressing (configurable) keyboard shortcuts such as 
Ctrl+Enter or Shift+Enter.

Exercise 1.3 (*) JupyterLab8 isadevelopmentenvironmentthatrunsinawebbrowser.Itwas 
programmedinPython,butsupportsmanyprogramminglanguages.Thanksto IRkernel9 ,we can use it with R.

1. Install JupyterLab and IRkernel (forinstance,ifyouuseAnaconda,run conda install

-c r r-essentials).

2. From the File menu, select Create a new R source file and save it as, e.g., test.R.

3. Click File and select Create a new console for the editor running the R kernel.

4. Input a few print “Hello, world”-like calls.

5. Press Shift+Enter (whilst working in the editor) to send different code fragments to the console and execute them. Inspect the 
results.

SeeFigure1.1foranillustration.Notethatissuing options(jupyter.rich_display=FALSE) may be necessary to disable rich HTML outputs and 
make them look more like ones in this book.

Figure 1.1. JupyterLab: A source file editor and the associated R console, where we can run arbitrary code fragments.

Example 1.4 (*) JupyterLab also handles dedicated Notebooks, where editable and executable code chunks and results they generate can 
be kept together in a single .ipynb (JSON) file; see Figure 1.2 for an illustration and Chapter 1 of [27] for a quick introduction 
(from the Python language kernel perspective).

This environment is convenient for live coding (e.g., for teachers) or performing exploratory data analyses. However, for more 
serious programming work, the code can get messy. Luckily, there is always an option to export a notebook to an executable, plain 
text R script.

Figure 1.2. An example Jupyter Notebook, where we can keep code and results together.

1.3 Atomic vectors at a glance

After printing “Hello, world”, a typical programming course would normally proceed 
withthediscussiononbasicdatatypesforstoringindividualnumericorlogicalvalues. Next, we would be introduced to arithmetic and 
relational operations on such scalars, followedbythedefinitionofwholearraysorothercollectionsofvalues,complemented by the methods to 
iterate over them, one element after another.

In R, no separate types representing individual values have been defined. Instead, what seems to be a single datum, is already a 
vector (sequence, array) of length one.

2.71828 ## [1] 2.7183 length(2.71828) ## [1] 1

# input a number; here: the same as print(2.71828) # it is a vector with one element

To create a vector of any length, we can call the c function, which combines given arguments into a single sequence:

c(1, 2, 3) # three values combined ## [1] 1 2 3 length(c(1, 2, 3)) # indeed, it is a vector of length three ## [1] 3

In Chapter 2, Chapter 3, and Chapter 6, we will discuss the most prevalent types of atomic vectors: numeric, logical, and character 
ones, respectively.

c(0, 1, -3.14159, 12345.6) ## [1] 0.0000 1.0000 c(TRUE, FALSE) ## [1] TRUE FALSE c("spam", "bacon", "spam") ## [1] "spam" "bacon" 
"spam"

# four numbers -3.1416 12345.6000 # two logical values # three character strings

We call them atomic for they can only group together values of the same type. Lists, 
whichwewilldiscussinChapter4,are,ontheotherhand,referredtoasgenericvectors. They can be used for storing items of mixed types: other 
lists as well.

Note Not having separate scalar types greatly simplifies the programming of numerical computing tasks. Vectors are prevalent in our 
main areas of interest: statistics, simulations, data science, machine learning, and all other data-orientated computing. For 
example, columns and rows in tables (characteristics of clients, ratings of items given by users) or time series (stock market 
prices, readings from temperature sensors) are all best represented by means of such sequences.

The fact that vectors are the core part of the R language makes their use very natural, as opposed to the languages that require 
special add-ons for vector processing, e.g., numpy for Python [34]. By learning different ways to process them asawhole (instead of 
one element at a time), we will ensure that our ideas can quickly be turned into operational code. For instance, computing summary 
statistics such as, say, the mean absolute deviation of a sequence x, will be as effortless as writing mean(abs(x-mean(x))). Such 
code is not only easy to read and maintain, but it is also fast to run.

1.4 Getting help

Our aim is to become independent, advanced R programmers.

Independent, however, does not mean omniscient. The R help system is the authoritative source of knowledge about specific functions 
or more general topics. To open a help page, we call:

help("topic")

# equivalently: ?"topic"

Exercise 1.5 Sight (without going into detail) the manual on the length function by calling help("length"). Note that most help pages 
are structured as follows:

1. Header: package:base means that the function is a base one (see Section 7.3.1 for more details on the R package system);

2. Title;

3. Description: a short description of what the function does;

4. Usage: the list of formal arguments (parameters) to the function;

5. Arguments: the meaning of each formal argument explained;

6. Details: technical information;

7. Value: return value explained;

8. References: further reading;

9. See Also: links to other help pages;

10. Examples: R code that is worth inspecting.

We can also search within all the installed help pages by calling:

help.search("vague topic")

# equivalently: ??"vague topic"

This way, we will be able to find answers to our questions more reliably than when asking DuckDuckGo or G**gle, which commonly return 
many low-quality, irrelevant, ordistractingresultsfromsplogs.Wedonotwanttolosethesacredcodewriter’sflow! It is a matter of personal 
hygiene and good self discipline.

Important All code chunks, including code comments and textual outputs, form an integral part of this book’s text. They should not be 
skipped by the reader. On the contrary, they must become objects of our intense reflection and thorough investigation.

For instance, whenever we introduce a function, it may be a clever idea to look it up in the help system. Moreover, playing with the 
presented code (running, modifying, experimenting, etc.) is also very beneficial. We should develop the habit of asking ourselves 
questions like “What would happen if…”, and then finding the answers on our own.

We are now ready to discuss the most significant operations on numeric vectors, which constitute the main theme of the next chapter. 
See you there.

1.5 Exercises

Exercise 1.6 What are the three most important types of atomic vectors?

Exercise 1.7 According to the classification of the R data types we introduced in the previous chapter, are atomic vectors basic or 
compound types?


