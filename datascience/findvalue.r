model2 <- lm(mpg ~ disp + hp + wt, data = mtcars)
new_data <- data.frame(disp = c(150, 200), hp = c(100, 120), wt = c(2.5, 3.0))
print(predict(model2, newdata = new_data))
print(mtcars)