# 2520 is the smallest number that can be divided by each 
# of the numbers from 1 to 10 without any remainder.
# 
# What is the smallest positive number that is 
# evenly divisible by all of the numbers from 1 to 20?

install.packages("vecsets")
library(vecsets)

smallestNumberEvenlyDivisibleBy1ToN <- function(N) {
    tmp <- 1
    for(i in 2:N) tmp <- vunion(tmp, primeFactors(i))
    return(prod(tmp))
}

smallestNumberEvenlyDivisibleBy1ToN(20)
