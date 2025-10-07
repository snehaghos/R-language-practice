#12. Write a program to find the factorial of a given number.

num <- as.numeric(readline( "Enter a number: "))
f <- 1
for (i in 1:num) {
    f <- f * i
    }
    
print(f)