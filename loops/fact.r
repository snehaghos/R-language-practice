#Use a while loop to calculate and print the factorial of a user-entered number.

num <- as.integer(readline("Enter a positive integer to calculate its factorial: "))
fact <- 1
i <- 1
while (i <= num) {
  fact <- fact * i
  i <- i + 1
}
cat("factorial of", num, "is:", fact, "\n")
