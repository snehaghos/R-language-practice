#Write a for loop to replace all negative values in a vector with zero.

vec<-c(12,-8,78,9,1,-56,-2,0)

for (i in seq_along(vec)) {
  if (vec[i] < 0) {
    vec[i] <- 0
  }
}
cat("The modified vector is:", vec, "\n")