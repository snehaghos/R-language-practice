#9. Write an R program to compute the monthly telephone bill for subscribers using the rules below:

#First 50 calls → Fixed charge Rs.75
#Next 75 calls → Rs.0.75 per call
#Next 90 calls → Rs.0.85 per call
#Remaining calls → Rs.0.95 per call


calls<-as.integer(readline("Enter number of calls: "))
bill<-0
if(calls<=50){
    bill=75
}else if(calls<=125){
    bill=75+(calls-50)*0.75
}else if(calls<=215){
    bill=75+(75*0.75)+(calls-125)*0.85
}else{
    bill=75+(75*0.75)+(90*0.85)+(calls-215)*0.95
}

print(paste("Total bill is : ",bill))
