cat("Enter x values (space separated): ")
x <- scan()

cat("Enter y values (space separated): ")
y <- scan()

plot(x, y, type="l", main="Line Plot", xlab="X", ylab="Y")
