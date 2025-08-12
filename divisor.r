num <- as.integer(readline("Enter a number: "))
divs <- NULL
for (i in seq(1, num)) {
  if (num %% i == 0) {
    divs <- c(divs, i)
  }
}

cat(" divisors of", num, "are:", divs, "\n")