Programming_3D_Applications_with_HTML5_and_WebGL_c01
====================================================

Preface
-------

In its roughly twenty years of existence, 3D on the Web has taken a tortuous journey. In 1994 it was a Next Big Thing called VRML that grabbed industry attention, only to ultimately become a bastard stepchild of mainstream web development during the first Internet boom. Around 2000, a new Next Big Thing called Shockwave 3D promised to democratize game development; by 2004, that offspring was also shipped off to the orphanage. In 2007, the virtual world system Second Life leapfrogged the technology media establishment, landing on the cover of BusinessWeek, and a new 3D land grab ensued—literally, as folks rented Second Life islands in droves attempting to colonize a cyberspace that never quite materialized. By 2010, virtual worlds were yesterday’s news, as consumers latched on to social and mobile gaming to sate their appetite for distraction. Viewed through one lens, this is a litany of failure. Viewed through another, it is a crucible.

En sus aproximadamente veinte años de existencia, el 3D en la Web ha emprendido un viaje tortuoso. En 1994, fue una próxima gran novedad llamada VRML la que atrajo la atención de la industria, solo para finalmente convertirse en un hijastro bastardo del desarrollo web convencional durante el primer auge de Internet. Alrededor del año 2000, una nueva próxima gran novedad llamada Shockwave 3D prometió democratizar el desarrollo de juegos; en 2004, esa descendencia también fue enviada al orfanato. En 2007, el sistema de mundo virtual Second Life superó al establishment de los medios tecnológicos, apareciendo en la portada de BusinessWeek, y se produjo una nueva apropiación de tierras en 3D, literalmente, cuando la gente alquiló islas de Second Life en masa para intentar colonizar un ciberespacio que nunca se materializó del todo. En 2010, los mundos virtuales eran noticia del pasado, ya que los consumidores recurrieron a los juegos sociales y móviles para saciar su apetito de distracción. Visto a través de una sola lente, esto es una letanía de fracasos. Visto a través de otro, es un crisol.



Good ideas may take a long time, but they never truly die. 3D on the Web is one such notion. Once you look past the well-meaning but naïve overreaches of those early attempts, you can see what some of us (in all humility) have known all along: 3D is just another media type. Whether you use it to build a massively multiplayer online game, an interactive chemistry lesson, or any of countless other applications, 3D is just another way to get pixels moving on a screen at the behest of the user. Thankfully, the latest generations of browser makers get this, and have been slowly and steadfastly turning the web browser into a rich media development platform that includes first-rate, hardware-accelerated graphics and an integrated compositing architecture. Put in less flowery words: 3D is here; get used to it.

Las buenas ideas pueden tardar mucho tiempo, pero nunca mueren del todo. El 3D en la Web es una de esas nociones. Una vez que se mira más allá de las extralimitaciones bien intencionadas pero ingenuas de aquellos primeros intentos, se puede ver lo que algunos de nosotros (con toda humildad) hemos sabido desde siempre: el 3D es sólo otro tipo de medio. Ya sea que lo use para crear un juego multijugador masivo en línea, una lección de química interactiva o cualquiera de otras innumerables aplicaciones, el 3D es simplemente otra forma de hacer que los píxeles se muevan en una pantalla a instancias del usuario. Afortunadamente, las últimas generaciones de fabricantes de navegadores entienden esto y, lenta y firmemente, han estado convirtiendo el navegador web en una plataforma de desarrollo de medios enriquecidos que incluye gráficos de primer nivel acelerados por hardware y una arquitectura de composición integrada. Dicho en palabras menos floridas: el 3D está aquí; acostumbrarse a él.


This book is intended to provide you with the information you need to create production-quality 3D applications for desktop and mobile browsers using graphics technologies available in modern browsers: WebGL, Canvas, and CSS3. It covers related topics such as JavaScript performance, mobile development, and high-performance web design; and it goes deep into tools and libraries that will help make you productive: Three.js, Tween.js, new application frameworks, and the many options for 3D content creation.

Este libro está destinado a brindarle la información que necesita para crear aplicaciones 3D con calidad de producción para navegadores de escritorio y móviles utilizando tecnologías gráficas disponibles en los navegadores modernos: WebGL, Canvas y CSS3. Cubre temas relacionados como el rendimiento de JavaScript, el desarrollo móvil y el diseño web de alto rendimiento; y profundiza en las herramientas y bibliotecas que le ayudarán a ser productivo: Three.js, Tween.js, nuevos marcos de aplicaciones y las numerosas opciones para la creación de contenido 3D.


Readers of my first book, WebGL Up and Running, will see a fair amount of overlap between that book and the early chapters of this one. This is unavoidable. Much of the material in the early chapters is overview and introductory; as such, it must stand on its own without requiring readers to get the earlier book. Regardless, despite the superficial similarities in the early chapters, readers of the first book will find much additional information. Even the introductory chapters here go far deeper into the material than the first book could afford, given its mission. And once we get past the initial three chapters, the material is almost completely different. WebGL Up and Running was intended to provide readers with an approachable introduction to a new and daunting subject. I like to think that what it lacked in technical rigor, it made up for in enthusiasm; if you came away from reading it with nothing other than an appetite to learn more, I consider my job well done. On the other hand, this book aims to give readers a thorough grounding in both theory and practice, allowing them to emerge from the experience ready to build production 3D applications.

