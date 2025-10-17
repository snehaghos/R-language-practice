repeat {
  n <- as.numeric(readline("Enter a number (negative to stop): "))
  if (n < 0) {
    cat("Stopped.\n")
    break
  } else {
    cat("You entered:", n)
  }
}
