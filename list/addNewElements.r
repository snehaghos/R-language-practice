#Add a new component to an existing list called "logical_vec" with value c(TRUE, FALSE, TRUE). Use the $ operator.
my_list <- list(
  fruits = c("apple", "banana"),
  values = c(1.5, 2.7, 3.2),
  matrix = matrix(sample(1:10, 4, replace=TRUE), nrow=2, ncol=2 )
)
my_list$logical_vec <- c(TRUE, FALSE, TRUE)
print(my_list)
