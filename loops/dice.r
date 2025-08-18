#Using a while loop, simulate rolling a dice until a 6 appears. Count the number of rolls.taking user input for the number of rolls.

num_rolls <- as.integer(readline("Enter the number of rolls: "))
roll_count <- 0
while (roll_count < num_rolls) {
    roll <- sample(1:6, 1)
    roll_count <- roll_count + 1
    cat("Roll", roll_count, ":", roll, "\n")
    if (roll == 6) {
        cat("A 6 was rolled after", roll_count, "rolls.\n")
        break
    }
}