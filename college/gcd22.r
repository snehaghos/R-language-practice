a <- as.integer(readline("Enter first number: "))
b <- as.integer(readline("Enter second number: "))

while (b != 0) {
  t <- b
  b <- a %% b
  a <- t
}

cat("GCD =", a)
