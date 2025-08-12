repeat {
    num <-readline("Enter exit to exit the loop: ")
    if (num == "exit") {
        cat("exiting the loop.\n")
        break
    } else {
        cat("you hav entered:", num, "\n")
    }
   
}