Los lectores de mi primer libro, WebGL Up and Running, verán bastante superposición entre ese libro y los primeros capítulos de este. Esto es inevitable. Gran parte del material de los primeros capítulos es una descripción general y una introducción; como tal, debe valerse por sí solo sin necesidad de que los lectores obtengan el libro anterior. De todos modos, a pesar de las similitudes superficiales en los primeros capítulos, los lectores del primer libro encontrarán mucha información adicional. Incluso los capítulos introductorios profundizan mucho más en el material que el primer libro, dada su misión. Y una vez que superamos los tres capítulos iniciales, el material es casi completamente diferente. WebGL Up and Running tenía como objetivo proporcionar a los lectores una introducción accesible a un tema nuevo y desalentador. Me gusta pensar que lo que le faltaba en rigor técnico lo compensaba en ilusión; Si saliste de leerlo con nada más que ganas de aprender más, considero que mi trabajo está bien hecho. Por otro lado, este libro tiene como objetivo brindar a los lectores una base sólida tanto en la teoría como en la práctica, permitiéndoles emerger de la experiencia listos para crear aplicaciones 3D de producción.


CHAPTER 1 Introduction
----------------------

We live in a 3D world. People move, think, and experience in three dimensions. 

Much of our media is also 3D—though it is usually presented on flat screens. Animated films are created from computer-generated 3D images. Online map services allow us to explore our destination, virtually, in a 3D environment. Most video games, whether running on dedicated consoles or mobile phones, are rendered in 3D. Even the news has gone 3D: the sight of a CNN analyst meandering through a virtual set, comically awkward a few years ago, has become an accepted part of the broadcast milieu as cable channels vie for increasing attention in a 24-hour news cycle.

Gran parte de nuestros medios también son 3D, aunque normalmente se presentan en pantallas planas. Las películas animadas se crean a partir de imágenes 3D generadas por computadora. Los servicios de mapas online nos permiten explorar nuestro destino, virtualmente, en un entorno 3D. La mayoría de los videojuegos, ya sea que se ejecuten en consolas dedicadas o en teléfonos móviles, se renderizan en 3D. Incluso las noticias se han vuelto 3D: la visión de un analista de CNN deambulando por un escenario virtual, algo cómicamente incómodo hace unos años, se ha convertido en una parte aceptada del entorno de transmisión a medida que los canales de cable compiten por aumentar la atención en un ciclo de noticias de 24 horas.


3D graphics is nearly as old as the computer itself, tracing its roots back to the 1960s. It has been used in applications spanning engineering, education, training, architecture, finance, sales and marketing, gaming, and entertainment. Historically, 3D applications have relied on high-end computer systems and expensive software. But that has changed in the last decade. 3D processing hardware is now shipped in every computer and mobile device, with the consumer smartphone of today possessing more graphics power than the professional workstation of 15 years ago. More importantly, the software required to render 3D is now not only universally accessible, it’s also free. It’s called a web browser.

Los gráficos 3D son casi tan antiguos como la propia computadora y sus raíces se remontan a la década de 1960. Se ha utilizado en aplicaciones que abarcan ingeniería, educación, formación, arquitectura, finanzas, ventas y marketing, juegos y entretenimiento. Históricamente, las aplicaciones 3D se han basado en sistemas informáticos de alta gama y software costoso. Pero eso ha cambiado en la última década. El hardware de procesamiento 3D ahora se incluye en todas las computadoras y dispositivos móviles, y el teléfono inteligente de consumo de hoy posee más potencia gráfica que la estación de trabajo profesional de hace 15 años. Más importante aún, el software necesario para renderizar 3D ahora no sólo es accesible universalmente, sino que también es gratuito. Se llama navegador web.


Figure 1-1 shows an excerpt from 100,000 Stars, a browser-based 3D flythrough simulation of our stellar neighbors in the Milky Way. Using the mouse, you can rotate about the galactic plane and zoom in on a star of interest. Stars are represented with renderings that approximate their apparent magnitude and color. Each star is labeled with its common name; when you mouse over the label, it highlights. Click on the label, and an overlay appears displaying the Wikipedia entry for that star. Click on a hyperlink in the overlay text, and the browser will launch that link in a new tab. 100,000 Stars is a stunningly produced interactive experience featuring beautiful renderings, pulsing animations, a majestic soundtrack, and an artfully integrated 2D user interface.

