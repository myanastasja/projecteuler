# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# 
# Find the sum of all the primes below two million.

# sum = 142091849992, took few hours to process
# correct number is 142913828922 - still searching for error



install.packages("tictoc")
library(tictoc)

sum <- 0
tic("2:100000")
for(i in 2:100000) {
    if(isPrimeNumber(i)) sum <- sum + i
}
toc()
print(sum)

tic("100001:200000")
for(i in 100001:20000) {
    if(isPrimeNumber(i)) sum <- sum + i
}
toc()
print(sum)

tic("200001:300000")
for(i in 200001:300000) {
    if(isPrimeNumber(i)) sum <- sum + i
}
toc()
print(sum)

tic("300001:400000")
for(i in 300001:400000) {
    if(isPrimeNumber(i)) sum <- sum + i
}
toc()
print(sum)

tic("400001:500000")
for(i in 400001:500000) {
    if(isPrimeNumber(i)) sum <- sum + i
}
toc()
print(sum)

tic("500001:600000")
for(i in 500001:600000) {
    if(isPrimeNumber(i)) sum <- sum + i
}
toc()
print(sum)

tic("600001:700000")
for(i in 600001:700000) {
    if(isPrimeNumber(i)) sum <- sum + i
}
toc()
print(sum)

tic("700001:800000")
for(i in 700001:800000) {
    if(isPrimeNumber(i)) sum <- sum + i
}
toc()
print(sum)

tic("800001:900000")
for(i in 800001:900000) {
    if(isPrimeNumber(i)) sum <- sum + i
}
toc()
print(sum)

tic("900001:1000000")
for(i in 900001:1000000) {
    if(isPrimeNumber(i)) sum <- sum + i
}
toc()
print(sum)

tic("1000001:1100000")
for(i in 1000001:1100000) {
    if(isPrimeNumber(i)) sum <- sum + i
}
toc()
print(sum)

tic("1100001:1200000")
for(i in 1100001:1200000) {
    if(isPrimeNumber(i)) sum <- sum + i
}
toc()
print(sum)

tic("1200001:1300000")
for(i in 1200001:1300000) {
    if(isPrimeNumber(i)) sum <- sum + i
}
toc()
print(sum)

tic("1300001:1400000")
for(i in 1300001:1400000) {
    if(isPrimeNumber(i)) sum <- sum + i
}
toc()
print(sum)

tic("1400001:1500000")
for(i in 1400001:1500000) {
    if(isPrimeNumber(i)) sum <- sum + i
}
toc()
print(sum)

tic("1500001:1600000")
for(i in 1500001:1600000) {
    if(isPrimeNumber(i)) sum <- sum + i
}
toc()
print(sum)

tic("1600001:1700000")
for(i in 1600001:1700000) {
    if(isPrimeNumber(i)) sum <- sum + i
}
toc()
print(sum)

tic("1700001:1800000")
for(i in 1700001:1800000) {
    if(isPrimeNumber(i)) sum <- sum + i
}
toc()
print(sum)

tic("1800001:1900000")
for(i in 1800001:1900000) {
    if(isPrimeNumber(i)) sum <- sum + i
}
toc()
print(sum)

tic("1900001:2000000")
for(i in 1900001:2000000) {
    if(isPrimeNumber(i)) sum <- sum + i
}
toc()
print(sum)

#############################


test <- 0
count <- 0
primes <- 0
for(i in 2:200) {
    if(isPrimeNumber(i)) {
        test <- test + i
        count <- count+1
        primes[count] <- i
    }
}


tic("measured")
test <- 0
count <- 0
primes <- 0
for(i in 2:100000) {
    if(isPrimeNumber(i)) {
        # test <- test + i
        count <- count+1
        primes[count] <- i
    }
}
toc()
test
count
primes

sum <- 0
for(i in 1600001:1700000) {
    if(isPrimeNumber(i)) sum <- sum + i
}

