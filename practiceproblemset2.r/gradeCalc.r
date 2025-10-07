#Switch for Grade Classification
score<-as.integer(readline("Enter your score: "))
grade<-switch(score,
                score>=90 & score<=100 ~ "A",
                score>=80 & score<=90 ~ "B",
                score>=70 & score<=80 ~ "C",
                score>=60 & score<=70 ~ "D",
                score>=0 & score<=60 ~ "F",
                "Invalid score")
print(paste("Your grade is:", grade))
