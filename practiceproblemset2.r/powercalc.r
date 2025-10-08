power <- function(base, exp) {
  result <- 1
  i <- 1
  repeat {
    result <- result * base
    i <- i + 1
    if (i > exp) break
  }
  return(result)
}
print(power(2, 3))