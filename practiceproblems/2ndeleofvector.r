#: Build a list containing a numeric vector, a character vector, and a logical vector, then extract the second element


numvec<-c(12,6,7,89,19)
chvec<-c("app","dev","is","not","78")
logvec<-as.logical(c(12,34,0,-98,0))
listy<-list(numvec,chvec,logvec)

print(listy[2])
