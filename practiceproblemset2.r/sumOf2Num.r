#Repeat Loop for Sum of Numbers

sum_of_2num <- function() {
  a <- as.integer(readline("Enter first number: "))
  b <- as.integer(readline("Enter second number: "))
  sum <- 0
  count <- 1
  repeat {
    sum <- sum + count
    count <- count + 1
    if (count > b) break
  }
  cat("The sum of numbers from", a, "to", b, "is:", sum + a - 1, "\n")
}
sum_of_2num()