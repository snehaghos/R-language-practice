n <- as.integer(readline("Enter a number: "))
s <- 0
t <- n

while (t > 0) {
  d <- t %% 10
  s <- s + d
  t <- t %/% 10
}

cat("Sum of digits =", s)
