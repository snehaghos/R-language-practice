
print("three sides of the triangle length : ")
rside <- scan(n=3)

a <- rside[1]
b <- rside[2]
c <- rside[3]
sp <- (a + b + c) / 2

rarea <- sqrt(sp * (sp - a) * (sp - b) * (sp - c))

cat("area of the triangle =", rarea, "\n")
