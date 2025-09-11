#6. Write an R program to categorize a triangle based on its three angles as: Invalid Triangle Equiangular Right-angled Acute-angled Obtuse-angled

ang1<-as.integer(readline("Enter angle 1: "))
ang2<-as.integer(readline("Enter angle 2: "))
ang3<-as.integer(readline("Enter angle 3: "))
if(ang1+ang2+ang3!=180 || ang1<=0 && ang2<=0 && ang3<=0){
    print("Invalid triangle !!")
}else if(ang1==60 && ang2==60 && ang3==60){
    print("Equiangler triangle")
}else if(ang1==90 || ang2==90 || ang3==90){
    print("This is right angled triangle")
}else if(ang1<90 && ang2<90 && ang3<90){
    print("Acute triangle")
}else{
    print("obtuse triangle")
}
#this is the program