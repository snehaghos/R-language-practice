#Write a while loop that finds the smallest integer greater than 100 whose digits sum up to 10.
num <- 101  

while (TRUE) { 
  digit_sum <- sum(as.integer(unlist(strsplit(as.character(num), ""))))
  
  if (digit_sum == 10) {
    cat("sum up to 10 is:", num, "\n")
    break
  }
  
  num <- num + 1 
}
