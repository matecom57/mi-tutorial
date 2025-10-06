Appendix B - Matplotlib: A Primer
=================================

**B.1 Functional vs. Object-Oriented Interface**

Matplotlib can be used either in a functional or in an object-oriented manner. In the functional approach (also referred to 
as implicit) the interaction with the system is performed through the matplotlib.pyplot interface (pyplot in the 
remainder). This is a collection of functions originally designed to make Matplotlib work in a way similar to how MATLAB 
does. Calls to pyplot perform operations on a ﬁgure, i.e., creating a ﬁgure, deﬁning a plotting area within a ﬁgure, 
drawing charts in the plotting area, etc. The implicit approach essentially works as a state-based machine where the state 
of the ﬁgures and plotting areas is preserved through consecutive function calls. In other words, function calls build on 
top of the state left by the previous calls; consequently, a repeated call, for instance to pyplot.scatter(), will generate 
multiple scatter plots on top of one another. The implicit interface comes in handy for quick visualization of data, but 
oﬀers fewer customization and ﬁne-tuning capabilities than the object-oriented one.

Matplotlib puede usarse de forma funcional u orientada a objetos. En el enfoque funcional (también conocido como 
implícito), la interacción con el sistema se realiza a través de la interfaz matplotlib.pyplot (pyplot en el resto). Esta 
es una colección de funciones diseñadas originalmente para que Matplotlib funcione de forma similar a MATLAB. Las llamadas 
a pyplot realizan operaciones en una figura, es decir, crean una figura, definen un área de representación gráfica dentro 
de ella, dibujan gráficos en el área de representación gráfica, etc. El enfoque implícito funciona esencialmente como una 
máquina basada en estados donde el estado de las figuras y las áreas de representación gráfica se conserva mediante 
llamadas de función consecutivas. En otras palabras, las llamadas de función se construyen sobre el estado dejado por las 
llamadas anteriores; en consecuencia, una llamada repetida, por ejemplo a pyplot.scatter(), generará múltiples diagramas de 
dispersión superpuestos. La interfaz implícita resulta útil para la visualización rápida de datos, pero ofrece menos 
capacidades de personalización y ajuste que la orientada a objetos.

On the other hand, the object-oriented (explicit) approach—the one used in this book—makes the graphical objects explicit 
in the code. This oﬀers, in our view, a much clearer understanding of how a chart is structured and of the parts composing 
it. The object-oriented interface relies on three main classes:

Por otro lado, el enfoque orientado a objetos (explícito), utilizado en este libro, explicita los objetos gráficos en el 
código. Esto, en nuestra opinión, ofrece una comprensión mucho más clara de cómo se estructura un gráfico y de las partes 
que lo componen. La interfaz orientada a objetos se basa en tres clases principales:

• matplotlib.figure.Figure

• matplotlib.axes.Axes

• matplotlib.artist.Artist

respectively Figure, Axes, and Artist for brevity. We can think of a Figure as a top-level container holding references to 
one or more Axes. A given Figure can contain several Axes (sub-plots), but an Axes can belong to one Figure only. Axes are 
the canvasses where the charts are actually plotted. Finally, an Artist represents the single elements each chart is made 
of: these can be text snippets, patches, lines, and so on.

Para abreviar, se denominan respectivamente Figura, Ejes y Artista. Podemos considerar una Figura como un contenedor de 
nivel superior que contiene referencias a uno o más Ejes. Una Figura puede contener varios Ejes (subtramas), pero un Eje 
solo puede pertenecer a una Figura. Los Ejes son los lienzos donde se trazan los gráficos. Finalmente, un Artista 
representa los elementos individuales que componen cada gráfico: pueden ser fragmentos de texto, parches, líneas, etc.


**B.2 Understanding Figure and Axes**

In a nutshell a Figure is the top-level container which accommodates one or more Axes. Script B.1 shows how to generate an 
empty ﬁgure of size 2 in . × 2 in with a black border, gray background, and resolution 150 dpi. The width of the border is 
2 pt (Fig. B.1).

En resumen, una figura es el contenedor de nivel superior que alberga uno o más ejes. El script B.1 muestra cómo generar 
una figura vacía de 5 cm x 5 cm con borde negro, fondo gris y una resolución de 150 ppp. El ancho del borde es de 0,25 pt 
(Fig. B.1).


**B.2.1 Adding Axes to a Figure**

**Adding Axes to a Figure One at a Time**


A Figure object can contain one or more Axes (Fig. B.2). One way to add Axes to a Figure is via the Figure.add_axes() 
method as shown in Script B.2.

Un objeto Figura puede contener uno o más Ejes (Fig. B.2). Una forma de añadir Ejes a una Figura es mediante el método 
Figure.add_axes(), como se muestra en el Script B.2.

**Generating a Figure With Multiple Axes in One Go**

Another option is to generate a Figure and an array of Axes in one go through matploltib.pyplot.subplots() as illustrated 
in Fig. B.3 and Script B.3. This method is particularly useful if we wish to arrange the Axes in a rectangular matrix. Note 
that pyplot.subplots() returns the Axes packed in a NumPy array.

Otra opción es generar una figura y un array de ejes simultáneamente mediante matploltib.pyplot.subplots(), como se ilustra 
en la Fig. B.3 y el script B.3. Este método es especialmente útil si deseamos organizar los ejes en una matriz rectangular. 
Tenga en cuenta que pyplot.subplots() devuelve los ejes empaquetados en un array NumPy.

**B.2.2 Generating Insets**

We can place one or more Axes within another Axes, which comes in handy to create insets (Fig. B.4). The procedure is 
described in Script B.4.

