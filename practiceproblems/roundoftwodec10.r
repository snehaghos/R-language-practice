#Generate a vector of 10 random numbers between 1 and 100 using runif() and round them to 2 decimal places.44

set.seed(123)
vec <- round(runif(5, 1, 100), 2)
print(vec)

