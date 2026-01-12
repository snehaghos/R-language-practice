df<-data.frame(
    Name=scan(what=""),
    Dept=scan(What=""),
    Sal=scan()
)
df $bonus<-0.10 * df$sal
df[nrow(df)+1, ]<-list("User1","HR",50000,5000)

df$dept <-NULL
