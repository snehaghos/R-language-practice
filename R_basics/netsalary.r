# Program to calculate Net Salary of Employee
basic <- as.numeric(readline("Enter Basic Pay: "))

DA <- 0.97 * basic
HRA <- 0.57 * basic
Medical <- 150

Gross <- basic + DA + HRA + Medical

EPF <- 0.12 * basic
Prof_Tax <- 200

Net_Salary <- Gross - (EPF + Prof_Tax)

cat("Gross Salary =", Gross, "\n")
cat("Net Salary =", Net_Salary, "\n")
