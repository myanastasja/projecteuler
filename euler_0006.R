# The sum of the squares of the first ten natural numbers is,
# 12 + 22 + ... + 102 = 385
# 
# The square of the sum of the first ten natural numbers is,
# (1 + 2 + ... + 10)2 = 552 = 3025
# 
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
# 
# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

squareOfSum1ToN <- function(N) {
    x <- c(1:N)
    y <- sum(x)
    z <- y^2
    return(z)
}
    
squareOfSum1ToN(100)

sumOfSquares1ToN <- function(N) {
    x <- c(1:N)
    y <- x^2
    z <- sum(y)
    return(z)
}

sumOfSquares1ToN(100)

squareOfSum1ToN(100) - sumOfSquares1ToN(100)
