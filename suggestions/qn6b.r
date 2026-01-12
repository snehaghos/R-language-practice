gcd<-function(n,m){
    while(m != 0){
        r<-n %% m
        n<-m
        m<-r
    }
    return(n)
}
a<-as.numeric(readline("Enter first number: "))
b<-as.numeric(readline("Enter second number: "))
res<-gcd(a,b)
cat("Gcd is : ",res)