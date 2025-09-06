# Two sample data
group1 <- c(25, 30, 28, 35, 32)
group2 <- c(22, 27, 29, 30, 31)

# Independent sample t-test
t.test(group1, group2, var.equal=TRUE)
