emp<-data.frame(
    ID=c(1,2,3,4,5),
    Name=c("Amit","Neha","Ravi","jsj","ajak"),
    Dept=c("Hr","Finance","IT","IT","Marketing"),
    Sal=c(55000,90000,48484,48940,29282)
)

print(lapply(emp[sapply(emp,is.numeric)],summary))
print(emp[emp$Sal>55000, ])
print(emp[emp$Dept!="IT", ])
aggregate(Sal ~ Dept,emp,mean)
subset(emp,Dept=="Finance")$Name