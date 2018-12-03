# A palindromic number reads the same both ways. 
# The largest palindrome made from the product of two 
# 2-digit numbers is 9009 = 91 × 99.
# 
# Find the largest palindrome made from the product of 
# two 3-digit numbers.

digitList <- function(x) {
    maxpot <- floor(log10(x))
    # print(maxpot)
    digits <- 0
    for(i in 1:(maxpot+1)) {
        # print(i)
        tmp <- floor((x %% (10^i)) / (10^(i-1)))
        # print(tmp)
        digits <- c(digits, tmp)
        # print(digits)
    }
    return(digits[length(digits):2])
}

# digitList(8394274242)

isPalindrom <- function(x) {
    ltr <- digitList(x)
    rtl <- digitList(x)[length(digitList(x)):1]
    for(i in 1:length(ltr))
        if(ltr[i] != rtl[i]) return(FALSE)
    return(TRUE)
}

# isPalindrom(45654)

maxPalindromAmongProductsOf2NDigitNumbers <- function(N) {
    x <- y <- 10^N-1
    palindrom <- 0
    print(x)
    print(y)
    for(i in x:(10^(N-1))) 
        for(j in x:(10^(N-1)))
            if(isPalindrom(i*j)) palindrom <- c(palindrom, i*j)
    return(max(palindrom))           
}

maxPalindromAmongProductsOf2NDigitNumbers(3)

