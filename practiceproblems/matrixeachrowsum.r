#Create a 3x3 matrix of numbers 1 to 9 and calculate the sum of each row.

mat<-matrix(1:9,nrow = 3,byrow = FALSE)
sumofrow<-rowSums(mat)

print(sumofrow)