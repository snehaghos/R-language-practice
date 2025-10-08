#Repeat Loop for Even Numbers
print_evens <- function() {
  i <- 2
  repeat {
    print(i)
    i <- i + 2
    if (i > 20) break
  }
}
print_evens()