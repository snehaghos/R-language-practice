isPrime <- function(n) {
  if (n <= 1) return(FALSE)
  for (i in 2:(n - 1)) {
    if (n %% i == 0)
      return(FALSE)
      
  }
  return(TRUE)
}

userin<-as.integer(readline("Enter a number: "))
res<-isPrime(userin)
cat("the number is a prime: ",res)