La Figura 1-1 muestra un extracto de 100.000 Stars, una simulación de sobrevuelo en 3D basada en navegador de nuestros vecinos estelares en la Vía Láctea. Usando el mouse, puedes rotar sobre el plano galáctico y acercar una estrella de interés. Las estrellas se representan con representaciones que se aproximan a su magnitud y color aparente. Cada estrella está etiquetada con su nombre común; cuando pasa el mouse sobre la etiqueta, se resalta. Haga clic en la etiqueta y aparecerá una superposición que muestra la entrada de Wikipedia para esa estrella. Haga clic en un hipervínculo en el texto superpuesto y el navegador iniciará ese enlace en una nueva pestaña. 100,000 Stars es una experiencia interactiva increíblemente producida que presenta hermosas representaciones, animaciones vibrantes, una banda sonora majestuosa y una interfaz de usuario 2D ingeniosamente integrada.


Figure 1-1. The 100,000 Stars project by Google; image courtesy Google, Inc.

100,000 Stars was created as an experiment by Google’s Data Arts team to demonstrate the rich capabilities of the Chrome browser. While the application is experimental, the technologies underlying it are not: it was built with HTML5 features available today in most browsers. The galaxy and stars are rendered in real time via WebGL, the new standard for hardware-accelerated 3D web graphics; the labels are placed relative to their stars through 3D transforms now available in CSS3; and the overlays blend seamlessly with the 3D content because browsers combine, or composite, all page elements into a unified presentation.

100.000 Stars fue creado como un experimento por el equipo Data Arts de Google para demostrar las ricas capacidades del navegador Chrome. Si bien la aplicación es experimental, las tecnologías subyacentes no lo son: se creó con funciones HTML5 disponibles actualmente en la mayoría de los navegadores. La galaxia y las estrellas se representan en tiempo real a través de WebGL, el nuevo estándar para gráficos web 3D acelerados por hardware; las etiquetas se colocan en relación con sus estrellas mediante transformaciones 3D ahora disponibles en CSS3; y las superposiciones se combinan perfectamente con el contenido 3D porque los navegadores combinan o componen todos los elementos de la página en una presentación unificada.


Just a few years ago, an experience like 100,000 Stars could only have been achieved in a native client application requiring a large download and installation, produced by developers using complex tools in a time-consuming and expensive development process. Today, it can be built with a browser, free and open source tools, and a standard web technology stack. What’s more, you can instantly access updates by simply reloading the page, load information from anywhere on the Web via URL, and click hyperlinks from the 3D to access more information.

Hace apenas unos años, una experiencia como 100.000 estrellas solo se podría haber logrado en una aplicación cliente nativa que requería una gran descarga e instalación, producida por desarrolladores que utilizan herramientas complejas en un proceso de desarrollo costoso y que requiere mucho tiempo. Hoy en día, se puede crear con un navegador, herramientas gratuitas y de código abierto y una pila de tecnología web estándar. Es más, puede acceder instantáneamente a las actualizaciones simplemente recargando la página, cargar información desde cualquier lugar de la Web a través de una URL y hacer clic en hipervínculos desde el 3D para acceder a más información.


This book is about taking advantage of the awesome power of the modern browser to create a new breed of connected, visual application. Some of this breed will look a lot like its ancestors, essentially ports of traditional 3D products, refactored to reach new customers and reduce costs. But far more exciting are the possibilities for novel consumer applications in advertising, product marketing, customer support, education, training, tourism, gaming, and entertainment—to name a few. 3D brings a new dimension to the interactive experience; combined with web technology, the third dimension is now accessible to everyone on the planet.

Este libro trata sobre cómo aprovechar el increíble poder del navegador moderno para crear una nueva generación de aplicaciones visuales conectadas. Algunos de esta raza se parecerán mucho a sus ancestros, esencialmente versiones de productos 3D tradicionales, refactorizados para llegar a nuevos clientes y reducir costos. Pero mucho más interesantes son las posibilidades de nuevas aplicaciones para el consumidor en publicidad, marketing de productos, atención al cliente, educación, capacitación, turismo, juegos y entretenimiento, por nombrar algunos. El 3D aporta una nueva dimensión a la experiencia interactiva; Combinada con la tecnología web, la tercera dimensión ahora es accesible para todos en el planeta.



100,000 Stars is a tour de force in interactive media development. Michael Chang, one of the creators, wrote a great case study of the project. To see what went into its development, go to http://www.html5rocks.com/en/tutorials/casestudies/100000stars/.

100.000 Stars es una hazaña en el desarrollo de medios interactivos. Michael Chang, uno de los creadores, escribió un excelente estudio de caso del proyecto. Para ver lo que se hizo en su desarrollo, vaya a http://www.html5rocks.com/en/tutorials/casestudies/100000stars/



HTML5: A New Visual Medium
--------------------------

HTML has come a long way since the days of static pages, forms, and the Submit button. In the early 2000s, browsers introduced rich interaction by allowing portions of a page to be changed dynamically via Ajax techniques. Still, the ways in which pages could be changed with Ajax were constrained by the graphical features of HTML and CSS. If a developer wished to go beyond those limits, he had to use media plugins such as Flash and QuickTime.

