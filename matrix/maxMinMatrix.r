#a) Find the maximum element of the entire matrix
#b) Find the minimum element in each column
#c) Sort each row in ascending order

# ...existing code...
# small-vars: max of matrix, min per column, sort each row (ascending)

ri <- function(pr) {
  x <- as.integer(readline(prompt = pr))
  if (is.na(x) || x <= 0) stop("Invalid number")
  x
}

tryCatch({
  r <- ri("Enter number of rows: ")
  c <- ri("Enter number of columns: ")
  cat("Enter", r * c, "numbers (space or newline separated), then press Enter:\n")
  v <- scan(what = numeric(), nmax = r * c, quiet = TRUE)
  if (length(v) < r * c) stop("Not enough numbers provided")
  m <- matrix(v, nrow = r, byrow = TRUE)
  
  cat("\nMatrix:\n"); print(m)
  #maxmin
  mx <- max(m)
  cm <- apply(m, 2, min)   
  rs <- t(apply(m, 1, sort)) 
  
  cat("\nMaximum element (entire matrix):", mx, "\n\n")
  cat("Minimum element in each column:\n"); print(cm)
  cat("\nEach row sorted (ascending):\n"); print(rs)
}, error = function(e) {
  cat("Error:", e$message, "\n")
})
