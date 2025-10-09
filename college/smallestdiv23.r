n <- as.integer(readline("Enter a number: "))
d <- 2

while (n %% d!= 0) {
  d <- d + 1
}

cat("Smallest divisor greater than 1 is", d)

