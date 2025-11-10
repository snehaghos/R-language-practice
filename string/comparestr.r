# take two inputs and compare vowel vs consonant counts
s1 <- readline("Enter first string: ")
s2 <- readline("Enter second string: ")

cnt <- function(x) {
  x <- tolower(x)
  letters <- unlist(strsplit(gsub("[^a-z]", "", x), ""))
  if (length(letters) == 0) return(list(v = 0L, c = 0L))
  v <- sum(letters %in% c("a","e","i","o","u"))
  c <- sum(letters %in% setdiff(letters::letters, c("a","e","i","o","u")))
  list(v = as.integer(v), c = as.integer(c))
}

r1 <- cnt(s1); r2 <- cnt(s2)

cat("First  -> vowels:", r1$v, "consonants:", r1$c, "\n")
cat("Second -> vowels:", r2$v, "consonants:", r2$c, "\n\n")

if (r1$v > r2$v) cat("First has more vowels\n") else if (r1$v < r2$v) cat("Second has more vowels\n") else cat("Vowel counts equal\n")
if (r1$c > r2$c) cat("First has more consonants\n") else if (r1$c < r2$c) cat("Second has more consonants\n") else cat("Consonant counts equal\n")