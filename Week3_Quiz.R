#Week 3 Quiz

#1
x <- 1
for (i in 1:12)
{
  x <- i * x
}

print (x)

#2##################
balance <- 1500
for (i in 1:6)
{
  balance <- balance * (1 + .0324/12)**(12)
}
print(sprintf("%.2f", balance))

#3
twenty <- c(1:20)
sum <- 0
for (i in twenty)
{
  if (nchar(i / 3) == 1)
  {
    sum <- sum + i
  }
}
print (sum)

#4
sigma <- 0
for (i in 1:10)
{
  sigma <- sigma + 2 ** i
}
print (sigma)

#5
sigma2 <- 0
x <- 1
while (x <= 10)
{
  sigma2 <- sigma2 + 2 ** x
  x <- x + 1
}
print (sigma2)

#6
ten <- c(1:10)
sigma3 <-sum(2 ** ten)
print (sigma3)

#7
byfive <- seq(from=20, to=50, by=5)
print ("byfive <- seq(from=20, to=50, by=5)")

#8
length10 <- rep("example", length(1:10))
print ("length10 <- rep('example', length(1:10))")

#9
quadratic <- function(a, b, c)
{
  plus <- (-b + (b**2 - 4*a*c)**.5) / (2 * a)
  minus <- (-b - (b**2 - 4*a*c)**.5) / (2 * a)
  return (c(plus, minus))
}

#10
mean.this <- function(vector)
{
  x <- mean (vector)
  return (x)
}

#11
mean.this2 <- function(vector)
{
  vector <- vector[vector != NA]
  x <- mean (vector)
  return (x)
}

#12
gcd <- function(num1, num2)
{
  remainder <- 1
  if (num1 > num2)
  {
    x <- num1
    y <- num2
  } else
  {
    y <- num1
    x <- num2
  }
  while (remainder > 0)
    {
      remainder <- x %% y
      x <- y
      y <- remainder
    }
  return (x)
}

#13
funky <- function(x, y)
{
  mathy <- x**2 * y + 2*x*y - x*y**2
  return (mathy)
}