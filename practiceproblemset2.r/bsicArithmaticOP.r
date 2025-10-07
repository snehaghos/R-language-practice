#Switch for Basic Arithmetic Operations

a<-as.integer(readline("Enter first number: "))
b<-as.integer(readline("Enter second number: "))    
op<-readline("Enter an operator (+, -, *, /): ")
result<-switch(op,
               "+"=a+b,
               "-"=a-b,
               "*"=a*b,
               "/"=a/b,
               "Invalid operator")
cat("The result is:",result)    
