findMax <- function(v) {
  m <- v[1]
  for (i in v) {
    if (i > m)
      m <- i
  }
  return(m)
}


res<-findMax(c(4, 9, 2, 7, 5))
print(res)
