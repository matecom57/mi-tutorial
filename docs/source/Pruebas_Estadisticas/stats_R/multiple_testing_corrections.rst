Multiple testing corrections
============================


Multiple testing corrections are statistical methods used to adjust p-values when multiple hypothesis tests are performed, aiming to control the rate 
of false positives. The goal is to maintain the overall significance level (alpha) when evaluating multiple results. Common corrections include the 
Bonferroni, Holm, and Benjamini-Hochberg methods. 

Elaboration:

Why Correct?

When conducting multiple tests, the probability of at least one false positive result (Type I error) increases. Multiple testing corrections address 
this by adjusting individual p-values to account for the increased chance of false positives. 

Bonferroni Correction:

This is a simple method that divides the significance level (alpha) by the number of tests. For example, if alpha is 0.05 and you are performing 10 
tests, the adjusted alpha for each test would be 0.05/10 = 0.005. 

Holm Correction:

A more powerful correction than Bonferroni, the Holm method controls the family-wise error rate (FWER) by sequentially comparing p-values. 

Benjamini-Hochberg (FDR) Correction:

This method controls the false discovery rate (FDR), which is the expected proportion of false positives among the declared significant results. It's 
generally considered less stringent than Bonferroni, potentially identifying more true positives. 

Other Corrections:

Other methods exist, including the Hochberg correction and the Simes procedure.

When to Correct:

Corrections are particularly important when the number of tests is large or when a single false positive result could have significant consequences. 

Considerations:

The choice of correction method depends on the specific research question, the number of tests, and the desired trade-off between controlling false 
positives and false negatives. 



