# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# 
# Find the sum of all the primes below two million.


install.packages("tictoc")
library(tictoc)

tic()
sum <- 2
for(i in 3:2000000) {
    if(isPrimeNumberOpt(i)) sum <- sum + i
}
toc()
print(sum)



