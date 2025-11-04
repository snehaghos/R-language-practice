para <- readline("Enter a paragraph: ")

clean <- tolower(gsub("[[:punct:]]", "", para))
words <- strsplit(clean, "\\s+")[[1]]
freq <- table(words)

print(freq)