HTML ha recorrido un largo camino desde los días de las páginas estáticas, los formularios y el botón Enviar. A principios de la década de 2000, los navegadores introdujeron una interacción rica al permitir que partes de una página se cambiaran dinámicamente mediante técnicas Ajax. Aún así, las formas en que se podían cambiar las páginas con Ajax estaban limitadas por las características gráficas de HTML y CSS. Si un desarrollador deseaba ir más allá de esos límites, tenía que utilizar complementos multimedia como Flash y QuickTime.


This was pretty much the status quo during the 2000s, but things have changed over the last few years. Several browser advances under development during this period came together into HTML5. With HTML5, the web browser has become a platform capable of running sophisticated applications that rival native code in features and performance. HTML5 represents a massive overhaul to the HTML standard, including syntax cleanups, new JavaScript language features and application programming interfaces (APIs), mobile capabilities, and breakthrough multimedia support. Central to the HTML5 platform is a set of advanced graphics technologies that are the focus of this book:

Este era prácticamente el status quo durante la década de 2000, pero las cosas han cambiado en los últimos años. Varios avances de navegadores en desarrollo durante este período se fusionaron en HTML5. Con HTML5, el navegador web se ha convertido en una plataforma capaz de ejecutar aplicaciones sofisticadas que rivalizan con el código nativo en características y rendimiento. HTML5 representa una revisión masiva del estándar HTML, que incluye limpiezas de sintaxis, nuevas características del lenguaje JavaScript e interfaces de programación de aplicaciones (API), capacidades móviles y soporte multimedia innovador. Un elemento central de la plataforma HTML5 es un conjunto de tecnologías gráficas avanzadas que son el tema central de este libro:



    • WebGL for hardware-accelerated 3D rendering with JavaScript. Based on the time- tested graphics API OpenGL, WebGL is a standard supported by nearly all web browsers on the desktop as well as a growing number of mobile browsers.
WebGL para renderizado 3D acelerado por hardware con JavaScript. Basado en la probada API de gráficos OpenGL, WebGL es un estándar compatible con casi todos los navegadores web de escritorio, así como con un número cada vez mayor de navegadores móviles.


    • CSS3 3D transforms, transitions, and custom filters for advanced page effects. CSS has evolved over the past several years to include hardware-accelerated 3D rendering and animation features accessible through style sheet language.
Transformaciones 3D CSS3, transiciones y filtros personalizados para efectos de página avanzados. CSS ha evolucionado en los últimos años para incluir funciones de animación y renderizado 3D aceleradas por hardware accesibles a través del lenguaje de hojas de estilo.


    • The Canvas element and its 2D drawing context API. Universally supported in browsers, this JavaScript API allows developers to draw arbitrary graphics to the surface of a DOM element. Though Canvas is a 2D API, with the help of additional JavaScript libraries it can be used to render 3D effects—providing an alternative for platforms where WebGL or CSS3 3D are not supported.
El elemento Canvas y su API de contexto de dibujo 2D. Esta API de JavaScript, universalmente compatible con los navegadores, permite a los desarrolladores dibujar gráficos arbitrarios en la superficie de un elemento DOM. Aunque Canvas es una API 2D, con la ayuda de bibliotecas JavaScript adicionales se puede utilizar para representar efectos 3D, lo que proporciona una alternativa para plataformas donde WebGL o CSS3 3D no son compatibles.


Each of these features has its strengths, weaknesses, and technical tradeoffs, and each has a role to play in delivering interactive and visually compelling 3D experiences. Which ones you use can depend on several factors—what you are trying to build, which platforms you have to support, performance concerns, and so on. Let’s say, for example, that you are creating a first-person shooter game and you need the highest-quality graphics. This will be hard to pull off without using WebGL’s extensive access to the rendering hardware. On the other hand, maybe you are developing a fancy channel tuner interface for a video website, including live video thumbnails, rotation effects on rollovers, and dissolve transitions between clips; in that case, CSS3 might have everything you need to deliver a killer experience.

Cada una de estas características tiene sus fortalezas, debilidades y compensaciones técnicas, y cada una tiene un papel que desempeñar en la entrega de experiencias 3D interactivas y visualmente atractivas. Cuáles utilice puede depender de varios factores: qué está intentando crear, qué plataformas debe soportar, problemas de rendimiento, etc. Digamos, por ejemplo, que estás creando un juego de disparos en primera persona y necesitas gráficos de la más alta calidad. Esto será difícil de lograr sin utilizar el amplio acceso de WebGL al hardware de renderizado. Por otro lado, tal vez esté desarrollando una elegante interfaz de sintonizador de canales para un sitio web de videos, que incluya miniaturas de videos en vivo, efectos de rotación en rollovers y transiciones de disolución entre clips; En ese caso, CSS3 podría tener todo lo que necesita para ofrecer una experiencia excelente.



And one standard to rule them all…

