convert_currency <- function(amount, currency) {
  switch(currency,
         "1" = amount * 0.85,  
         "2" = amount * 0.73,  
         "3" = amount * 110.0, 
         "Invalid currency")
}

curr<-as.integer(readline("Enter your choice to print it on (1=EUR, 2=GBP, 3=JPY) : "))
choice<-as.numeric(readline("Enter your choice of money: "))
result<-convert_currency(choice, curr) 
print(result)
