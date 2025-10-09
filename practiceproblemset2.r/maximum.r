#Function to Find Maximum

maximum<-function(x,y,z){
    if(x>=y & x>=z){
        return(x)
    }else if(y>=x & y>=z){
        return(y)
    }else{
        return(z)
    }
}
a<-as.integer(readline("Enter first number: "))
b<-as.integer(readline("Enter second number: "))
c<-as.integer(readline("Enter third number: "))
res<-maximum(a,b,c)
cat("The maximum number is:",res)