#Repeat Loop for Counting Up

count_up <- function() {
  i <- 1
  repeat {
    print(i)
    i <- i + 1
    if (i > 5) break
  }
}

count_up()