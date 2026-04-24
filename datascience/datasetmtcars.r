data(cars)

model3 <- lm(dist ~ speed, data = cars)
print(coef(model3))

print(plot(cars$speed, cars$dist))
abline(model3)