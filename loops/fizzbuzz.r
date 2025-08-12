#Create a for loop that prints "Fizz" if the number is divisible by 3, "Buzz" if divisible by 5, and "FizzBuzz" if divisible by both, for numbers 1 to 30.

for(i in 1:30){
    if(i %% 3 == 0 && i %% 5 == 0) {
        cat(i, "FizzBuzz\n")
    } else if(i %% 3 == 0) {
        cat(i, "Fizz\n")
    } else if(i %% 5 == 0) {
        cat(i, "Buzz\n")
    } 
}