An-Introduction-to-Generalized-Linear-Models-4e
===============================================

1 Introduction

1.1 Background

1.2 Scope

1.3 Notation

1.4 Distributions related to the Normal distribution

1.4.1 Normal distributions

1.4.2 Chi-squared distribution

1.4.3 t-distribution

1.4.4 F-distribution

1.4.5 Some relationships between distributions

1.5 Quadratic forms

1.6 Estimation

1.6.1 Maximum likelihood estimation

1.6.2 Example: Poisson distribution

1.6.3 Least squares estimation

1.6.4 Comments on estimation

1.6.5 Example: Tropical cyclones

1.7 Exercises1


2 Model Fitting

2.1 Introduction

2.2 Examples

2.2.1 Chronic medical conditions

2.2.2 Example: Birthweight and gestational age



2.3 Some principles of statistical modelling

2.3.1 Exploratory data analysis

2.3.2 Model formulation

2.3.3 Parameter estimation21

2.3.4 Residuals and model checking

2.3.5 Inference and interpretation

2.3.6 Further reading



2.4 Notation and coding for explanatory variables

2.4.1 Example: Means for two groups

2.4.2 Example: Simple linear regression for two groups

2.4.3 Example: Alternative formulations for comparing the means of two groups

2.4.4 Example: Ordinal explanatory variables

Exercises



3 Exponential Family and Generalized Linear Models

3.1 Introduction

3.2 Exponential family of distributions

3.2.1 Poisson distribution

3.2.2 Normal distribution

3.2.3 Binomial distribution

3.3 Properties of distributions in the exponential family

3.4 Generalized linear models

3.5 Examples

3.5.1 Normal linear model

3.5.2 Historical linguistics

3.5.3 Mortality rates

3.6 Exercises



4 Estimation

4.1 Introduction

4.2 Example: Failure times for pressure vessels

4.3 Maximum likelihood estimation

4.4 Poisson regression example

4.5 Exercises



5 Inference

5.1 Introduction

5.2 Sampling distribution for score statistics

5.2.1 Example: Score statistic for the Normal distribution

5.2.2 Example: Score statistic for the Binomial distribution

5.3 Taylor series approximations

5.4 Sampling distribution for maximum likelihood estimators

5.4.1Example: Maximum likelihood estimators for the Normal linear model

5.5 Log-likelihood ratio statistic 



5.6 Sampling distribution for the deviance

5.6.1 Example: Deviance for a Binomial model

5.6.2 Example: Deviance for a Normal linear model

5.6.3 Example: Deviance for a Poisson model 



5.7 Hypothesis testing

5.7.1 Example: Hypothesis testing for a Normal linear model

5.8 Exercises



6 Normal Linear Models

6.1 Introduction

6.2 Basic results

6.2.1 Maximum likelihood estimation

6.2.2 Least squares estimation

6.2.3 Deviance

6.2.4 Hypothesis testing

6.2.5 Orthogonality

6.2.6 Residuals

6.2.7 Other diagnostics

6.3 Multiple linear regression

6.3.1 Example: Carbohydrate diet

6.3.2 Coefficient of determination, R2

6.3.3 Model selection

6.3.4 Collinearity

6.4 Analysis of variance

6.4.1 One-factor analysis of variance

6.4.2 Two-factor analysis of variance

6.5 Analysis of covariance

6.6 General linear models

6.7 Non-linear associations

6.7.1 PLOS Medicine journal data

6.8 Fractional polynomials

6.9 Exercises



7 Binary Variables and Logistic Regression

7.1 Probability distributions

7.2 Generalized linear models

7.3 Dose response models

7.3.1 Example: Beetle mortality

7.4 General logistic regression model

7.4.1 Example: Embryogenic anthers

7.5 Goodness of fit statistics

7.6 Residuals

7.7 Other diagnostics

7.8 Example: Senility and WAIS

7.9 Odds ratios and prevalence ratios

7.10 Exercises



8 Nominal and Ordinal Logistic Regression

8.1 Introduction

8.2 Multinomial distribution

8.3 Nominal logistic regression

8.3.1 Example: Car preferences

8.4 Ordinal logistic regression

8.4.1 Cumulative logit model

8.4.2 Proportional odds model

8.4.3 Adjacent categories logit model

8.4.4 Continuation ratio logit model

8.4.5 Comments

8.4.6 Example: Car preferences

8.5 General comments

8.6 Exercises179



9 Poisson Regression and Log-Linear Models

9.1 Introduction

9.2 Poisson regression

9.2.1 Example of Poisson regression: British doctors’ smoking and coronary death

9.3 Examples of contingency tables

9.3.1 Example: Cross-sectional study of malignant melanoma

9.3.2 Example: Randomized controlled trial of influenza vaccine

9.3.3 Example: Case–control study of gastric and duodenal ulcers and aspirin use

9.4 Probability models for contingency tables

9.4.1 Poisson model

9.4.2 Multinomial model

9.4.3 Product multinomial models



9.5 Log-linear models

9.6 Inference for log-linear models 

9.7 Numerical examples

9.7.1 Cross-sectional study of malignant melanoma

9.7.2 Case–control study of gastric and duodenal ulcer and aspirin use

9.8 Remarks

9.9 Exercises



10 Survival Analysis

10.1 Introduction

10.2 Survivor functions and hazard functions

10.2.1 Exponential distribution

10.2.2 Proportional hazards models

10.2.3 Weibull distribution

10.3 Empirical survivor function

10.3.1 Example: Remission times

10.4 Estimation

10.4.1 Example: Exponential model

10.4.2 Example: Weibull model

10.5 Inference

10.6 Model checking

10.7 Example: Remission times

10.8 Exercises



11 Clustered and Longitudinal Data

11.1 Introduction

11.2 Example: Recovery from stroke

11.3 Repeated measures models for Normal data

11.4 Repeated measures models for non-Normal data

11.5 Multilevel models

11.6 Stroke example continued

11.7 Comments

11.8 Exercises



12 Bayesian Analysis

12.1 Frequentist and Bayesian paradigms

12.1.1 Alternative definitions of p-values and confidence intervals

12.1.2 Bayes’ equation

12.1.3 Parameter space

12.1.4 Example: Schistosoma japonicum

12.2 Priors

12.2.1 Informative priors

12.2.2 Example: Sceptical prior

12.2.3 Example: Overdoses amongst released prisoners

12.3 Distributions and hierarchies in Bayesian analysis

12.4 WinBUGS software for Bayesian analysis

12.5 Exercises



13 Markov Chain Monte Carlo Methods

13.1 Why standard inference fails

13.2 Monte Carlo integration

13.3 Markov chains

13.3.1 The Metropolis–Hastings sampler

13.3.2 The Gibbs sampler

13.3.3 Comparing a Markov chain to classical maximum likelihood estimation

13.3.4 Importance of parameterization

13.4 Bayesian inference

13.5 Diagnostics of chain convergence

13.5.1 Chain history

13.5.2 Chain autocorrelation

13.5.3 Multiple chains

13.6 Bayesian model fit: the deviance information criterion

13.7 Exercises



14 Example Bayesian Analyses

14.1 Introduction

14.2 Binary variables and logistic regression

14.2.1 Prevalence ratios for logistic regression

14.3 Nominal logistic regression

14.4 Latent variable model

14.5 Survival analysis

14.6 Random effects

14.7 Longitudinal data analysis

14.8 Bayesian model averaging

14.8.1 Example: Stroke recovery

14.8.2 Example: PLOS Medicine journal data

14.9 Some practical tips for WinBUGS

14.10 Exercises


Postface

Appendix

Software

References

Index


