data <- read.csv("C:\\Users\\Sneha Ghoshal\\Downloads\\Height_Weight_Index.csv")


names(data)


str(data)

model <- lm(Weight ~ Height, data =data)

print(coef(model))
plot(data$Height, data$Weight,
     main = "Height vs Weight",
     xlab = "Height (cm)",
     ylab = "Weight (kg)",
     col = "blue",
     pch = 16)


abline(model, col = "red", lwd = 2)