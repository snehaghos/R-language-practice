#Write a for loop to print whether each number from 1 to 15 is "even" or "odd".

for (i in 1:15) {
  if (i %% 2 == 0) {
    cat(i, "is even\n")
  }else{
    cat(i,"is odd\n")
  }
}