n <- as.integer(readline("Enter a number: "))
r <- 0
t <- n

while (t > 0) {
  d <- t %% 10
  r <- r * 10 + d
  t <- t %/% 10
}

cat("Reversed number =", r)
