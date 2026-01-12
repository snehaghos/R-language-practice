des<-readline("Enter designation")
bp<-as.numeric(readline("Enter basic pay: "))
if(des=="Manager" && bp<30000){
    b<-max(0.10*bp,2000)
}else if(des=="Manager"){
    b<-min(0.15*bp,7000)
}else if(des=="Officer" && bp<20000){
    b<-min(max(0.12*bp,2000),5000)
}else{
    b<-0.09*bp
}
cat("Bonus:",b)