library(rvest)


library(dplyr)
library(stringr)

url <- "https://www.timeanddate.com/weather/india/kolkata/ext"

webpage <- read_html(url)

weather_table <- webpage %>%
  html_node("table") %>%
  html_table(fill = TRUE)

weather_data <- weather_table[,1:4]

colnames(weather_data) <- c("Date","Day","Temperature","Weather")

humidity <- webpage %>%
  html_nodes(xpath = "//td[contains(text(),'%')]") %>%
  html_text()

weather_data$Humidity <- humidity[1:nrow(weather_data)]

weather_data$Temperature <- str_replace_all(weather_data$Temperature, "°F", "")

print(weather_data)

write.csv(weather_data,"kolkata_weather_data.csv",row.names = FALSE)