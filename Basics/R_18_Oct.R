#1.
mat <- matrix(c(15,5,5,0,0,5,6,1,3,0,3,3,4,4,4,2),nrow=4,byrow=T)
mat

#2.
divec <- function(s1){
    vect <- NULL
    for(i in seq(1,nrow(s1))){
        for(j in seq(1,ncol(s1))){
            if(i==j){
                vect <- c(vect,mat[i,j])
            } else {}
        }
    }
    vect
}
divec(mat)

#3.
mat2<- matrix(mat[1:2,],nrow=2)
mat2

#4.
subset(iris,Species=="versicolor")

#5.

iris[order(iris$Sepal.Length,decreasing = T),]

#6.
library(lattice)
summary(ethanol)
var(ethanol)

#7.
apply(ethanol,2,quantile)

#8.
mvec=c()
for(j in seq(1,ncol(mat))){
    flag=0
    for(i in seq(1,nrow(mat))){
        if(mat[i,j]>5) {flag=1}
    }
    if(flag==0){
        mvec <- c(mvec,j)
    }
}
mvec #vector containing column indices whose elements are less than 6
m3 <- matrix(mat[,mvec],nrow=4)
m3

#9.
rvec=c()
for (i in seq(1,nrow(mat))) {
    stk=0
    for(j in seq(1,ncol(mat))){
        if(mat[i,j]==0){stk=1}
    }
    if(stk==0){
        rvec <- c(rvec,i)
    }
}
rvec #vector containing row indices which doesn't contain 0 as an element
m4 <- matrix(mat[rvec,],ncol=4)
m4

#10.
dataset1 <- cbind(observationA = 16:8, observationB = c(20:19, 6:12))
dataset1

#11.
apply(dataset1,1,mean)

#12.
apply(dataset1,2,sum)

#13.
apply(dataset1, 2, sort)

#14.
apply(dataset1, 2, length)

#15.
list1 <- list(observationA = c(1:5, 7:3), observationB=matrix(1:6, nrow=2))
list1

#16.
lapply(list1, length)

#17.
lapply(list1,sum)

#18.
X <- c (22,3,7,NA,NA,67) 
length(X)

#19.
# Answer: a
X <- X[!is.na(X)]
X

#20.
Y = c(1,3,12,NA,33,7,NA,21)
# Answer: b
Y[is.na(Y)]= 11    
Y

#21.
X = c(34,33,65,37,89,NA,43,NA,11,NA,23,NA)
# Answer: c
sum(is.na(X))

#22.
c1 <- c(1,2,3,NA)
c2 <- c(2,4,6,89) 
c3 <- c(45,NA,66,101) 
X <- rbind (c1,c2,c3, deparse.level=1)
X
X[!complete.cases(X), ]

#23.
#Observations are commented below:

#24.
(x <- scan("http://www.ats.ucla.edu/stat/data/scan.txt", what = list(age = 0,name = "")))
#Data is fetched from the internet and "what" is used as per requirement

#25.
x <- scan("http://www.ats.ucla.edu/stat/data/scan.txt", what = list(NULL, name = character()))
x
#Different from previous command because a list object is NULL and the other is a character vector