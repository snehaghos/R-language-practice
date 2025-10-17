fibSeries <- function(n) {
  a <- 0
  b <- 1
  for (i in 1:n) {
    cat(a, "")
    c <- a + b
    a <- b
    b <- c
  }
}

fibSeries(10)
