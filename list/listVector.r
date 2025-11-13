#Create a list containing:
#A character vector: c("apple", "banana")
#A numeric vector: c(1.5, 2.7, 3.2)
#A 2x2 matrix of random integers
#Name the list elements as "fruits", "values", and "matrix".

fruits <- c("apple", "banana")
values <- c(1.5, 2.7, 3.2)
set.seed(123)
matrix_data <- matrix(sample(1:10, 4, replace=TRUE), nrow=2, ncol=2 )
my_list <- list(fruits = fruits, values = values, matrix = matrix_data)
print(my_list)  
