library(rvest)
library(xml2)

page <- read_html("E:/College/js/imdb.html")

movies <- page %>% html_nodes(".ipc-metadata-list-summary-item")

name <- movies %>%
  html_node(".ipc-title__text") %>%
  html_text()

year <- movies %>%
  html_node(".dli-title-metadata-item:nth-child(1)") %>%
  html_text()

desc <- movies %>%
  html_node(".ipc-html-content-inner-div") %>%
  html_text()

df <- data.frame(
  Movie_Name = name,
  Year = year,
  Description = desc,
  stringsAsFactors = FALSE
)

print(head(df,5))