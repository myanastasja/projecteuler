isPrimeNumberOpt <- function(x) {
    y <- TRUE
    if(x == 2) return(TRUE)
    if(x == 3) return(TRUE)
    if(x %% 2 == 0) return(FALSE)
    for(i in 3:round(x/2)) {
        if (x %% i == 0) {
            y <- FALSE
            break
        }
    }
    return(y)
}

# 
# isPrimeNumberRecursion <- function(x) {
#     y <- TRUE
#     for (i in ceiling(x/2):2)
#         if (x %% i == 0) {
#             if(isPrimeNumberRecursion(i)) {
#                 y <- FALSE
#                 break
#             }
#         }
#     return(y)
# }