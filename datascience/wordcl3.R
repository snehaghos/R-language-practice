library(tm)
library(wordcloud)
library(RColorBrewer)
library(pdftools)

file_path <-"C:\\Users\\Sneha Ghoshal\\Downloads\\sample.pdf"
text_data <- pdf_text(file_path)

corpus <- Corpus(VectorSource(text_data))

corpus <- tm_map(corpus, content_transformer(tolower))     
corpus <- tm_map(corpus, removeNumbers)                      
corpus <- tm_map(corpus, removePunctuation)                 
corpus <- tm_map(corpus, removeWords, stopwords("english")) 
corpus <- tm_map(corpus, stripWhitespace)                   

corpus <- tm_map(corpus, removeWords, c("will", "shall"))

tdm <- TermDocumentMatrix(corpus)

tdm <- removeSparseTerms(tdm, 0.99)

tdm_matrix <- as.matrix(tdm)
word_freq <- rowSums(tdm_matrix)
word_freq <- sort(word_freq, decreasing = TRUE)

word_df <- data.frame(word = names(word_freq), freq = word_freq)

wordcloud(words = word_df$word,
          freq = word_df$freq,
          min.freq = 2,
          max.words = 100,
          random.order = FALSE,
          colors = brewer.pal(8, "Dark2"))
top_words <- head(word_df, 10)

barplot(top_words$freq,
        names.arg = top_words$word,
        col = rainbow(10),
        las = 2,
        main = "Top 10 Most Frequent Words",
        ylab = "Frequency")