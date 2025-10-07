#Basic Switch for Day of Week

a<-readline("Enter a number of a day: ")
day_of_week(a)
    switch(a,
         "1" = "Monday",
         "2" = "Tuesday",
         "3" = "Wednesday",
         "4" = "Thursday",
         "5" = "Friday",
         "6" = "Saturday",
         "7" = "Sunday",
         "Invalid day number")


