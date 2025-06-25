Sphinx
======

https://www.sphinx-doc.org/en/master/

Get started

These sections cover the basics of getting started with Sphinx, including creating and building your own documentation from scratch.

The Basics

    Installing Sphinx

        PyPI package

        Conda package

        OS-specific package manager

        Docker

        Installation of the latest development release

        Installation from source

    Getting started

        Setting up the documentation sources

        Defining document structure

        Adding content

        Running the build

        Documenting objects

        Basic configuration

        Autodoc

        Intersphinx

        More topics to be covered

    Build your first project

        Getting started

        First steps to document your project using Sphinx

        More Sphinx customization

        Narrative documentation in Sphinx

        Describing code in Sphinx

        Automatic documentation generation from code

        Appendix: Deploying a Sphinx project online

        Where to go from here


User guide


Installing Sphinx

Sphinx is a Python application. It can be installed in one of the ways described below.

Installation methods

    PyPI package

    Conda package

    OS-specific package manager

        Linux

        macOS

        Windows

    Docker

    Installation of the latest development release

    Installation from source

After installation, you can check that Sphinx is available by running

sphinx-build --version

This should print out the Sphinx version number.

Tip

For local development, it is generally recommended to install Sphinx into a non-global environment (using for example venv or conda environments). This will allow for the use of separate sphinx versions and third-party extensions for each sphinx project.

PyPI package

Sphinx packages are published on the Python Package Index (PyPI). The preferred tool for installing packages from PyPI is pip, which is included in all modern versions of Python.

Run the following command:

pip install -U sphinx

Tip

To avoid issues when rebuilding your environment, it is advisable to pin sphinx and third-party extension versions in a requirements.txt file:

pip install -r requirements.txt

Or, if writing documentation for a Python package, place the dependencies in the pyproject.toml file:

pip install .[docs]

Conda package

To work with conda, you need a conda-based Python distribution such as anaconda, miniconda, miniforge or micromamba.

Sphinx is available both via the anaconda main channel (maintained by Anaconda Inc.)

conda install sphinx

as well as via the conda-forge community channel

conda install -c conda-forge sphinx

OS-specific package manager

You may install a global version of Sphinx into your system using OS-specific package managers. However, be aware that this is less flexible and you may run into compatibility issues if you want to work across different projects.
Linux
Debian/Ubuntu

Install either python3-sphinx using apt-get:

apt-get install python3-sphinx

If it not already present, this will install Python for you.
RHEL, CentOS

Install python-sphinx using yum:

yum install python-sphinx

If it not already present, this will install Python for you.
Other distributions

Most Linux distributions have Sphinx in their package repositories. Usually the package is called python3-sphinx, python-sphinx or sphinx. Be aware that there are at least two other packages with sphinx in their name: a speech recognition toolkit (CMU Sphinx) and a full-text search database (Sphinx search).
macOS

Sphinx can be installed using Homebrew, MacPorts.
Homebrew

brew install sphinx-doc

For more information, refer to the package overview.
MacPorts

Install either python3x-sphinx using port:

sudo port install py313-sphinx

To set up the executable paths, use the port select command:

sudo port select --set python python313

sudo port select --set sphinx py313-sphinx

For more information, refer to the package overview.
Windows

Sphinx can be installed using Chocolatey.
Chocolatey

choco install sphinx

You would need to install Chocolatey before running this.

For more information, refer to the chocolatey page.
Docker

Docker images for Sphinx are published on the Docker Hub. There are two kind of images:

    sphinxdoc/sphinx

    sphinxdoc/sphinx-latexpdf

Former one is used for standard usage of Sphinx, and latter one is mainly used for PDF builds using LaTeX. Please choose one for your purpose.

Note

sphinxdoc/sphinx-latexpdf contains TeXLive packages. So the image is very large (over 2GB!).

Hint

When using docker images, please use docker run command to invoke sphinx commands. For example, you can use following command to create a Sphinx project:

docker run -it --rm -v /path/to/document:/docs sphinxdoc/sphinx sphinx-quickstart

And you can use the following command to build HTML document:

docker run --rm -v /path/to/document:/docs sphinxdoc/sphinx make html

For more details, please read README file of docker images.
Installation of the latest development release

You can install the latest development from PyPI using the --pre flag:

