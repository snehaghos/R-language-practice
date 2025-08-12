# Write an R script using a repeat loop that asks the user to enter a positive number; if negative, keep asking.
repeat {
    num <- as.integer(readline("Enter a positive number: "))
    if (num >= 0) {
        cat("You  have entered a positive number:", num, "\n")
        break
    } else {
        cat("Please enter a positive number.\n")
    }
}
