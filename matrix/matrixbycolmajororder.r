#Convert a vectorv <- c(5, 2, 8, 1, 9, 3) into a 2x3 matrix with column-major order. Print the resulting matrix.

v <- c(5, 2, 8, 1, 9, 3)
m <- matrix(v,nrow=2, ncol=3, byrow=FALSE)
print(m)
