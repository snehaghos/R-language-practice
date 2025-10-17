n <- as.integer(readline("Enter n: "))
i <- 1
s <- 0
repeat {
  s <- s + i
  i <- i + 1
  if (i > n) break
}
cat("Sum =", s)