What most web developers think of informally as HTML5 is actually a collection of technologies and standards. Some of these are already fully ratified by the World Wide Web Consortium (W3C) and implemented in all browsers. Others are less mature as standards, but nevertheless widely supported. Still others, such as WebGL, are mature and stable standards, but not controlled by the W3C.

Lo que la mayoría de los desarrolladores web consideran informalmente HTML5 es en realidad una colección de tecnologías y estándares. Algunos de ellos ya están plenamente ratificados por el World Wide Web Consortium (W3C) e implementados en todos los navegadores. Otros son menos maduros como estándares, pero aun así cuentan con un amplio apoyo. Otros más, como WebGL, son estándares maduros y estables, pero no están controlados por el W3C.


The Browser as Platform
-----------------------

HTML5 brings rich graphics to the Web; this would not amount to much without the presence of other essential browser improvements. In particular, a handful of advances have paved the way for true, rich Internet application development with HTML5: 

HTML5 aporta gráficos enriquecidos a la Web; Esto no sería mucho sin la presencia de otras mejoras esenciales en el navegador. En particular, un puñado de avances han allanado el camino para un verdadero y rico desarrollo de aplicaciones de Internet con HTML5:


**JavaScript Virtual Machine (VM) performance**

WebGL and Canvas 2D are JavaScript APIs; animation and interaction will run only as fast as the JavaScript code behind them. A few years ago, virtual machine performance would have made 3D development a nonstarter for practical use. Thank‐fully, today’s VMs scream.

WebGL y Canvas 2D son API de JavaScript; la animación y la interacción se ejecutarán tan rápido como el código JavaScript detrás de ellas. Hace unos años, el rendimiento de las máquinas virtuales habría hecho que el desarrollo 3D fuera imposible para su uso práctico. Afortunadamente, las máquinas virtuales de hoy gritan.


**Accelerated compositing**

The browser is responsible for combining, or compositing, the various elements on the page quickly and without unwanted visual artifacts. As content has become more dynamic, browsers have made huge improvements in compositing, including using the 3D hardware-rendering pipeline for all visual elements, both 2D and 3D.

El navegador es responsable de combinar o componer los distintos elementos de la página de forma rápida y sin artefactos visuales no deseados. A medida que el contenido se ha vuelto más dinámico, los navegadores han realizado enormes mejoras en la composición, incluido el uso del canal de renderizado de hardware 3D para todos los elementos visuales, tanto 2D como 3D.


**Animation support**

The function requestAnimationFrame() was introduced as an improvement to using setInterval() and setTimeout() to drive animations. This new method can greatly enhance performance and eliminate visual artifacts by allowing the developer to redraw the contents of canvas elements in the same pass that the browser redraws built-in page elements.

La función requestAnimationFrame() se introdujo como una mejora al uso de setInterval() y setTimeout() para controlar animaciones. Este nuevo método puede mejorar enormemente el rendimiento y eliminar artefactos visuales al permitir al desarrollador volver a dibujar el contenido de los elementos del lienzo en la misma pasada que el navegador vuelve a dibujar los elementos integrados de la página.


HTML5 browsers also include features for multithreaded programming (Web Workers), full-duplex TCP/IP networking (WebSockets), local data storage, and more that developers can use to deliver world-class application functionality. These features— taken together with WebGL, CSS3 3D, and the Canvas element—represent a revolutionary new platform for delivering connected visual applications on any computer or device.

Los navegadores HTML5 también incluyen funciones para programación multiproceso (Web Workers), redes TCP/IP full-duplex (WebSockets), almacenamiento de datos local y más que los desarrolladores pueden utilizar para ofrecer una funcionalidad de aplicaciones de clase mundial. Estas características, en conjunto con WebGL, CSS3 3D y el elemento Canvas, representan una nueva plataforma revolucionaria para entregar aplicaciones visuales conectadas en cualquier computadora o dispositivo.


Figure 1-2 shows a demonstration version of Epic Games’ Epic Citadel running (as of this writing) in a development build of Firefox. Epic Citadel uses WebGL to render the graphics, but what really sets this work apart is the breakthrough in game engine performance. The game uses a version of Epic’s Unreal engine that has been ported from its native C++/operating system–dependent code to a browser-based implementation, using the Emscripten compiler and asm.js, a new optimized low-level subset of JavaScript. By simply entering a URL, web browser users can access a beautifully rendered, full-screen console game experience running at 60 frames per second (fps), with very little download time and no installation required.

La Figura 1-2 muestra una versión de demostración de Epic Citadel de Epic Games ejecutándose (al momento de escribir este artículo) en una versión de desarrollo de Firefox. Epic Citadel utiliza WebGL para representar los gráficos, pero lo que realmente distingue a este trabajo es el gran avance en el rendimiento del motor del juego. El juego utiliza una versión del motor Unreal de Epic que ha sido portado desde su código nativo C++/dependiente del sistema operativo a una implementación basada en navegador, utilizando el compilador Emscripten y asm.js, un nuevo subconjunto optimizado de JavaScript de bajo nivel. Con solo ingresar una URL, los usuarios del navegador web pueden acceder a una experiencia de juego de consola en pantalla completa y bellamente renderizada que se ejecuta a 60 cuadros por segundo (fps), con muy poco tiempo de descarga y sin necesidad de instalación.


