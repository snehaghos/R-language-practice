data(mtcars)

print(head(mtcars, 10))

print(str(mtcars))
print(summary(mtcars))


print(dim(mtcars))    

print(colnames(mtcars))

print(mean(mtcars$mpg))
print(median(mtcars$mpg))


print(mean(mtcars$hp))


print(plot(mtcars$disp, mtcars$mpg,
     main = "Scatter Plot of MPG vs DISP",
     xlab = "Displacement (disp)",
     ylab = "Miles per Gallon (mpg)",
     col = "blue",
     pch = 19))