x <- c(1,2,3,4,5,6)
y <- c(2,4,5,4,5,7)

# Correlation
cor(x,y)

# Simple linear regression
model <- lm(y ~ x)
summary(model)
