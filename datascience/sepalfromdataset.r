data(iris)

model4 <- lm(Sepal.Length ~ Sepal.Width, data = iris)
print(coef(model4))

plot(iris$Sepal.Width, iris$Sepal.Length)
abline(model4)