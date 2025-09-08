# Program to print day of week using number
day_num <- 3

day <- switch(day_num,
              "Sunday",
              "Monday",
              "Tuesday",
              "Wednesday",
              "Thursday",
              "Friday",
              "Saturday")

cat("Day is:", day)
