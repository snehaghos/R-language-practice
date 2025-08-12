#Use a while loop to find the sum of all numbers less than 50 that are divisible by 7.

sum<-0
i <- 1
while (i <= 51) {
    if (i %% 7 == 0 ) {
        sum <- sum + i
    }
    i <- i + 1
}
cat("The sum of all numbers less than 50 that are divisible by 7 is:", sum, "\n")
