#Write a for loop to print whether each number from 1 to 15 is "even" or "odd".

# for (i in 1:15) {
#   if (i %% 2 == 0) {
#     cat(i, "is even\n")
#   }else{
#     cat(i,"is odd\n")
#   }
# }


my_list <- list(
  numbers = c(1, 2, 3),
  letters = c("a", "b"),
  nested_list = list(x = 10, y = 20)
)

unlisted_vector <- unlist(my_list)
print(unlisted_vector)