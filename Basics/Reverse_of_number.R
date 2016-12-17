#wap to find out the reverse of a number
r <- 0
x <- 1234
b <- 0
while(x>0){
    r <- x%%10
    b <- (b*10) + r
    x <- x%/%10
}
b

# in loop: extracting the last digit store it in a var
#           divide number by 10
#               multiply this new no. by 10
#                   add it to the var
#
#
