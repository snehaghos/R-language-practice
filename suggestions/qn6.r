sumFactors<-function(n){
    s<-0
    for(i in 1:n){
        if(n%%i==0)
            s<-s+i
    }
    return(s)
}
num<-as.numeric(readline("Enter number: "))

cat("sum of factors : " ,sumFactors(num))