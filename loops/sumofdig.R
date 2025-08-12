#Write an R loop to sum all the digits of a given integer until the sum is a single digit.
sod <- function(num) {
  num <- abs(num) 
  
  while (num > 9) {  
    sum_digits <- 0
    temp <- num
    
    while (temp > 0) {
      sum_digits <- sum_digits + temp %% 10  
      temp <- temp %/% 10                    
    }
    
    num <- sum_digits  
  }
  
  return(num)
}
input_number <- as.integer(readline("Enter an integer to sum its digits until a single digit is obtained: "))
result <- sod(input_number)
cat("The single-digit sum of", input_number, "is", result, "\n")