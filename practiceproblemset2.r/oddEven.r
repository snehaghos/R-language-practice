#Function to Check Even or Odd
oddEven<-function(x){
    if(x%%2==0){
        return("Even")
    }else{
        return("Odd")
    }
}
a<-as.integer(readline("Enter a number to check if it's odd or even: "))
res<-oddEven(a)
cat("The number is:",res)