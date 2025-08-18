#Given a vector of student scores, use a loop and if-else to print "Pass" for scores ≥40 and "Fail" otherwise.

stsc <- c(43,90,74,21,12,34,90,100,98)
for (i in stsc) {
    if (i >= 40) {
        cat("Score", i, ": Pass\n")
    } else {
        cat("Score", i, ": Fail\n")
    }
}