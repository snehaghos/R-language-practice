myinp<-readline("Enter a sentence : ")
leng=nchar(gsub(" ","",myinp))
words=length(strsplit(myinp, " ")[[1]])
vowels=sum(strsplit(tolower(myinp), "")[[1]] %in% c("a","e","i","o","u"))
consonants=leng-vowels
up=toupper(myinp)
low=tolower(myinp)

cat("the length of the sentence without spaces is: ",leng,"\n")
cat("No of words in a sentence is :", words,"\n")
cat("No of vowels in a sentence is :", vowels,"\n")
cat("No of consonants in a sentence is :", consonants,"\n")
cat("Sentence in uppercase: ",up,"\n")
cat("Sentence in lowercase: ",low,"\n")
