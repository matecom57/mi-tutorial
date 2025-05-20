wilcox.test {stats}
===================

Realiza pruebas de Wilcoxon de una y dos muestras en vectores de datos; esta última también se conoce como prueba “Mann-Whitney”.

.. code:: R

   ## Default S3 method:
   wilcox.test(x, y = NULL,
            alternative = c("two.sided", "less", "greater"),
            mu = 0, paired = FALSE, exact = NULL, correct = TRUE,
            conf.int = FALSE, conf.level = 0.95,
            tol.root = 1e-4, digits.rank = Inf, ...)

   ## S3 method for class 'formula'
   wilcox.test(formula, data, subset, na.action = na.pass, ...)

Ejemplos:

.. code:: R

   require(graphics)
   ## One-sample test.
   ## Hollander & Wolfe (1973), 29f.
   ## Hamilton depression scale factor measurements in 9 patients with
   ##  mixed anxiety and depression, taken at the first (x) and second
   ##  (y) visit after initiation of a therapy (administration of a
   ##  tranquilizer).
   x <- c(1.83,  0.50,  1.62,  2.48, 1.68, 1.88, 1.55, 3.06, 1.30)
   y <- c(0.878, 0.647, 0.598, 2.05, 1.06, 1.29, 1.06, 3.14, 1.29)
   wilcox.test(x, y, paired = TRUE, alternative = "greater")
   wilcox.test(y - x, alternative = "less")    # The same.
   wilcox.test(y - x, alternative = "less",
            exact = FALSE, correct = FALSE) # H&W large sample
                                            # approximation

   ## Formula interface to one-sample and paired tests

   depression <- data.frame(first = x, second = y, change = y - x)
   wilcox.test(change ~ 1, data = depression)
   wilcox.test(Pair(first, second) ~ 1, data = depression)

   ## Two-sample test.
   ## Hollander & Wolfe (1973), 69f.
   ## Permeability constants of the human chorioamnion (a placental
   ##  membrane) at term (x) and between 12 to 26 weeks gestational
   ##  age (y).  The alternative of interest is greater permeability
   ##  of the human chorioamnion for the term pregnancy.
   x <- c(0.80, 0.83, 1.89, 1.04, 1.45, 1.38, 1.91, 1.64, 0.73, 1.46)
   y <- c(1.15, 0.88, 0.90, 0.74, 1.21)
   wilcox.test(x, y, alternative = "g")        # greater
   wilcox.test(x, y, alternative = "greater",
            exact = FALSE, correct = FALSE) # H&W large sample
                                            # approximation

   wilcox.test(rnorm(10), rnorm(10, 2), conf.int = TRUE)

   ## Formula interface.
   boxplot(Ozone ~ Month, data = airquality)
   wilcox.test(Ozone ~ Month, data = airquality,
            subset = Month %in% c(5, 8))

   ## accuracy in ties determination via 'digits.rank':
   wilcox.test( 4:2,      3:1,     paired=TRUE) # Warning:  cannot compute exact p-value with ties
   wilcox.test((4:2)/10, (3:1)/10, paired=TRUE) # no ties => *no* warning
   wilcox.test((4:2)/10, (3:1)/10, paired=TRUE, digits.rank = 9) # same ties as (4:2, 3:1)


