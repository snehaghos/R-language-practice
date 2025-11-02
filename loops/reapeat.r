#write a song using repeat loop 
lns <- c(
  "Twinkle, twinkle, little star,",
  "How I wonder what you are!",
  "Up above the world so high,",
  "Like a diamond in the sky.",
  "Twinkle, twinkle, little star,",
  "How I wonder what you are!"
)

i <- 1
repeat {
  cat(lns[i], "\n")
  i <- i + 1
  if (i > length(lns)) break
}