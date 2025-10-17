gcd <- function(a, b) {
  while (b != 0) {
    t <- b
    b <- a %% b
    a <- t
  }
  return(a)
}

res<-gcd(12,8)
print(res)
