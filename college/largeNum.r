# Find the largest number among three numbers
num1 <- as.numeric(readline(prompt = "Enter first number: "))
num2 <- as.numeric(readline(prompt = "Enter second number: "))
num3 <- as.numeric(readline(prompt = "Enter third number: "))
if (num1 >= num2 & num1 >= num3) {
  print(paste(num1, "is the largest number"))
} else if (num2 >= num1 & num2 >= num3) {
  print(paste(num2, "is the largest number"))
} else {
  print(paste(num3, "is the largest number"))
}