#WAP to find out a number is palindrome or not

z <- 12921
x<- z
r <- 0
b <- 0
while(z>0){
    r <- z%%10
    b <- (b*10) + r
    z <- z%/%10
}
if(x==b){
    print("Palindrome")
} else{
    print("Not a palindrome")
}
