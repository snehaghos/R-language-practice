a <- as.integer(readline("Enter a number: "))
org <- a
result <- 0

while (org != 0) {
  rem <- org %% 10
  result <- result + rem * rem * rem
  org <- org %/% 10
}

if (result == a) {
  cat(a, "is an Armstrong number.\n")
} else {
  cat(a, "is not an Armstrong number.\n")
}