Figure 1-2. Epic Citadel demonstration running in Firefox: 60 fps browser gaming powered by WebGL and asm.js; image courtesy Epic Games

Browser Realities
-----------------

As of this writing, 3D feature coverage is not complete across the various browsers. Also, each browser supports a slightly different subset. We will explore these issues in detail in subsequent chapters, but here are the highlights:

Al momento de escribir este artículo, la cobertura de funciones 3D no está completa en los distintos navegadores. Además, cada navegador admite un subconjunto ligeramente diferente. Exploraremos estas cuestiones en detalle en capítulos posteriores, pero aquí están los aspectos más destacados:



    • WebGL is supported in all desktop browsers. Microsoft introduced WebGL support in Internet Explorer version 11 in late 2013. While the implementation lags behind the other desktop browsers, Microsoft will likely catch up quickly.
    • WebGL is supported in nearly all mobile browsers: mobile Chrome (Android), mobile Firefox (Android and Firefox OS), Amazon Silk (Kindle Fire HDX), Intel’s new Tizen operating system, and BlackBerry 10. WebGL is supported in a limited fashion in mobile Safari (in the iAds framework only).
    • CSS 3D transforms are supported in all browsers and mobile platforms. CSS Custom Filters are supported only experimentally in desktop Chrome, Safari, mobile Safari, and BlackBerry 10—not in IE or Firefox.

Clearly, this is not an optimal situation, but it’s the sort of thing that comes with the web application development territory. Cross-browser support has always been notoriously difficult; with the explosion of features in HTML5 and the proliferation of devices and operating systems, it hasn’t gotten any better. The only consolation is that the alternative is far worse: native applications are even harder to build, test, deploy, and port. Oh well… such is the life of a web developer in the 21st century.

Claramente, esta no es una situación óptima, pero es el tipo de cosas que vienen con el territorio de desarrollo de aplicaciones web. La compatibilidad entre navegadores siempre ha sido notoriamente difícil; Con la explosión de funciones en HTML5 y la proliferación de dispositivos y sistemas operativos, la situación no ha mejorado. El único consuelo es que la alternativa es mucho peor: las aplicaciones nativas son aún más difíciles de crear, probar, implementar y portar. Oh, bueno… así es la vida de un desarrollador web en el siglo XXI.


With all these standards, we should be approaching a state where we have to write our code only once. However, as we have become painfully aware, the mantra “write once—run anywhere” has been replaced by the lament “write once—debug everywhere.”

Con todos estos estándares, deberíamos acercarnos a un estado en el que tengamos que escribir nuestro código solo una vez. Sin embargo, como nos hemos dado cuenta dolorosamente, el mantra “escribir una vez, ejecutar en cualquier lugar” ha sido reemplazado por el lamento “escribir una vez, depurar en todas partes”.


3D Graphics Basics
------------------

This section provides a basic introduction to 3D graphics core concepts and terminology. Developers experienced with 2D Canvas drawing and animation may find some of the ideas new. If so, please take time to become familiar with them, as we will use them throughout the book. If you already have experience with 3D and/or OpenGL development, feel free to skip to the next chapter.

What Is 3D?
-----------

Given that you picked up this book, chances are you have at least an informal idea about what I am talking about when I use the term 3D graphics. But to make sure you are clear, we are going to get formal and examine a definition. Here is the Wikipedia entry: 

3D computer graphics (in contrast to 2D computer graphics) are graphics that use a three- dimensional representation of geometric data (often Cartesian) that is stored in the computer for the purposes of performing calculations and rendering 2D images. Such images may be stored for viewing later or displayed in real-time.

Let’s break this down into its components: 1) the data is represented in a 3D coordinate system; 2) it is ultimately drawn (rendered) as a 2D image (for example, on your computer monitor); and 3) it can be displayed in real time: when the 3D data changes as it is being animated or manipulated by the user, the rendered image is updated without a perceivable delay. This last part is key for creating interactive applications. In fact, it is so important that it has spawned a multibillion-dollar industry dedicated to specialized graphics hardware supporting real-time 3D rendering, with several companies you have probably heard of such as NVIDIA, ATI, and Qualcomm leading the charge.

As important as what this definition says is what it doesn’t say: 3D graphics does not require special input hardware like trackballs and joysticks—though those can greatly enhance a 3D experience. Nor does it require custom display hardware: no stereo glasses required, no OmniMax theater tickets as the price of entry. 3D graphics are most commonly rendered on a flat, 2D display. This is not to say that 3D can’t be displayed in stereo and seen with glasses or on a stereo TV—simply that it’s not a requirement.

