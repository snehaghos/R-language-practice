#14. Write a program to count how many numbers in a vector are greater than 50.
vec <- c(10, 55, 60, 23, 75, 42, 89, 33)
c <- 0
for (i in vec) {
    if (i > 50) {
        c <- c + 1
    }
}
print(c)