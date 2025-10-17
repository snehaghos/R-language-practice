n <- as.integer(readline("Enter number: "))
i <- 1
f <- 1
repeat {
  f <- f * i
  i <- i + 1
  if (i > n) break
}
cat("Factorial =", f)
