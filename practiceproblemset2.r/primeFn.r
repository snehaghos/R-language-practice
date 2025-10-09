#Function to Check Prime

isPrime<-function(x){
    if (x<=1) return(print("Not a prime"))
    for(i in 2:sqrt(x)){
        if(x%%2==0) return(print("Not a prime"))
    }
    return(print("A prime number"))
}
inp<-as.integer(readline("Enter a number to check  prime : "))
res<-isPrime(inp)

