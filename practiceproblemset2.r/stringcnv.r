case_convert <- function(str, type) {
  switch(type,
         "1" = toupper(str),
         "2" = tolower(str),
         "Invalid type")
}
# case_convert("Hello", "1")
stri<-readline("Enter a string to convert it to lowercase or uppercase: ")
choi<-as.numeric(readline("Enter your choice (1.uppercase/2.lowercase):"))
res<-case_convert(stri,choi)
print(res)