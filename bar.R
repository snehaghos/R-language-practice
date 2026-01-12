cat("Enter bar values (space separated): ")
v <- scan()

cat("Enter labels (space separated): ")
n <- scan(what = "")

barplot(v, names.arg=n, main="Bar Chart", col="blue")