pip install -U --pre sphinx

Warning

You will not generally need (or want) to do this, but it can be useful if you see a possible bug in the latest stable release.
Installation from source

You can install Sphinx directly from a clone of the Git repository. This can be done either by cloning the repo and installing from the local clone, on simply installing directly via git.

git clone https://github.com/sphinx-doc/sphinx

cd sphinx

pip install .

pip install git+https://github.com/sphinx-doc/sphinx

You can also download a snapshot of the Git repo in either tar.gz or zip format. Once downloaded and extracted, these can be installed with pip as above.
Previous
Home
Next
Getting started
© Copyright 2007-2025, the Sphinx developers. Created using Sphinx 8.3.0. 

----------------------------------------------------------------------------------------

Getting started
---------------

Sphinx is a documentation generator or a tool that translates a set of plain text source files into various output formats, automatically producing cross-references, indices, etc. That is, if you have a directory containing a bunch of reStructuredText or Markdown documents, Sphinx can generate a series of HTML files, a PDF file (via LaTeX), man pages and much more.

Sphinx es un generador de documentación o una herramienta que traduce un conjunto de archivos fuente de texto simple a varios formatos de salida, produciendo automáticamente referencias cruzadas, índices, etc. Es decir, si tienes un directorio que contiene un montón de documentos reStructuredText o Markdown, Sphinx puede generar una serie de archivos HTML, un archivo PDF (a través de LaTeX), páginas de manual y mucho más.


Sphinx focuses on documentation, in particular handwritten documentation, however, Sphinx can also be used to generate blogs, homepages and even books. Much of Sphinx’s power comes from the richness of its default plain-text markup format, reStructuredText, along with its significant extensibility capabilities.

Sphinx se centra en la documentación, en particular la documentación manuscrita. Sin embargo, también puede utilizarse para generar blogs, páginas de inicio e incluso libros. Gran parte de la potencia de Sphinx reside en la riqueza de su formato de marcado de texto plano predeterminado, reStructuredText, junto con sus importantes capacidades de extensibilidad.


The goal of this document is to give you a quick taste of what Sphinx is and how you might use it. When you’re done here, you can check out the installation guide followed by the intro to the default markup format used by Sphinx, reStructuredText.

El objetivo de este documento es ofrecerle una idea rápida de qué es Sphinx y cómo usarlo. Al terminar, puede consultar la guía de instalación y la introducción al formato de marcado predeterminado que utiliza Sphinx: reStructuredText.


For a great “introduction” to writing docs in general – the whys and hows, see also Write the docs, written by Eric Holscher.
Setting up the documentation sources

Para una excelente introducción a la escritura de documentos en general (el porqué y el cómo), consulte también "Escribir los documentos", escrito por Eric Holscher. Configuración de las fuentes de documentación.

The root directory of a Sphinx collection of plain-text document sources is called the source directory. This directory also contains the Sphinx configuration file conf.py, where you can configure all aspects of how Sphinx reads your sources and builds your documentation. [1]

El directorio raíz de una colección de fuentes de documentos de texto plano de Sphinx se denomina directorio de origen. Este directorio también contiene el archivo de configuración de Sphinx, conf.py, donde puede configurar todos los aspectos de cómo Sphinx lee sus fuentes y crea su documentación. [1]

Sphinx comes with a script called sphinx-quickstart that sets up a source directory and creates a default conf.py with the most useful configuration values from a few questions it asks you. To use this, run:

Sphinx incluye un script llamado sphinx-quickstart que configura un directorio de origen y crea un archivo conf.py predeterminado con los valores de configuración más útiles a partir de unas cuantas preguntas. Para usarlo, ejecute:


sphinx-quickstart
-----------------

Defining document structure

Let’s assume you’ve run sphinx-quickstart. It created a source directory with conf.py and a root document, index.rst. The main function of the root document is to serve as a welcome page, and to contain the root of the “table of contents tree” (or toctree). This is one of the main things that Sphinx adds to reStructuredText, a way to connect multiple files to a single hierarchy of documents.

Supongamos que ha ejecutado sphinx-quickstart. Este creó un directorio fuente con conf.py y un documento raíz, index.rst. La función principal de este documento es servir como página de bienvenida y contener la raíz del árbol de la tabla de contenidos (o toctree). Esta es una de las principales funciones que Sphinx añade a reStructuredText: una forma de conectar varios archivos a una única jerarquía de documentos.


