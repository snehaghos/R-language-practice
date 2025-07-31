# v <- c(4, 2, 8, 4, 3, 2, 8)
# unique_sorted <- sort(unique(v), decreasing = TRUE)
# unique_sorted



# v <- 1:20
# v[v %% 2 == 0]


 
# v <- c(10, 20, 30, 40, 50)
# mean_val <- mean(v)
# sum(v > mean_val)


# 
# v <- c(5, -3, 8, -1, 0)
# v[v < 0] <- 0
# v



# v <- c(3, 6, 9)
# v_norm <- (v - min(v)) / (max(v) - min(v))
# v_norm



 
# v <- c(2, 9, 5, 6, 1, 7)
# which(v > 5)



 
# v1 <- c(1, 2)
# v2 <- c(10, 20, 30)
# outer(v1, v2, "+")


 

is_prime <- function(n) {
  if (n <= 1) return(FALSE)
  all(n %% 2:max(2, floor(sqrt(n))) != 0)
}
v <- 1:20
v[sapply(v, is_prime)]







v <- c(5, 9, 3, 9, 2, 7)
top2 <- sort(unique(v), decreasing = TRUE)[1:2]
v[v %in% top2] <- NA
v
