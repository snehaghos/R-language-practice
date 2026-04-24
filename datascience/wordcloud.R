library(tm)
library(wordcloud)
library(RColorBrewer)


d <- read.csv("C:/Users/Sneha Ghoshal/Downloads/paint_words.csv", stringsAsFactors = FALSE)

c <- Corpus(VectorSource(d$text))

c <- tm_map(c, content_transformer(tolower))
c <- tm_map(c, removePunctuation)
c <- tm_map(c, removeNumbers)
c <- tm_map(c, stripWhitespace)

c <- tm_map(c, removeWords, stopwords("english"))

td <- TermDocumentMatrix(c)
m <- as.matrix(td)

v <- sort(rowSums(m), decreasing = TRUE)

wordcloud(names(v), v,min.freq = 1, max.words = 100, random.order = FALSE,
          colors = brewer.pal(12, "Set3"))
