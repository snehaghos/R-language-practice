library(rvest)
library(xml2)


url <- "https://www.worldometers.info/world-population/"


page <- read_html(url)

table <- page %>%
  html_node("table") %>%    
  html_table(fill = TRUE)
df <- as.data.frame(table)

print(head(df))