#Write a script to count and print how many positive, negative, and zero values are in a vector.
vec <- c(-5, 3, 0, 7, -2, 0, 4, -1)
p <- 0
n <- 0
z <- 0 
for (val in vec) {
    if (val > 0) {
        p <- p + 1
    } else if (val < 0) {
        n <- n + 1
    } else {
        z <- z + 1
    }
}
cat("p values:", p, "\n")
cat("n values:", n, "\n")
cat("z values:", z, "\n")

