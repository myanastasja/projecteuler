#The prime factors of 13195 are 5, 7, 13 and 29.

#What is the largest prime factor of the number 600851475143 ?

isPrimeNumber <- function(x) {
    count <- 0
    y <- TRUE
    for (i in 2:round(x/2))
        if (x %% i == 0) count++
    if (count == 0) y <- FALSE
    return(y)
}

primeFactors <- function (x) {
    if (isPrimeNumber(x)) return(x)
    y <- 1
    for (i in 2: round(x/2)) {
        if (x %% i == 0 && isPrimeNumber(i)) y <- c(y, i)
    }
    return(y)
}

600851475143/7/2/2/5/3/2/5/5/5/5/3/7/54499

primeFactors(143059875)