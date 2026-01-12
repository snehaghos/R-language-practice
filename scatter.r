m <- matrix(c(12, 18, 25, 20, 15, 30),
            nrow = 2, byrow = TRUE)

barplot(m,
        beside = TRUE,
        main = "Grouped Bar Chart",
        xlab = "Group",
        ylab = "Value")