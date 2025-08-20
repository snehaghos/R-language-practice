#Use a for loop to print all numbers between 1 and 100 that are multiples of both 3 and 4.

for(i in 1:100) {
    if (i %% 3 == 0 && i%%4==0) {
        cat(i,"\n")
    }
}