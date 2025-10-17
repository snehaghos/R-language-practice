fact <- function(n) {
  if (n == 0 || n == 1)
    return(1)
  else
    return(n * fact(n - 1))
}

userin<-as.integer(readline("Enter a number: "))
res<-fact(userin)
cat("fact is: ",res)
