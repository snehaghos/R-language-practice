# create a matrix from user input and print its transpose

ri <- function(prompt) {
  x <- as.integer(readline(prompt = prompt))
  if (is.na(x) || x <= 0) stop("Invalid number")
  x
}

tryCatch({
  r <- ri("Enter number of rows: ")
  c <- ri("Enter number of columns: ")
  cat("Enter", r * c, "numbers (space or newline separated), then press Enter:\n")
  vals <- scan(what = numeric(), nmax = r * c, quiet = TRUE)
  if (length(vals) < r * c) stop("Not enough numbers provided")
  m <- matrix(vals, nrow = r, byrow = TRUE)
  cat("\nOriginal matrix:\n")
  print(m)
  cat("\nTransposed matrix:\n")
  print(t(m))
}, error = function(e) {
  cat("Error:", e$message, "\n")
})
