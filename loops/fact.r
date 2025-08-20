num <- as.integer(readline("enter a positive int to calc its fact: "))
fact <- 1
i <- 1
while (i <= num) {
  fact <- fact * i
  i <- i + 1
}
cat("factorial of", num, "is:", fact, "\n")
