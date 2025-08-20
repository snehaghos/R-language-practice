#Write an R function using a for loop to check whether a given number is a palindrome.

is_palindrome <- function(number) {
    if (number < 0) {
        return(FALSE)
    }
    
    org = number
    revnum = 0
    
   for(i in 1:nchar(as.character(number))) {
        digit = number %% 10
        revnum = revnum * 10 + digit
        number = number %/% 10
    }
 
        
    return(org == revnum)
}
a=as.integer(readline("Enter a number to check if it is a palindrome: "))
if (is_palindrome(a)) {
    cat(a, "is a palindrome.\n")
} else {
    cat(a, "is not a palindrome.\n")
}