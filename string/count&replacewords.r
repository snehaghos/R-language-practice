#5. Program to Replace Specific Words and Count Replacements

# Question:
# Write an R program that:

# Takes a paragraph as input.

# Asks the user to enter a word to replace and the new word.

# Replaces all occurrences of that word (case-insensitive).

# Displays the modified paragraph and the number of replacements done.



# small-vars R program: replace all occurrences (case-insensitive) and count them
p <- readline(prompt = "Enter paragraph: ")
o <- readline(prompt = "Word to replace: ")
n <- readline(prompt = "New word: ")

if (nchar(o) == 0) {
  cat("No word to replace provided.\n")
} else {
 
  esc <- function(s) gsub("([][{}()\\^$.*+?|\\\\])", "\\\\\\1", s)
  pat <- paste0("\\b", esc(o), "\\b")
  
  m <- gregexpr(pat, p, perl = TRUE, ignore.case = TRUE)
  matches <- regmatches(p, m)
  cnt <- length(unlist(matches))

  
  p2 <- gsub(pat, n, p, perl = TRUE, ignore.case = TRUE)
  
  cat("\nModified paragraph:\n")
  cat(p2, "\n\n")
  cat("Replacements:", cnt, "\n")
}

