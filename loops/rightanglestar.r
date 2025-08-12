#Use nested for loops to print a right-angled triangle pattern with stars (*) of height 5.

for(i in 1:5){
    for(j in 1:i){
        cat("*")
    }
    cat("\n")
}