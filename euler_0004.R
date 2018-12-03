# A palindromic number reads the same both ways. 
# The largest palindrome made from the product of two 
# 2-digit numbers is 9009 = 91 × 99.
# 
# Find the largest palindrome made from the product of 
# two 3-digit numbers.

digitList <- function(x) {
    maxpot <- floor(log10(x))
    digits <- 0
    for(i in 1:(maxpot+1)) {
        tmp <- floor((x %% (10^i)) / (10^(i-1)))
        digits <- c(digits, tmp)
    }
    return(digits[length(digits):2])
}

isPalindrom <- function(x) {
    ltr <- digitList(x)
    rtl <- digitList(x)[length(digitList(x)):1]
    for(i in 1:length(ltr))
        if(ltr[i] != rtl[i]) return(FALSE)
    return(TRUE)
}

maxPalindromAmongProductsOf2NDigitNumbers <- function(N) {
    x <- y <- 10^N-1
    palindrom <- 0
    for(i in x:(10^(N-1))) 
        for(j in x:(10^(N-1)))
            if(isPalindrom(i*j)) palindrom <- c(palindrom, i*j)
    return(max(palindrom))           
}

maxPalindromAmongProductsOf2NDigitNumbers(3)

