#Repeat Loop for Fibonacci Sequence

fibonacci <- function() {
  a <- 0
  b <- 1
  count <- 1
  repeat {
    print(a)
    temp <- a
    a <- b
    b <- temp + b
    count <- count + 1
    if (count > 10) break
  }
}
fibonacci()