#10. Write an R program to compute the monthly gas bill using the rules:
#Gas consumed (therms) = (Current Reading − Previous Reading) × 1.375
#Charges:


curr<-as.integer(readline("Enter current reading: "))
prev<-as.integer(readline("Enter previous reading: "))

gas_consumed <- (curr - prev) * 1.375
bill <- 0

if(gas_consumed <= 120){
    bill = gas_consumed * 6.75
}else if(gas_consumed <= 225){
    bill = (120 * 6.75) + ((gas_consumed - 120) * 8.75)
}else{
    bill = (120 * 6.75) + (105 * 8.75) + ((gas_consumed - 225) * 11)
}

bill = bill + 125
print(paste("Total bill is : ", bill))
