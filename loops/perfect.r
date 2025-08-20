# WAP to check if a number is perfect or not
a <- as.integer(readline("Enter a number: "))

sum <- 0
n <- 1

while (n < a) {
  if (a %% n == 0) {  
    sum <- sum + n    
  }
  n <- n + 1
}

if (sum == a) {
  cat(a, "is a perfect number\n")
} else {
  cat(a, "is not a perfect number\n")
}