3D programming requires new skills and knowledge beyond that of the typical web developer. However, armed with a little starter knowledge and the right tools, we can get going fairly quickly. The remainder of this chapter is devoted to understanding basic 3D programming concepts that will be used throughout the book. It is by no means exhaustive—entire books are devoted to learning the subject in detail—but it should be enough to get started. If you already have experience with 3D programming, feel free to move on to Chapter 2.

3D Coordinate Systems
---------------------

If you are familiar with 2D Cartesian coordinate systems such as the window coordinates of an HTML document, you know about x and y values. These 2D coordinates define where <div> tags are located on a page, or where the virtual pen or brush draws in the HTML Canvas element. Similarly, 3D drawing takes place (not surprisingly) in a 3D coordinate system, where the additional coordinate, z, describes depth (i.e., how far into or out of the screen an object is drawn). The coordinate systems we will work with in this book are arranged as depicted in Figure 1-3, with x running horizontally (left to right), y running vertically, and positive z coming out of the screen. If you are already comfortable with the concept of the 2D coordinate system, the transition to a 3D coordinate system should be straightforward.

Note that WebGL defines positive y as going from the bottom to the top of the window, while the 2D Canvas API and CSS transforms define positive y as going down. This is unfortunate, but it reflects the different heritages of the two technologies: WebGL is based on long-lived graphics standards that use the y-up convention, while Canvas and CSS are based on the HTML coordinate y-down convention— itself a descendant of time-worn, window-system coordinate schemes. If you end up working in both technologies on a project, you will have to keep this distinction straight. But it could be worse: z could also be reversed! Fortunately, it’s not.

|Figure 1-3. A 3D coordinate system; Creative Commons Attribution-Share Alike 3.0 unported license

Meshes, Polygons, and Vertices
------------------------------

While there are several ways to draw 3D graphics, by far the most common is to use a mesh. A mesh is an object composed of one or more polygonal shapes, constructed out of vertices (x, y, z triples) defining coordinate positions in 3D space. The polygons most typically used in meshes are triangles (groups of three vertices) and quads (groups of four vertices). 3D meshes are often referred to as models.

Figure 1-4 illustrates a 3D mesh. The dark lines outline the quads that compose the mesh, defining the shape of the face. (You would not see these lines in the final rendered image; they are included for reference.) The x, y, and z components of the mesh’s vertices define the shape only; surface properties of the mesh, such as the color and shading, are defined through additional attributes, as we will discuss shortly.

Figure 1-4. A 3D mesh; Creative Commons Attribution-Share Alike 3.0 unported
license

Materials, Textures, and Lights
-------------------------------

You define the surface of a mesh using additional attributes beyond the x, y, and z vertex positions. Surface attributes can be as simple as a single solid color, or they can be complex, comprising several pieces of information that define, for example, how light reflects off the object or how shiny the object looks. You can also represent surface information using one or more bitmaps, known as texture maps (or simply textures). Textures can define the literal surface look (such as an image printed on a T-shirt), or they can be combined with other textures to achieve sophisticated effects such as bumpiness or iridescence. In most graphics systems, the surface properties of a mesh are referred to collectively as materials. Materials typically rely on the presence of one or more lights, which (as you may have guessed) define how a scene is illuminated.

The head in Figure 1-4 has a material with a purple color and shading defined by a light source emanating from the left of the model. Note the shadows on the right side of the face.

Transforms and Matrices
-----------------------

3D meshes are defined by the positions of their vertices. It would get really tedious to change a mesh’s vertex positions every time you want to move it to a different part of the view, especially if the mesh were continually animating. For this reason, most 3D systems support transforms, operations that allow you to move the mesh by a relative amount without having to loop through every vertex, explicitly changing its position. Transforms allow you to scale, rotate, and translate (move) a rendered mesh without actually changing any values in its vertices.

Figure 1-5 depicts 3D transforms in action. In this scene we see three cubes. Each of these objects is a cube mesh that contains the same values for its vertices. To move, rotate, or scale the mesh, we do not modify the vertices; rather, we apply transforms. The red cube on the left has been translated 4 units to the left (−4 on the x-axis), and rotated about its x- and y-axes. (Note that rotation values are specified in radians—units that will be discussed in more detail in Chapter 4.) The blue cube on the right has been translated 4 units to the right, and scaled to be 1.5 times larger in all three dimensions. The green cube in the center has not been transformed.

Figure 1-5. 3D transforms: translation, rotation, and scale

A 3D transform is typically represented by a transformation matrix, a mathematical entity containing an array of values used to compute the transformed positions of vertices. Most WebGL transforms use a 4×4 matrix—that is, an array of 16 numbers organized into 4 rows and 4 columns. Figure 1-6 shows the layout of a 4×4 matrix. The translation is stored in elements m12, m13, and m14, corresponding to the x, y, and z translation values. x, y, and z scale values are stored in elements m0, m5, and m10 (known as the diagonal of the matrix). Rotation values are stored in the elements m1 and m2 (x- axis), m4 and m6 (y-axis), and m8 and m9 (z-axis). Multiplying a 3D vector by this matrix results in the transformed value.

