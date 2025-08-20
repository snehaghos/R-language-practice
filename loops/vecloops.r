#Write a loop that iterates over a vector and prints “Large” if the element is greater than 100, else “Small”.

vec<-c(12,33,44,55,5,3,1,0)
i<-as.integer(readline("Enter a number: "))
for(i in length(vec)) {
  if (i > 100) {
    print("Large")
  } else {
    print("Small")
  }
}