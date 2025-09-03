# Program to calculate Present Value of Retirement Payments
P <- as.numeric(readline("Enter yearly payment (P): "))
r <- as.numeric(readline("Enter inflation rate (%): "))
e <- as.numeric(readline("Enter life expectancy (years): "))

PV <- 0
for(k in 1:e){
  PV <- PV + P / ((1 + r/100)^k)
}

cat("Present Value of Retirement Payments =", PV, "\n")
