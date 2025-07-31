a<-as.integer(readline("Enter a digit to sum : "))
sum=0
while(a>0)
{
  rem=a%%10
  sum=sum+rem
  a=a%/%10
}
print(paste("sum is:",sum))