#Simple Function to Calculate Square

sqare<-function(x){
    return(x*x)
}

a<-as.numeric(readline("Enter a number to square it: "))

res<-sqare(a)
cat("the square is :",res)

