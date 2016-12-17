#WAP to reverse a string
st <- "acsdfsdf"
l <- nchar(st)
k <- l
j <- NULL
for(i in 1:l){
    z <- substr(st,l+1-i,l)
    j <- c(j,z)
    k <- k-1
    st <- strtrim(st,k)
}
j <- paste(j,collapse = "")
j
