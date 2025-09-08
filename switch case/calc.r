# Simple calculator using switch and user input
a <- as.numeric(readline("Enter first number: "))
b <- as.numeric(readline("Enter second number: "))
op <- readline("Enter operation (add/sub/mul/div): ")

result <- switch(op,
                 "add" = a + b,
                 "sub" = a - b,
                 "mul" = a * b,
                 "div" = if (b != 0) a / b else "Division by zero!",
                 "Invalid operation")

cat("Result:", result, "\n")
