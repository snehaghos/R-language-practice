model <- lm(mpg ~ disp, data = mtcars)

coef(model)
summary(model)


new_data <- data.frame(disp = c(150, 200, 250))
predicted_mpg <- predict(model, newdata = new_data)
predicted_mpg


print(plot(mtcars$disp, mtcars$mpg,
     main = "Regression: MPG vs DISP",
     xlab = "Displacement (disp)",
     ylab = "Miles per Gallon (mpg)",
     col = "blue",
     pch = 19))

abline(model, col = "red", lwd = 2)