reStructuredText directives

toctree is a reStructuredText directive, a very versatile piece of markup. Directives can have arguments, options and content.

toctree es una directiva de reStructuredText, un elemento de marcado muy versátil. Las directivas pueden tener argumentos, opciones y contenido.


Arguments are given directly after the double colon following the directive’s name. Each directive decides whether it can have arguments, and how many.

Los argumentos se dan inmediatamente después de los dos puntos que siguen al nombre de la directiva. Cada directiva decide si puede tener argumentos y cuántos.


Options are given after the arguments, in form of a “field list”. The maxdepth is such an option for the toctree directive.

Las opciones se proporcionan después de los argumentos, en forma de lista de campos. La profundidad máxima es una opción de este tipo para la directiva toctree.

Content follows the options or arguments after a blank line. Each directive decides whether to allow content, and what to do with it.

El contenido aparece después de las opciones o argumentos, tras una línea en blanco. Cada directiva decide si se permite el contenido y qué hacer con él.

A common gotcha with directives is that the first line of the content must be indented to the same level as the options are.

Un problema común con las directivas es que la primera línea del contenido debe tener sangría al mismo nivel que las opciones.

The toctree directive initially is empty, and looks like so:

.. toctree::
   :maxdepth: 2

You add documents listing them in the content of the directive:

.. toctree::
   :maxdepth: 2

   usage/installation
   usage/quickstart
   ...

This is exactly how the toctree for this documentation looks. The documents to include are given as document names, which in short means that you leave off the file name extension and use forward slashes (/) as directory separators.

Así es exactamente como se ve el árbol de directorios de esta documentación. Los documentos a incluir se indican como nombres de documento, lo que significa que se omite la extensión del nombre de archivo y se usan barras diagonales (/) como separadores de directorio.

See also

Read more about the toctree directive.

You can now create the files you listed in the toctree and add content, and their section titles will be inserted (up to the maxdepth level) at the place where the toctree directive is placed. Also, Sphinx now knows about the order and hierarchy of your documents. (They may contain toctree directives themselves, which means you can create deeply nested hierarchies if necessary.)

Ahora puede crear los archivos que incluyó en el toctree y añadir contenido. Los títulos de sus secciones se insertarán (hasta el nivel de profundidad máxima) donde se encuentra la directiva toctree. Además, Sphinx ahora conoce el orden y la jerarquía de sus documentos. (Estos pueden contener directivas toctree, lo que permite crear jerarquías profundamente anidadas si es necesario).


Adding content

In Sphinx source files, you can use most features of standard reStructuredText. There are also several features added by Sphinx. For example, you can add cross-file references in a portable way (which works for all output types) using the ref role.

En los archivos fuente de Sphinx, puede usar la mayoría de las funciones de reStructuredText estándar. Sphinx también ha añadido varias funciones. Por ejemplo, puede agregar referencias entre archivos de forma portátil (funciona con todos los tipos de salida) mediante la función ref.


For an example, if you are viewing the HTML version, you can look at the source for this document – use the “Show Source” link in the sidebar.



See also

reStructuredText for a more in-depth introduction to reStructuredText, including markup added by Sphinx.
Running the build

Now that you have added some files and content, let’s make a first build of the docs. A build is started with the sphinx-build program:

sphinx-build -M html sourcedir outputdir

where sourcedir is the source directory, and outputdir is the directory in which you want to place the built documentation. The -M option selects a builder; in this example Sphinx will build HTML files.

See also

Refer to the sphinx-build man page for all options that sphinx-build supports.

You can also build a live version of the documentation that you can preview in the browser. It will detect changes and reload the page any time you make edits. To do so, use sphinx-autobuild to run the following command:

sphinx-autobuild source-dir output-dir

However, sphinx-quickstart script creates a Makefile and a make.bat which make life even easier for you. These can be executed by running make with the name of the builder. For example.

make html

This will build HTML docs in the build directory you chose. Execute make without an argument to see which targets are available.

How do I generate PDF documents?

make latexpdf runs the LaTeX builder and readily invokes the pdfTeX toolchain for you.
Documenting objects

