#Access the second element of the "values" component from the list created in Q3 using both $ and [[]] notation
my_list <- list(
  fruits = c("apple", "banana"),
  values = c(1.5, 2.7, 3.2),
  matrix = matrix(sample(1:10, 4, replace=TRUE), nrow=2, ncol=2 )
)
second_value_dollar <- my_list$values[2]
second_value_double_bracket <- my_list[["values"]][2]
print(second_value_dollar)
print(second_value_double_bracket)
