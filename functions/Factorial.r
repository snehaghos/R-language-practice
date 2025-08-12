factorial_recursive <- function(n) {
  if (n == 0) {
    return(1)
  } else {
    return(n * factorial_recursive(n - 1))
  }
}
factorial_recursive(5)
