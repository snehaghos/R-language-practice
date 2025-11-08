#  Program to Compare Two Strings Without Using Built-in Comparison

# Question:
# Write an R program that takes two strings and checks if they are equal without using the == operator or any direct comparison function.
# You should compare each character manually.
compare_strings <- function(str1, str2) {
  if (nchar(str1) != nchar(str2)) {
    return(FALSE)
  }
  
  for (i in seq_len(nchar(str1))) {
    char1 <- substr(str1, i, i)
    char2 <- substr(str2, i, i)
    
    if (char1 != char2) {
      return(FALSE)
    }
  }
  
  return(TRUE)
}

string1 <- readline("Enter a string:")
string2 <- readline("Enter another string:")

res=compare_strings(string1, string2)
cat("Are the strings equal? ", res, "\n")