One of Sphinx’s main objectives is easy documentation of objects (in a very general sense) in any domain. A domain is a collection of object types that belong together, complete with markup to create and reference descriptions of these objects.

The most prominent domain is the Python domain. For example, to document Python’s built-in function enumerate(), you would add this to one of your source files.

.. py:function:: enumerate(sequence[, start=0])

   Return an iterator that yields tuples of an index and an item of the
   *sequence*. (And so on.)

This is rendered like this:

enumerate(sequence[, start=0])

    Return an iterator that yields tuples of an index and an item of the sequence. (And so on.)

The argument of the directive is the signature of the object you describe, the content is the documentation for it. Multiple signatures can be given, each in its own line.

The Python domain also happens to be the default domain, so you don’t need to prefix the markup with the domain name.

.. function:: enumerate(sequence[, start=0])

   ...

does the same job if you keep the default setting for the default domain.

There are several more directives for documenting other types of Python objects, for example py:class or py:method. There is also a cross-referencing role for each of these object types. This markup will create a link to the documentation of enumerate().

The :py:func:`enumerate` function can be used for ...

And here is the proof: A link to enumerate().

Again, the py: can be left out if the Python domain is the default one. It doesn’t matter which file contains the actual documentation for enumerate(); Sphinx will find it and create a link to it.

Each domain will have special rules for how the signatures can look like, and make the formatted output look pretty, or add specific features like links to parameter types, e.g. in the C/C++ domains.

See also

Domains for all the available domains and their directives/roles.
Basic configuration

Earlier we mentioned that the conf.py file controls how Sphinx processes your documents. In that file, which is executed as a Python source file, you assign configuration values. For advanced users: since it is executed by Sphinx, you can do non-trivial tasks in it, like extending sys.path or importing a module to find out the version you are documenting.

