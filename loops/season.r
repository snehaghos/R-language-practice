#Use an if-else inside a for loop to categorize months (1–12) as "Winter," "Summer," or "Monsoon" (choose your classification).

months <- 1:12
for (i in months) { 
    if (i %in% c(11,12, 1, 2)) {
        cat("Month", i, ": Winter\n")
    } else if (i %in% c(3, 4, 5,6,9,10)) {
        cat("Month", i, ": Summer\n")
    }else if(i %in% c( 7, 8)) {
        cat("Month", i, ": Monsoon\n")
    } else {
        cat("Month", i, ": month does not exist")
    }
}