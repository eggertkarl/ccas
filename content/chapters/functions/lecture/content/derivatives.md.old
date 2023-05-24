# Derivatives

## The derivative as a limit

> The derivative of the function  $f$
>  at the point  $x$
>  is defined as
> 
> $$\lim_{h \to 0} \frac{f(x+h) - f(x)}{h}$$
> 
> if this limit exists.

### Details

> **Definition**:  
> 
> The derivative of the function  $f$
>  at the point  $x$
>  is defined as
> 
> $$\lim_{h \to 0} \frac{f(x+h) -f(x)}{h}$$
> 
> if this limit exists.

When we write  $y = f(x)$
, we commonly use the notation  $\frac{dy}{dx}$

or  $f'(x)$
 to denote the derivative.

## The derivative of  $f(x)=a+bx$


> If  $f(x) = a + bx$
>  then  $f(x + h) = a+ b(x + h) = a + bx + bh$
>  and thus
> 
> $$\lim_{h \to 0} \frac{f(x+h)-f(x)}{h} = \lim_{h \to 0} \frac{bh}{h}=b$$
> 
> ![Fig. 27](../media/14_2_The_derivative_of.png)

### Details

If  $f(x) = a + bx$
 then  $f(x + h) = a+ b(x + h) = a + bx + bh$
 and thus

$$\lim_{h \to 0} \frac{f(x+h)-f(x)}{h} = \lim_{h \to 0} \frac{bh}{h}=b.$$

Thus  $f'(x)=b$
.

## The derivative of  $f(x)=x^n$


> If  $f(x)=x^n$
> , then  $f'(x)=nx^{n-1}$
> .

### Details

Let  $f(x)=x^n$
, where  $n$
 is a positive integer. To calculate  $f'$
 we
use the binomial theorem in the third step:

$$\begin{aligned}
\frac{f(x+h)-f(x)}{h}&=\frac{(x+h)^n-x^n}{h}\\
&=\frac{\sum_{q=0}^{n-1}\binom{n}{q}x^qh^{n-q}}{h}\\
&=\sum_{q=0}^{n-1}\binom{n}{q}x^qh^{n-q-1}\to\binom{n}{n-1}x^{n-1}=nx^{n-1}\end{aligned}$$

Thus, we obtain  $f'(x)=nx^{n-1}$
.

## The derivative of ln and exp

> If 
> 
> $$f(x)  = e^x$$
> 
>  then 
> 
> $$f'(x) = e^x$$
> 
> If 
> 
> $$g(x) = \ln(x)$$
> 
>  then 
> 
> $$g'(x) = \frac{1}{x}$$
> 

### Details

The derivatives of the exponential function is the exponential function
itself i.e.\
if 

$$f(x)  = e^x$$

 then 

$$f'(x) = e^x$$

The derivatives of the natural logarithm,  $\ln(x)$
, is  $\frac{1}{x}$
,
i.e. if 

$$g(x) = \ln(x)$$

 then 

$$g'(x) = \frac{1}{x}$$

## The derivative of a sum and linear combination

> If  $f$
>  and  $g$
>  are functions then the derivative of  $f+g$
>  is given by
>  $f' + g'$
> .

### Details

Similarly, the derivative of a linear combination is the linear
combination of the derivatives.

If  $f$
 and  $g$
 are functions and  $k(x)=af(x) + bg(x)$
 then
 $k'(x)=af'(x)+ bg'(x)$
.

### Examples

> **Example**:  
> 
> If  $f(x) = 2+3x$
>  and  $g(x)+x^3$
> \
> then we know that\
>  $f'(x)=3$
> ,  $g(x)=3x^2$
>  and if we write 
> 
> $$h(x)=f(x)+g(x)=2+3x+x^3$$
> 
>  then
> 
> $$h'(x)=3+3x^2$$
> 

## The derivative of a polynomial

> The derivative of a polynomial is the sum of the derivatives of the
> terms of the polynomial.

### Details

If

 $p(x)=a_0+a_1x+\dots +a_n x^n$


then

 $p'(x)=a_1+2a_2x+3a_3x^2+4a_4x^3+\dots +na_n x^{(n-1)}$


### Examples

> **Example**:  
> 
> If
> 
>  $p(x)=2x^4+x^3$
> 
> 
> then
> 
>  $p'(x)=2\frac{dx^4}{dx}+\frac{dx^3}{dx}=2 \cdot 4x^3 +3x^2 = 8x^3 +3x^2$
> 

## The derivative of a product

> If 
> 
> $$h(x)=f(x)\cdot g(x)$$
> 
>  then
> 
> $$h'(x)=f'(x)\cdot g(x)+f(x)\cdot g'(x)$$
> 

### Details

Consider two functions,  $f$
 and  $g$
 and their product,  $h$
:

$$h(x)=f(x)\cdot g(x).$$

 The derivative of the product is given by

$$h'(x)=f'(x)\cdot g(x)+f(x)\cdot g'(x).$$

### Examples

> **Example**:  
> 
> Suppose the function  $f$
>  is given by 
> 
> $$f(x)=xe^x+x^2\ln x .$$
> 
>  Then the
> derivative can be computed step by step as 
> 
> $$\begin{aligned}
> f(x)&=&\frac{dx}{dx}e^x+x\frac{de^x}{dx}+\frac{dx^2}{dx}\ln x +x^2\frac{d \ln x}{dx}\\
>     &=&1\cdot e^x +     x \cdot e^x     + 2x \cdot \ln x     + x^2 \cdot \frac{1}{x}\\
>     &=&e^x \left ( 1+x \right ) + 2x \ln  x +x\end{aligned}$$
> 

## Derivatives of composite functions

> If  $f$
>  and  $g$
>  are functions and  $h=f  \circ g$
>  so that\
>  $h(x) = f(g(x))$
>  then\
>  $h'(x) = \frac{dh(x)}{dx} = f'(g(x)) g'(x)$
> 

### Examples

> **Example**:  
> 
> For fixed  $x$
>  consider:
> 
> $$\begin{aligned}
>     f(p) &=& \ln(p^{x} (1-p)^{n-x})\\
>          &=& \ln p^{x} + \ln(1-p)^{n-x}\\
>          &=& x \ln p + (n-x) \ln (1-p)\\
>     \end{aligned}$$
> 
> Then the derivative is computed as follows:
> 
> $$\begin{aligned}
>   f'(p)&=& x \frac{1}{p} + \frac{n-x}{1-p}(-1)\\
>          &=& \frac{x}{p} - \frac{n-x}{1-p}\\
>     \end{aligned}$$
> 

> **Example**:  
> 
> For fixed  $x$
>  and  $y$
>  consider  $f(b) = (y-bx)^2$
> \
> Then the derivative is computed as follows:
> 
> $$\begin{aligned}
>     f'(b)&=& 2 (y-bx) (-x)\\
>          &=& -2x (y-bx)\\
>          &=&(-2xy) + (2x^2)b   
>     \end{aligned}$$
