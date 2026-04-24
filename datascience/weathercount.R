library(rvest)
library(dplyr)
library(stringr)

url <- "https://www.timeanddate.com/weather/india/kolkata/ext"

webpage <- read_html(url)

weather_table <- webpage %>%
  html_node("table") %>%
  html_table(fill = TRUE)

weather_data <- weather_table[,c(1,4)]
colnames(weather_data) <- c("Date","Weather")


day <- str_extract(weather_data$Date, "\\d+")

month <- "March"


result <- paste(month, day, weather_data$Weather)


print(result)
sunny_days  <- sum(str_detect(weather_data$Weather, "Sunny"))
rainy_days  <- sum(str_detect(weather_data$Weather, "Rain|shower|storm"))
cloudy_days <- sum(str_detect(weather_data$Weather, "Cloud|Overcast"))

cat("Number of Sunny days :", sunny_days, "\n")
cat("Number of Rainy days :", rainy_days, "\n")
cat("Number of Cloudy days :", cloudy_days, "\n")