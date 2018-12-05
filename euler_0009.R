# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
# 
# a2 + b2 = c2
# For example, 32 + 42 = 9 + 16 = 25 = 52.
# 
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

# Little bit of math added:
# c < 50
# a + b > 50

for (i in 1:1000) {
    for (j in 1:(1000-i)) {
         count <- count + 1
         a <- i
         b <- j
         c <- 1000 -a - b
         if((a^2 + b^2 == c^2) && (a > b)) {
             print(a)
             print(b)
             print(c)
             result <- a*b*c
             print(result)
         }
    }
}

