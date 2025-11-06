# 6. Program to Extract All Unique Words

# Question:
# Write an R program that reads a sentence and extracts all unique words, removing duplicates.
# The output should display:

# The list of unique words in alphabetical order.

# The total count of unique words.

# Hint: Use unique() and sort() functions

input_str <- readline(prompt = "Enter a sentence: ")
words <- unlist(strsplit(input_str, "\\s+"))
unique_words <- unique(tolower(words))
sorted_unique_words <- sort(unique_words)
cat("Unique words in alphabetical order:\n")
print(sorted_unique_words)
cat("Total count of unique words:", length(sorted_unique_words), "\n")
