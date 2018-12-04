#The prime factors of 13195 are 5, 7, 13 and 29.

#What is the largest prime factor of the number 600851475143 ?

isPrimeNumber <- function(x) {
    count <- 0
    y <- TRUE
    if(x > 3) {
        for (i in 2:floor(x/2)) {
            if (x %% i == 0) count <- count+1
            # print(i)
            # print(x)
            # print(count)
        }
    if (count != 0) y <- FALSE
    }
    return(y)
}

# for (i in 31:47) {
# if(isPrimeNumber(i)) message(sprintf("%d TRUE", i)) else message(sprintf("%d FALSE", i))
# }

distinctPrimeFactors <- function(x) {
    if (isPrimeNumber(x)) return(x)
    y <- 1
    for (i in 2:floor(x/2)) {
        # print(i)
        if (x %% i == 0 && isPrimeNumber(i)) y <- c(y, i)
    }
    return(y[2:length(y)])
}

# distinctPrimeFactors(13195)

primeFactors <- function(x) {
    if(x==1) return(1)
    y <- distinctPrimeFactors(x)
    for(i in y) {
        pot <- 2
        result <- x/(i^pot)
        while (round(result) == result) {
            y <- c(y, i)
            pot <- pot+1
            result <- x/(i^pot)
        }
    }
    return(sort(y))
}

# primeFactors(13931)
# primeFactors(6857)


