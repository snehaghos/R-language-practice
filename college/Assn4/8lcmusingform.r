lcm <- function(a, b) {
  g <- gcd(a, b)
  return((a * b) / g)
}

res<-lcm(12, 18)
print(res)
