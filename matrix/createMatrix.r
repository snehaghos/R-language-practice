# Create a 3x4 matrix filled with numbers from 1 to 12 in row-major order. Then, extract the element in the 2nd row, 3rd column.
m <- matrix(1:12, nrow = 3, ncol = 4, byrow = TRUE)
element <- m[2, 3]
print(element)  
print(m)  
