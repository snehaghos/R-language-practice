n <- as.integer(readline("Enter a number: "))
t <- n
r <- 0

while (t > 0) {
  d <- t %% 10
  r <- r * 10 + d
  t <- t %/% 10
}

if (n == r) {
  cat("Palindrome")
} else {
  cat("Not palindrome")
}

