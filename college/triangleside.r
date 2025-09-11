#7. Write an R program to read the lengths of three sides of a triangle.First, check whether the three sides can form a valid triangle using the triangle inequality theorem.
#If valid, classify the triangle as:Equilateral (all three sides equal) Isosceles (any two sides equal) Scalene (all sides different) Otherwise, display: “Not a valid triangle”.


a<-as.integer(readline("Enter side 1: "))
b<-as.integer(readline("Enter side 2: "))
c<-as.integer(readline("Enter side 3: "))

if(a+b>c && b+c>a && c+a>b){
    if(a==b && b==c){
        print("Equilateral")
    }else if(a==b || b==c || c==a){
        print("Isoscales")
    }else{
        print("Scalane")
    }
}else{
    print("Invalid triangle !!")
}