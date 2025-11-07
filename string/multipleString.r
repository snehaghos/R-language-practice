#Write an R program that displays a menu and performs string operations based on user choice:

# Count vowels
# Reverse string
# Convert to uppercase
# Find length
# Exit
repeat {
  cat("\nString Operations Menu:\n")
  cat("1. Count Vowels\n")
  cat("2. Reverse String\n")
  cat("3. Convert to Uppercase\n")
  cat("4. Find Length of String\n")
  cat("5. Exit\n")
  
  choice <- as.integer(readline(prompt = "Enter your choice (1-5): "))
  
  if (choice == 5) {
    cat("Exiting the program.\n")
    break
  }
  
  str <- readline(prompt = "Enter a string: ")
  
  if (choice == 1) {
    vowels <- gregexpr("[aeiouAEIOU]", str)
    count <- sum(sapply(vowels, function(x) ifelse(x[1] == -1, 0, length(x))))
    cat("Number of vowels in the string:", count, "\n")
    
  } else if (choice == 2) {
    reversed_str <- paste(rev(strsplit(str, NULL)[[1]]), collapse = "")
    cat("Reversed string:", reversed_str, "\n")
    
  } else if (choice == 3) {
    upper_str <- toupper(str)
    cat("Uppercase string:", upper_str, "\n")
    
  } else if (choice == 4) {
    len <- nchar(str)
    cat("Length of the string:", len, "characters\n")
    
  } else {
    cat("Invalid choice. Please select a valid option.\n")
  }
}
