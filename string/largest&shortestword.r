str <- readline("Enter a sentence: ")
words <- strsplit(str, "\\s+")[[1]]
lengths <- nchar(words)

longest <- words[which.max(lengths)]
shortest <- words[which.min(lengths)]

cat("Longest word:", longest, "(", max(lengths), "characters)\n")
cat("Shortest word:", shortest, "(", min(lengths), "characters)\n")
cat("Length of the string:", nchar(str), "characters\n")