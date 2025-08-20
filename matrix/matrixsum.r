#Given a matrix, use nested loops to print the sum of each row and each column.
matrix_data <- matrix(1:12, nrow=3, ncol=4 ,byrow = TRUE)

print(matrix_data)

for (i in 1:nrow(matrix_data)) {
    row_sum <- 0
    for (j in 1:ncol(matrix_data)) {
        row_sum <- row_sum + matrix_data[i, j]
    }
    cat("row sum", i, ":", row_sum, "\n")
}

for (j in 1:ncol(matrix_data)) {
    col_sum <- 0
    for (i in 1:nrow(matrix_data)) {
        col_sum <- col_sum + matrix_data[i, j]
    }
    cat("column sum", j, ":", col_sum, "\n")
}