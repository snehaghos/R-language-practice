#n: Filter a numeric vector to keep only values greater than 5 and count how many remain.

vec<-c(67,3,4,89,0,78)
filt<-length(vec[vec>5])
print((filt))