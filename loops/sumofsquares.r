#Write a for loop that computes the sum of squares of numbers 1 to n, where n is user input.
n <- as.integer(readline("Enter a number: "))
soq <- 0
for (i in 1:n) {
    soq <- soq + i^2
}
cat("The sum of squares from 1 to", n, "is:", soq, "\n")