Figure 1-6. A 4×4 transformation matrix; adapted with permission

If you are a linear algebra geek like I am, you probably feel comfortable with this idea. If not, please don’t break into a cold sweat. The toolkits used to develop the examples in this book allow us to treat matrices like black boxes: we just say translate, rotate, or scale, and the right thing happens.

Cameras, Perspective, Viewports, and Projections
------------------------------------------------

Every rendered scene requires a point of view from which the user will be viewing it. 3D systems typically use a camera, an object that defines where (relative to the scene) the user is positioned and oriented, as well as other real-world camera properties such as the size of the field of view, which defines perspective (i.e., objects farther away appearing smaller). The camera’s properties combine to deliver the final rendered image of a 3D scene into a 2D viewport defined by the window or canvas.

Cameras are almost always represented via a couple of matrices. The first matrix defines the position and orientation of the camera, much like the matrix used for transforms (as just discussed). The second matrix is a specialized one that represents the translation from the 3D coordinates of the camera into the 2D drawing space of the viewport. It is called the projection matrix. I know: more math. But the details of camera matrices are nicely hidden in most tools, so you usually can just point, shoot, and render.

Figure 1-7 depicts the core concepts of the camera, viewport, and projection. At the lower left we see an icon of an eye; this represents the location of the camera. The red vector pointing to the right (in this diagram, labeled as the x-axis) represents the direction in which the camera is pointing. The blue cubes are the objects in the 3D scene. The green and red rectangles are, respectively, the near and far clipping planes. These two planes define the boundaries of a subset of the 3D space, known as the view volume or view frustum. Only objects within the view volume are actually rendered to the screen. The near clipping plane is equivalent to the viewport, where we will see the final rendered image.

Figure 1-7. Camera, viewport, and projection; adapted with permission

Cameras are extremely powerful, as they ultimately define the viewer’s relationship to a 3D scene and provide a sense of realism. They also provide another weapon in the animator’s arsenal: by dynamically moving around the camera, you can create cinematic effects and control the narrative experience.

Shaders
-------

In order to render the final image for a mesh, a developer must define exactly how vertices, transforms, materials, lights, and the camera interact with one another to create that image. The developer does this using shaders. A shader (also known as a programmable shader) is a chunk of program code that implements algorithms to get the pixels for a mesh onto the screen. The graphics hardware understands vertices, textures, and little else; it has no concept of material, light, transform, or camera. Those high-level structures are interpreted by the shader program. Shaders are typically defined in a high-level C-like language and compiled into code that can be used by the graphics- processing unit (GPU).

All modern computers and devices come equipped with a graphics- processing unit, a separate processor from the CPU that is dedicated to rendering 3D graphics. The majority of the 3D programming techniques discussed in this book assume the presence of a GPU.

Shaders put amazing power at the programmer’s fingertips: full control over every pixel, each time the image is rendered. Shaders power the incredible visuals we see in Hollywood special effects, “CG” animated films, and real-time rendering in today’s video games. With shader support now in web browsers, we can get the same production value as a top video game in our WebGL applications, as well as fine control over how CSS elements are presented and animated on a page.

Figure 1-8 shows a WebGL water simulation rendered by a programmable shader. The rippling water and dancing lights are incredibly realistic, and you can interact with the scene while it is simulating, all in real time. Reminder: this is running in a web browser!

Figure 1-8. WebGL water simulation using programmable shaders, by Evan Wallace; reproduced with permission

Shader-based effects aren’t limited to WebGL; they can also be applied to DOM elements through an experimental technology called CSS Custom Filters. We will discuss this feature in Chapter 6.

Here are a few subtle things to note about shaders relative to the technologies we will cover in the book:

    • WebGL and CSS Custom Filters both use shaders defined in the OpenGL ES Shader Language (called GLSL ES). There are some differences between the shaders you write for WebGL versus CSS, but the base languages are identical.
    • WebGL requires the developer to supply shaders in order for objects to be drawn. If no shader is supplied, or there is an error in compiling or loading the shader, nothing will render on the screen.
    • With CSS3 Filters, shaders are optional. When shaders are used with a CSS3 Filter, it is referred to as a custom filter.
    • The 2D Canvas API does not support programmable shaders. If you plan to employ 2D Canvas drawing as a fallback to WebGL rendering, you will need to accommodate for this in your rendering code. More on this in Chapter 7.

Shaders represent a bit of a learning curve, with new concepts, another programming language, and great care required. If you find this daunting, don’t worry. There are many popular open source libraries and tools to choose from that hide the gory details of shaders. You may even be able to get through your entire 3D programming career without ever writing a line of GLSL code—though I recommend you try it anyway, just to be able to say you did.

Those are the basics of 3D graphics. Each of the technologies in the book treats the details a little differently, but the concepts translate fairly well across each technology. In the next several chapters we are going to dive deep into the details of creating and animating 3D content with WebGL, CSS3, and Canvas 2D.


