gcd <- function(a, b) {
  repeat {
    if (b == 0) break
    temp <- b
    b <- a %% b
    a <- temp
  }
  return(a)
}
res<-gcd(48, 18)
print(res)