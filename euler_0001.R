# Multiple s of 3 and 5
# Problem 1

# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. 
# The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

summultiples <- function(sum, x, y, i=0){
    i = i + 1
    # cat('This is ', i, '. run\n')
    # cat('----------------------\n')
    x <- x
    # cat('x = ', x, '\n')
    if ((i == 1) && (y %% x == 0)) {
        y <- y - x
    } else {
        y <- y - y %% x
    }
    # cat('y = ', y, '\n')
    sum <- sum + y
    # cat('sum = ', sum, '\n\n')
    y <- y - x
    if (y > 0) summultiples(sum, x, y, i) else return(sum)
}
    
result <- summultiples(0, 3, 1000) + summultiples(0, 5, 1000) - summultiples(0, 15, 1000)    
result
    
    
    
