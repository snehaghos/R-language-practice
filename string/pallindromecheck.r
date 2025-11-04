myinp <- readline("Enter a sentence to check if any palindrome is there: ")
words <- strsplit(myinp, " ")[[1]]

cat("The words in the sentence are:\n")
cat(words, sep = "\n")
pall <- c()

for (word in words) {
  w <- tolower(word)
  if (w == paste(rev(strsplit(w, NULL)[[1]]), collapse = "")) {
    pall <- c(pall, word)
  }
}

if (length(pall) > 0) {
  cat("Palindrome words:", paste(pall, collapse = ", "))
} else {
  cat("No palindrome words found.")
}