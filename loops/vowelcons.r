#Iterate over a character vector and use if-else to print "Vowel" or "Consonant" for each element.

charvec <- c("a", "s", "c", "e", "i", "o", "u", "z")
for (char in charvec) {
   if(char %in% c("a","e","i","o","u"))
   {
         cat(char, ": Vowel\n")
    } else {
         cat(char, ": Consonant\n")
   }
}