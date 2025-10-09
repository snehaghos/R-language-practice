cat("prime numbers between 1 and 100:")
for (n in 2:100) {
  f <- 0
  for (i in 2:(n-1)) {
    if (n %% i == 0) {
      f <- 1
      break
    }
  }
  if (f == 0) {
    cat(n, " ")
  }
}

