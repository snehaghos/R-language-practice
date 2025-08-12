#Using a loop, check if numbers from 10 to 20 are prime or not, and print the result.

for (num in 10:20) {
  is_prime <- TRUE
  
  if (num <= 1) {
    is_prime <- FALSE
  } else {
    for (i in 2:sqrt(num)) {
      if (num %% i == 0) {
        is_prime <- FALSE
        break
      }
    }
  }
  
  if (is_prime) {
    cat(num, "is a prime number\n")
  } else {
    cat(num, "is not a prime number\n")
  }
}