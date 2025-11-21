
ri <- function(pr) {
  x <- as.integer(readline(prompt = pr))
  if (is.na(x) || x <= 0) stop("Invalid number")
  x
}

tryCatch({
  r <- ri("Enter number of rows: ")
  c <- ri("Enter number of columns: ")
  if (r != c) stop("Matrix must be square to invert")
  cat("Enter", r * c, "numbers (space or newline separated), then press Enter:\n")
  vals <- scan(what = numeric(), nmax = r * c, quiet = TRUE)
  if (length(vals) < r * c) stop("Not enough numbers provided")
  m <- matrix(vals, nrow = r, byrow = TRUE)
  cat("\nMatrix:\n"); print(m)
  inv <- tryCatch(solve(m), error = function(e) e) 
  if (inherits(inv, "error")) stop("Matrix is singular or not invertible")
  cat("\nInverse:\n"); print(inv)
}, error = function(e) {
  cat("Error:", e$message, "\n")
})

#matrix sum using built in function. it gives same result as above nested loop