Podemos colocar uno o más ejes dentro de otros, lo cual resulta útil para crear inserciones (Fig. B.4). El procedimiento se 
describe en el Script B.4.

**B.2.3 Customizing Axes**

As we have stated at the outset of this appendix, an Axes is the area of the picture that contains the plot’s components 
and structure. Figure B.5 illustrates the main building blocks of an Axes, and Table B.1 summarizes the main methods of the 
Axes class for manipulating them. We refer the reader to Matplotlib’s oﬃcial documentation [6] and Ref. [7] for further 
details.

Como se indicó al principio de este apéndice, un Eje es el área de la imagen que contiene los componentes y la estructura 
del gráfico. La Figura B.5 ilustra los componentes principales de un Eje, y la Tabla B.1 resume los principales métodos de 
la clase Eje para manipularlos. Para más detalles, se recomienda consultar la documentación oficial de Matplotlib [6] y la 
referencia [7].

**B.2.4 Managing Titles and Subtitles Through mpl-ornaments**

Matplotlib provides the Figure.suptitle() and Axes.set_title() methods respectively for adding a title at the Figure and 
Axes level. However, there is unfortunately no direct support for inserting title and subtitle at the Figure level while 
maintaining an independent title for each Axes, which is a situation often encountered in practice. Left-justiﬁed title 
and subtitle at the ﬁgure level is, for instance, the layout recommended in [8], and also the solution adopted throughout 
this book. The mplornaments.titles package’s set_title_and_subtitle() function helps to do this. A sample use case is 
presented in Fig. B.6 and Script B.5.

Matplotlib proporciona los métodos Figure.suptitle() y Axes.set_title(), respectivamente, para añadir un título a nivel de 
figura y de ejes. Sin embargo, lamentablemente no existe soporte directo para insertar un título y un subtítulo a nivel de 
figura manteniendo un título independiente para cada eje, una situación frecuente en la práctica. El título y el subtítulo 
justificados a la izquierda a nivel de figura es, por ejemplo, el diseño recomendado en [8] y la solución adoptada a lo 
largo de este libro. La función set_title_and_subtitle() del paquete mplornaments.titles facilita este proceso. Se presenta 
un ejemplo de caso práctico en la figura B.6 y el script B.5.

Script B.5: Sample usage of mpl-ornaments to add a global title and subtitle to the whole picture and separate titles for 
each sub-plot (Fig. B.5)

Guión B.5: Ejemplo de uso de mpl-ornaments para agregar un título y un subtítulo globales a toda la imagen y títulos 
separados para cada subtrama (Fig. B.5)

**B.2.5 Changing the Background Color of Figure and Axes**

Changing the background color of Axes and Figure (Fig. B.7) is easily done via the Axes.set_facecolor() and 
Figure.set_facecolor() methods. The procedure is illustrated in Script B.6 (see also Sect. C.4 on how to specify colors).

**B.3 Depth Sorting**

Depth sorting is the process of arranging graphical objects from the closest to the farthest from the observer, so that 
given any two objects the one closer to the observer is drawn before the other. In other words, depth sorting is what 
deﬁnes the foreground—background relationships among all the objects in a plot.

La ordenación por profundidad es el proceso de ordenar los objetos gráficos desde el más cercano al más lejano del 
observador, de modo que, dados dos objetos cualesquiera, el más cercano se dibuja antes que el otro. En otras palabras, la 
ordenación por profundidad define las relaciones entre el primer plano y el fondo entre todos los objetos de un gráfico.

The rank of an object in the depth sorting list is encoded by an integer variable known as the z-order, where higher values 
indicate that the object is closer to the observer. In Matplotlib the default z-order for patches, lines, and text is as 
follows:

El rango de un objeto en la lista de ordenamiento por profundidad se codifica mediante una variable entera conocida como 
orden z. Los valores más altos indican que el objeto está más cerca del observador. En Matplotlib, el orden z 
predeterminado para parches, líneas y texto es el siguiente:

• matplotlib.patches.Patch . → z-order = 1

• matplotlib.lines.Line2D . → z-order = 2

• matplotlib.text . → z-order = 3

When an object is created and added to the target Axes, the order in which function calls are made in the source code 
determines the rendering order inside objects of the same class. The later an object is created, the closer it will be to 
the observer. Script B.7 illustrates this behavior. Observe that the ﬁrst part of the code (particularly point 4 ) 
generates three circles, respectively denoted as ‘0’, ‘1,’ and ‘2’, and adds them to the canvas in this order. As a result, 
circle ‘2’ will be the closest to the observer (foreground object), followed by ‘1’ and ‘0’ (see Fig. B.8, left).

Cuando se crea un objeto y se añade a los Ejes de destino, el orden de las llamadas a funciones en el código fuente 
determina el orden de representación dentro de los objetos de la misma clase. Cuanto más tarde se cree un objeto, más cerca 
estará del observador. El script B.7 ilustra este comportamiento. Observe que la primera parte del código (en particular, 
el punto 4) genera tres círculos, denominados «0», «1» y «2», respectivamente, y los añade al lienzo en este orden. Como 
resultado, el círculo «2» será el más cercano al observador (objeto en primer plano), seguido de «1» y «0» (véase la Fig. 
B.8, izquierda).


The rendering order of any group of objects can be modiﬁed by overriding the default z-order, as shown in the second part 
of Script B.7 (point 5 ). The result is that circle ‘0’ is now the closest to the observer (foreground) followed by ‘1’ and 
‘2’ (Fig. B.8, right).


