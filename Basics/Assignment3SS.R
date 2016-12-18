#1.1
v <- sample(-98:100,100) #random values between -98 to 100
m <- matrix(v,nrow=10,ncol=10) #10 by 10 matrix
m
apply(m,1,prod) #product of each of the row of matrix

#1.2
apply(m,2,sum) #sum of each of columns of matrix

#1.3
n <- m%%10 #return a matrix whose entries are 'm' modulo 10
n

#2.
#
tax <- c(60,49,40,61,64,60,59,54,62,69,70,42,56,61,61,61,58,51,48,65,49,49,41,48,52,46,59,46,58,43)
tax1 <- factor(tax)
tapply(tax,tax1,mean)

#3.
m1 <- matrix(1:10,nrow=5,ncol=6)
m1
apply(m1,2,sum)

#4.
X <- c(151,174,138,186,128,136,179,163,152,131)
Y <- c(63,81,56,91,47,57,76,72,62,48)
pr <- lm(Y~X)
plot(X,Y)
abline(pr)
d1 <- data.frame(X <- 170)
predict(object = pr, newdata = d1) # for x=170, y is being predicted 76.22869 i.e. 77

#5.
profit <- c(1,2,3,3,4,4,5,6,6,7,8,8,9,10,10)
calls <- c(23,28,39,48,64,75,88,96,97,109,118,149,150,156,165)
pr1 <- lm(calls ~ profit)
plot(profit,calls)
abline(pr1)
d2 <- data.frame(profit <- 5)
predict(object = pr1, newdata = d2) # for profit of 5$, calls will be 82 mins

#6.
ins <- read.csv("insurance.csv")
ins