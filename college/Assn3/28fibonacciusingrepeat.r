n <- as.integer(readline("Enter number of terms: "))
a <- 0
b <- 1
i <- 1
repeat {
  cat(a, "")
  c <- a + b
  a <- b
  b <- c
  i <- i + 1
  if (i > n) break
}