The config values that you probably want to change are already put into the conf.py by sphinx-quickstart and initially commented out (with standard Python syntax: a # comments the rest of the line). To change the default value, remove the hash sign and modify the value. To customize a config value that is not automatically added by sphinx-quickstart, just add an additional assignment.

Keep in mind that the file uses Python syntax for strings, numbers, lists and so on. The file is saved in UTF-8 by default, as indicated by the encoding declaration in the first line.

See also

Configuration for documentation of all available config values.
Autodoc

When documenting Python code, it is common to put a lot of documentation in the source files, in documentation strings. Sphinx supports the inclusion of docstrings from your modules with an extension (an extension is a Python module that provides additional features for Sphinx projects) called autodoc.

See also

sphinx.ext.autodoc for the complete description of the features of autodoc.
Intersphinx

Many Sphinx documents including the Python documentation are published on the Internet. When you want to make links to such documents from your documentation, you can do it with sphinx.ext.intersphinx.

In order to use intersphinx, you need to activate it in conf.py by putting the string 'sphinx.ext.intersphinx' into the extensions list and set up the intersphinx_mapping config value.

For example, to link to io.open() in the Python library manual, you need to setup your intersphinx_mapping like:

intersphinx_mapping = {'python': ('https://docs.python.org/3', None)}

And now, you can write a cross-reference like :py:func:`io.open`. Any cross-reference that has no matching target in the current documentation set, will be looked up in the documentation sets configured in intersphinx_mapping (this needs access to the URL in order to download the list of valid targets). Intersphinx also works for some other domain's roles including :ref:, however it doesn’t work for :doc: as that is non-domain role.

See also

sphinx.ext.intersphinx for the complete description of the features of intersphinx.
More topics to be covered

    Other extensions:

    Static files

    Selecting a theme

    Templating

    Using extensions

    Writing extensions

Footnotes
[1]

This is the usual layout. However, conf.py can also live in another directory, the configuration directory. Refer to the sphinx-build man page for more information.
Previous
Installing Sphinx
Next
Build your first project
© Copyright 2007-2025, the Sphinx developers. Created using Sphinx 8.3.0. 

----------------------------------------------------------------------

Build your first project

In this tutorial you will build a simple documentation project using Sphinx, and view it in your browser as HTML. The project will include narrative, handwritten documentation, as well as autogenerated API documentation.

The tutorial is aimed towards Sphinx newcomers willing to learn the fundamentals of how projects are created and structured. You will create a fictional software library to generate random food recipes that will serve as a guide throughout the process, with the objective of properly documenting it.

To showcase Sphinx capabilities for code documentation you will use Python, which also supports automatic documentation generation.

Note

Several other languages are natively supported in Sphinx for manual code documentation, however they require extensions for automatic code documentation, like Breathe.

To follow the instructions you will need access to a Linux-like command line and a basic understanding of how it works, as well as a working Python installation for development, since you will use Python virtual environments to create the project.

    Getting started
        Setting up your project and development environment
        Creating the documentation layout
    First steps to document your project using Sphinx
        Building your HTML documentation
        Building your documentation in other formats
    More Sphinx customization
        Enabling a built-in extension
        Using a third-party HTML theme
    Narrative documentation in Sphinx
        Structuring your documentation across multiple pages
        Adding cross-references
    Describing code in Sphinx
        Python
            Documenting Python objects
            Cross-referencing Python objects
            Including doctests in your documentation
        Other languages (C, C++, others)
            Documenting and cross-referencing objects
                CustomList
    Automatic documentation generation from code
        Reusing signatures and docstrings with autodoc
        Generating comprehensive API references
    Appendix: Deploying a Sphinx project online
        Sphinx-friendly deployment options
        Embracing the “Docs as Code” philosophy
        Publishing your documentation sources
            GitHub
            GitLab
        Publishing your HTML documentation
            Read the Docs
            GitHub Pages
            GitLab Pages
    Where to go from here

Previous
Getting started
Next
Getting started
© Copyright 2007-2025, the Sphinx developers. Created using Sphinx 8.3.0. 

--------------------------------------------------------

Getting started
Setting up your project and development environment

In a new directory, create a file called README.rst with the following content.
README.rst

Lumache
=======

**Lumache** (/lu'make/) is a Python library for cooks and food lovers that
creates recipes mixing random ingredients.

It is a good moment to create a Python virtual environment and install the required tools. For that, open a command line terminal, cd into the directory you just created, and run the following commands:

python -m venv .venv

source .venv/bin/activate

 

python -m pip install sphinx

Note

The installation method used above is described in more detail in PyPI package. For the rest of this tutorial, the instructions will assume a Python virtual environment.

If you executed these instructions correctly, you should have the Sphinx command line tools available. You can do a basic verification running this command:

 

sphinx-build --version
sphinx-build 4.0.2

If you see a similar output, you are on the right path!
Creating the documentation layout

Then from the command line, run the following command:

 

sphinx-quickstart docs

This will present to you a series of questions required to create the basic directory and configuration layout for your project inside the docs folder. To proceed, answer each question as follows:

    > Separate source and build directories (y/n) [n]: Write “y” (without quotes) and press Enter.

    > Project name: Write “Lumache” (without quotes) and press Enter.

    > Author name(s): Write “Graziella” (without quotes) and press Enter.

    > Project release []: Write “0.1” (without quotes) and press Enter.

    > Project language [en]: Leave it empty (the default, English) and press Enter.

After the last question, you will see the new docs directory with the following content.

docs
├── build
├── make.bat
├── Makefile
└── source
   ├── conf.py
   ├── index.rst
   ├── _static
   └── _templates

The purpose of each of these files is:

build/

    An empty directory (for now) that will hold the rendered documentation.
make.bat and Makefile

    Convenience scripts to simplify some common Sphinx operations, such as rendering the content.
source/conf.py

    A Python script holding the configuration of the Sphinx project. It contains the project name and release you specified to sphinx-quickstart, as well as some extra configuration keys.
source/index.rst

    The root document of the project, which serves as welcome page and contains the root of the “table of contents tree” (or toctree).

Thanks to this bootstrapping step, you already have everything needed to render the documentation as HTML for the first time. To do that, run this command:

 

sphinx-build -M html docs/source/ docs/build/

And finally, open docs/build/html/index.html in your browser. You should see something like this:
Freshly created documentation of Lumache

Freshly created documentation of Lumache

There we go! You created your first HTML documentation using Sphinx. Now you can start customizing it.
Previous
Build your first project
Next
First steps to document your project using Sphinx
© Copyright 2007-2025, the Sphinx developers. Created using Sphinx 8.3.0. 

----------------------------------------------------------

https://www.sphinx-doc.org/en/master/tutorial/first-steps.html


