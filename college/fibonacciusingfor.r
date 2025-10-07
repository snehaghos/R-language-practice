#13. Write a program to generate the Fibonacci sequence up to n terms

n <- as.numeric(readline(" the number of terms: "))
a <- 0
b <- 1
cat("Fibonacci Sequence:\n")
for (i in 1:n) {
    cat(a, "\n")
    c<- a + b
    a <- b
    b <- c
}
