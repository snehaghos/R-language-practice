# Program to calculate Compound Interest
P <- as.numeric(readline("Enter Principal Amount (P): "))
N <- as.numeric(readline("Enter Number of Years (N): "))
I <- as.numeric(readline("Enter Rate of Interest (I %): "))

T <- P * (1 + I/100)^N

cat("Total Amount (T) after", N, "years =", T, "\n")
