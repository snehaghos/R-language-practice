
pal <- function(s){
  l <- nchar(s)
  r <- ""
  for(i in l:1){
    r <- paste0(r, substr(s, i, i))
  }
  if(s == r)
    cat("Palindrome")
  else
    cat("not")
}

s <-readline(prompt="Enter a string: ")
pal(s)
