#Using loops and if-else, compute and print whether numbers from 1 to 20 are divisible by 2, 3, or none.

num=1
while(num <= 20) {
    if (num %% 3 == 0) {
        cat(num, "is divisible by 3.\n")
    } else if (num %% 2 == 0) {
        cat(num, "is divisible by 2.\n")
    } else {
        cat(num, "is not divisible by 2 or 3.\n")
    }
    num <- num + 1
}