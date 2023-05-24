# Independence, expectations and the moment generating function

## Independent random variables

> Recall that two events,  $A$
>  and  $B$
> , are independent if,
> 
> $$P [A \cap B] = P[A] P[B].$$
> 
> Since the conditional probability of  $A$
>  given  $B$
>  is defined by:
> 
> $$P [A|B] = \frac {P [A \cap B]} {P[B]}.$$
> 
> We see that  $A$
>  and  $B$
>  are independent if and only if
> 
> $$P[A|B] = P[A] \quad (\text{when }  P [B] > 0 ).$$
> 
> Two continuous random variables,  $X$
>  and  $Y$
> , are similarly independent
> if,
> 
> $$P [X \in A, Y \in B] = P [X \in A] P[Y \in B].$$
> 

### Details

Two continuous random variables,  $X$
 and  $Y$
, are similarly independent
if,

$$P [X \in A, Y \in B] = P [X \in A] P[Y \in B]$$

Now suppose  $X$
 has p.d.f.  $f_X$
 and  $Y$
 has p.d.f.  $f_Y$
. Then,

$$P [X \in A] = \int_{A} f_X (x) dx,$$



$$P [Y \in B] = \int_{B} f_Y (y) dy.$$

So  $X$
 and  $Y$
 are independent if:

$$P [X \in , Y \in B] = \int_{A} f_X (x) dx \int_{B} f_Y (y) dy$$



$$= \int_{A}f_X (x) (\int_{B} f_Y (y) dy) dx.$$



$$= \int_{A}\int_{B} f_X (x)f_Y (y) dydx.$$

But, if  $f$
 is the joint density of  $X$
 and  $Y$
 then we know that

$$P [X \in A, Y \in B]$$



$$\int_{A}\int_{B} f (x,y) dydx.$$

Hence  $X$
 and  $Y$
 are independent if and only if we can write the joint
density in the form of,

$$f(x ,y) = f_X (x)f_Y (y).$$

## Independence and expected values

> If  $X$
>  and  $Y$
>  are independent random variables then  $E[XY]=E[X]E[Y]$
> .\
> Further, if  $X$
>  and  $Y$
>  are independent random variables then
>  $E[g(X)h(Y)]=E[g(X)]E[h(Y)]$
>  is true if  $g$
>  and  $h$
>  are functions in
> which expectations exist.

### Details

If  $X$
 and  $Y$
 are random variables with a joint distribution function
 $f(x,y)$
, then it is true that for  $h:\mathbb{R}^2\to\mathbb{R}$
 we have

$$E[h(X,Y)]=\int\int h(x,y)f(x,y)dxdy$$

for those  $h$
 such that the integral on the right exists.\
Suppose  $X$
 and  $Y$
 are independent continuous r.v., then

$$f(x,y) = f_X (x) f_Y (y)$$

Thus, 

$$E[XY] = \int\int xy f (x,y) dxdy$$



$$= \int\int xy f_X (x) f_Y (y) dxdy$$



$$= \int xf_X (x) dx \int yf_Y (y) dy$$



$$= E [X] E [Y].$$

> **Note**:  
> 
> *Note 35*. Note that if  $X$
>  and  $Y$
>  are independent then
>  $E[h(X) g(Y)] = E [h(X)] E[g(Y)]$
>  is true whenever the functions  $h$
>  and
>  $g$
>  have expected values.

### Examples

> **Example**:  
> 
> Suppose  $X,Y \in U (0,2)$
>  are i.i.d then,
> 
> $$f_X (x) = 
> \begin{cases}
>   \frac{1}{2} & \text{if } 0 \leq x \leq 2 \\
>   0 & \text{otherwise}
> \end{cases}.$$
> 
> and similarly for  $f_Y$
> .
> 
> Next, note that, 
> 
> $$f(x,y) =  f_X (x) f_Y (y) = 
> \begin{cases}
>   \frac{1}{4} &\text{if } 0 \leq x,y \leq 2\\
>   0 & \text{otherwise}
> \end{cases}.$$
> 
> Also note that  $f(x,y) \geq 0$
>  for all  $(x,y) \in \mathbb{R}^2$
>  and
> 
> $$\int\int  f(x,y)dxdy = \int_{0}^{2}\int_{0}^{2} \frac {1}{4} dxdy =  \frac {1}{4}.4 = 1$$
> 
> It follows that
> 
> > E \[X Y\] &= \_-\^\_-\^ f(x,y) xy dxdy\
> > &= \_y=0\^2\_x=0\^2 xy dxdy\
> > &= \_y=0\^2 y (\_x=0\^2 x dx) dy\
> > &= \_y=0\^2 y \_x=0\^2 dy\
> > &= \_y=0\^2 y ( \^2 - \^2 ) dy\
> > &= \_0\^2 y dy\
> > &= \_0\^2 y dy\
> > &= y\^2 \| \_0\^2\
> > &= \^2\
> > &= 1,
> 
> but
> 
> $$E [X] = E[Y] = \int_{y=0}^{2} x \frac {1}{2} dx = 1,$$
> 
> so
> 
> $$E[XY] = E [X] E[Y].$$
> 

## Independence and the covariance

> If  $X$
>  and  $Y$
>  are independent then  $Cov(X,Y)=0$
> .\
> In fact, if  $X$
>  and  $Y$
>  are independent then  $Cov(h(X),g(Y))=0$
>  for any
> functions  $g$
>  and  $h$
>  in which expected values exist.

## The moment generating function

> If  $X$
>  is a random variable we define the moment generating function
> when  $t$
>  exists as:  $M(t):=E[e^{tX}]$
> .

### Examples

> **Example**:  
> 
> If  $X\sim Bin(n,p)$
>  then
>  $M(t)=\displaystyle\sum_{x=0}^{n} e^{tx}p(x) = \displaystyle\sum_{x=0}^{n} e^{tx} \binom{n}{x}p\cdot (1-p)^{n-x}$
> 

## Moments and the moment generating function

> If  $M_{X}(t)$
>  is the moment generating function (mgf) of  $X$
> , then
>  $M_{X}^{(n)}(0)=E[X^n]$
> .

### Details

Observe that
 $M(t)=E[e^{tX}]=E[1+X+\frac{(tX)^2}{2!}+\frac{(tX)^3}{3!}+\dots]$
 since
 $e^a=1+a+\frac{a^2}{2!}+\frac{a^3}{3!}+\dots$
. If the random variable
 $e^{|tX|}$
 has a finite expected value then we can switch the sum and
the expected valued to obtain:

$$M(t)=E\left[\sum_{n=0}^{\infty}\frac{(tX)^n}{n!}\right]=\sum_{n=0}^{\infty}\frac{E[(tX)^n]}{n!}=\sum_{n=0}^{\infty}t^n\frac{E[X^n]}{n!}$$

This implies that the  $n^{th}$
 derivative of  $M(t)$
 evaluated at  $t=0$

is exactly  $E[X^n]$


## The moment generating function of a sum of random variables

>  $M_{X+Y}(t)=M_{X}(t)\cdot M_{Y}(t)$
>  if  $X$
>  and  $Y$
>  are independent.

### Details

Let  $X$
 and  $Y$
 be independent random vaiables, then

$$M_{X+Y}(t)=E[e^{Xt+Yt}]=E[e^{Xt}e^{Xt}]=E[e^{Xt}]E[e^{Xt}]=M_{X}(t)M_{Y}(t)$$

## Uniqueness of the moment generating function

> Moment generating functions (m.g.f.) uniquely determine the probability
> distribution function for random variables. Thus, if two random
> variables have the same m.g.f, then they must also have the same
> distribution.
