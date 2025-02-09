# Miscellanea

## Simple Probabilities In R

R has functions to compute probabilities based on most common distributions

\ If $X$ is a random variable with a known distribution, then R can typically compute values of the cumulative distribution function or:

$$F(x)=P[X \leq x]$$

### Examples

:::info Example

If $X \sim Bin(n,p)$ has binomial distribution, i.e.

$$P(X = x) = {n \choose x}p^x(1-p)^{n-x},$$

then cumulative probabilities can be computed with $\verb|pbinom|$, e.g.

pbinom(5,10,0.5)

gives

$$P[X \leq 5] = 0.623$$

where

$$X \sim Bin(n=10,p= \frac{1}{2}).$$

This can also be computed by hand.
Here we have $n=10$, $p=1/2$ and the probability $P[X \leq 5]$ is obtained by adding up the individual probabilities, $P[X =0]+P[X =1]+P[X =2]+P[X =3]+P[X =4]+P[X =5]$

$$P[X \leq 5] = \sum_{x=0}^5 {10\choose x} \frac{1}{2}^x\frac{1}{2}^{10-x}.$$

This becomes

$$P[X \leq 5] = {10\choose 0} \frac{1}{2}^0\frac{1}{2}^{10-0} +{10\choose 1} \frac{1}{2}^1\frac{1}{2}^{10-1}+{10\choose 1} \frac{1}{2}^2\frac{1}{2}^{10-2}+{10\choose 3} \frac{1}{2}^3\frac{1}{2}^{10-3}+{10\choose 4} \frac{1}{2}^4\frac{1}{2}^{10-4}+{10\choose 5} \frac{1}{2}^5\frac{1}{2}^{10-5}$$

or

$$P[X \leq 5] = {10\choose 0} \frac{1}{2}^{10} +{10\choose 1} \frac{1}{2}^{10}+{10\choose 1} \frac{1}{2}^{10}+{10\choose 3} \frac{1}{2}^{10}+{10\choose 4} \frac{1}{2}^{10}+{10\choose 5} \frac{1}{2}^{10}=\frac{1}{2}^{10} \left(1+10+45+\dots \right).$$

Furthermore,

pbinom(10,10,0.5) [1] 1

and

pbinom(0,10,0.5) [1] 0.0009765625

It is sometimes of interest to compute $P[X=x]$ in this case, and this is given by the $\verb|dbinom|$ function, e.g.

dbinom(1,10,0.5) [1] 0.009765625

or $\frac{10}{1024}$

:::

:::info Example

Suppose $X$ has a uniform distribution between $0$ and $1$, i.e. $X \sim Unf(0,1)$.
Then the $punif$ function will return probabilities of the form

$$P[X \leq x]= \int_{-\infty}^{x} f(t)dt= \int_{0}^{x} f(t)dt$$

where $f(t)=1$ if $0 \leq t \leq 1$ and $f(t)=0$.
For example:

punif(0.75) [1] 0.75

To obtain $P[a \leq X \leq b],$ we use $punif$ twice, e.g.

punif(0.75)-punif(0.25) [1] 0.5

:::

## Computing Normal Probabilities In R

To compute probabilities $X\sim N(\mu,\sigma^2)$ is usually transformed, since we know that

$$Z:=\frac{X-\mu}{\sigma} \sim(0,1)$$

The probabilities can then be computed for either $X$ or $Z$ with the $\verb|pnorm|$ function in R.

### Details

Suppose $X$ has a normal distribution with mean $\mu$ and variance

$$X\sim N(\mu,\sigma^2)$$

then to compute probabilities, $X$ is usually transformed, since we know that

$$Z=\frac{X-\mu}{\sigma} \sim(0,1)$$

and the probabilities can be computed for either $X$ or $Z$ with the $\verb|pnorm|$ function.

### Examples

:::info Example

If $Z \sim N(0,1)$ then we can e.g. obtain $P[Z\leq1.96]$ with

pnorm(1.96) [1] 0.9750021

pnorm(0) [1] 0.5

pnorm(1.96)-pnorm(1.96) [1] 0

pnorm(1.96)-pnorm(-1.96) [1] 0.9500042

The last one gives the area between $-1.96$ and $1.96$.

:::

:::info Example

If $X \sim N(42,3^2)$ then we can compute probabilites either by transforming

$$\begin{aligned} P[X\leq x] &= P\left[\frac{X-\mu}{\sigma} \leq \frac{x-\mu}{\sigma}\right]\\ &= P\left[Z \leq \frac{x-\mu}{\sigma}\right]\end{aligned}$$

and calling $\verb|pnorm|$ with the computed value $z=\frac{x-\mu}{\sigma}$, or call $\verb|pnorm|$ with $x$ and specify $\mu$ and $\sigma$ 

\ To compute $P[X\leq 48]$, either set $z=(48-42)/3=2$ and obtain

pnorm(2) [1] 0.9772499

or specify $\mu$ and $\sigma$

pnorm(42,42,3) [1] 0.5

:::

## Introduction to Hypothesis Testing

### Details

If we have a random sample $x_1, \ldots, x_n$ from a normal distribution, then we consider them to be outcomes of independent random variables $X_1, \ldots, X_n$ where $X_i \sim N(\mu, \sigma^2)$.
Typically, $\mu$ and $\sigma^2$ are unknown but assume for now that $\sigma^2$ is known

Consider the hypothesis:\ $H_0: \mu = \mu_0$ vs. $H_1: \mu > \mu_0$ \ where $\mu_0$ is a specified number

Under the assumption of independence, the sample mean

$$\overline{x} = \frac{1}{n} \sum^n_{i=1}x_i$$

is also an observation from a normal distribution, with mean $\mu$ but a smaller variance.Specifically, $\overline{x}$ is the outcome of

$$\overline{X} = \frac{1}{n} \sum^n_{i=1}X_i$$

and

$$X \sim N(\mu, \frac{ \sigma^2}{n})$$

so the standard deviation of $X$ is $\frac{\sigma}{\sqrt{n}}$, so the appropriate error measure for $\overline{x}$ is $\frac{\sigma}{\sqrt{n}}$, when $\sigma$ is unknown

If $H_0$ is true, then

$$z:= \frac{\overline{x}-\mu_0}{\sigma / \sqrt{n}}$$

is an observation from an $n \sim N (0,1)$ distribution, i.e. an outcome of

$$Z= \frac{\overline{X}-\mu_0}{\sigma / \sqrt{n}}$$

where $Z \sim N(0,1)$ when $H_0$ is correct.
It follows that e.g. $P[\vert Z \vert > 1.96] = 0.05$ and if we observe $\vert Z \vert > 1.96$ then we reject the null hypothesis

Note that the value $z^\ast = 1.96$ is a quantile of the normal distribution and we can obtain other quantiles with the $\verb|pnorm|$

function, e.g. $\verb|pnorm|(0.975)|$ gives $1.96$.
