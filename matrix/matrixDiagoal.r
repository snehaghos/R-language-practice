# Matrix Diagonal Extraction: Write code to extract the main diagonal of a square matrix M <- matrix(1:16, nrow=4) and return it as a vector.
M <- matrix(1:16, nrow=4)
diagonal_elements <- diag(M)
print(diagonal_elements)
# Output: [1]  1  6 11 16