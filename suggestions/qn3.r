sh<-readline("Enter shape : ")
ar<- switch(sh,
        circle={
            r<-as.numeric(readline("Enter radius: "))
            pi*r*r
        },
        square={
            a<-as.numeric(readline("Enter side: "))
            a*a
        },
        rectangle={
            l<-as.numeric(readline("Enter length: "))
            b<-as.numeric(readline("Enter breadth: "))
            l*b
        },
        triangle={
            b<-as.numeric(readline("Enter base:"))
            h<-as.numeric(readline("Enter height: "))
            0.5*b*h
        }

)
cat("Area: ",ar)