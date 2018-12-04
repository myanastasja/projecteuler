# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# 
# What is the 10 001st prime number?

NthPrimeNumber <- function(N) {
    i <- 1
    ind <- 0
    while (ind < N) {
        i = i + 1
        if(isPrimeNumber(i)) {
            ind = ind + 1
            x <- i
        }
    }
    return(x)
}

NthPrimeNumber(10001)

