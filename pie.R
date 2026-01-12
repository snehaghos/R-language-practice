cat("Enter pie values (space separated): ")
v <- scan()

cat("Enter labels (space separated): ")
lab <- scan(what = "")

pie(v, labels=lab, main="Pie Chart")
