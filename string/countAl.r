#Program to Count Special Characters, Digits, and Alphabets

# Question:
# Write an R program that takes a string containing alphabets, numbers, and special symbols.
# Count and display how many of each type are present.

count_characters <- function(input_string) {
  alphabets <- 0
  digits <- 0
  special <- 0

  for (char in strsplit(input_string, NULL)[[1]]) {
    if (grepl("[a-zA-Z]", char)) {
      alphabets <- alphabets + 1
    } else if (grepl("[0-9]", char)) {
      digits <- digits + 1
    } else {
      special <- special + 1
    }
  }

  cat("Alphabets: ", alphabets, "\n")
  cat("Digits: ", digits, "\n")
  cat("Special Characters: ", special, "\n")
  
}

input_string <- readline("Enter a string:")
count_characters(input_string)
