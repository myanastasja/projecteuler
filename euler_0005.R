# 2520 is the smallest number that can be divided by each 
# of the numbers from 1 to 10 without any remainder.
# 
# What is the smallest positive number that is 
# evenly divisible by all of the numbers from 1 to 20?

smallestNumberEvenlyDivisiblefrom1ToN <- function(N) {
    count <- 0
    sum <- 1
    for(i in 1:N) {
        print(i)
        for(j in 1:i) {
            print(j)
            if(j %% i == 0) count++
        }
        print(sum)
        if(count != 0) sum <- sum*j
        print(sum)
    }
}

1 * 2 * 3 * 
