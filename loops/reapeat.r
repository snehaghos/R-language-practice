#write a song using repeat loop 
lns <- c(
   "Levitating - Dua Lipa",
  "If you wanna run away with me, I know a galaxy"
)

i <- 1
repeat {
  cat(lns[i], "\n")
  i <- i + 1
  if (i > length(lns)) break
}