library(ggplot2)
library(ggflags)

df <- data.frame(
  country = c("in", "us", "fr"),
  x = 1,
  y = 3:1   
)

p=ggplot(df, aes(x, y)) +
  geom_flag(aes(country = country), size = 40) +
  theme_void()
print(p)
  