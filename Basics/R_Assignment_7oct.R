#1. Print numbers from 1 to 5 using 'repeat' and break'
r=1
repeat{
    print(r)
    r=r+1
    if(r>5){
        break()        
    }
}

#2. Check if a number is positive or negative using if...else statement
posneg <- function(n){
    if(n>0){
        print("Number is Positive")
    }  else {
        if(n==0){
            print("Number is Neutral")
        } else {
            print("Number is Negative")   
        }
    }
}
posneg(3)
posneg(-2)

#3. Print numbers from 1 tp 10 using while loop
d=1
while(d<11){
    print(d)
    d=d+1
}

#4. Create a vector with 'N' elements and find the sum of N numbers using while loop
q <- c(1:10)
w <- length(q)
sumw = 0
while(w>0){
    sumw <- sumw + q[w]
    w <- w-1
}
print(sumw)

#5. Create a vector with 'N' elements and find the sum of N numbers using for loop
e <- c(1:10)
sumf <- 0
for(i in 1:length(e)){
    sumf <- sumf + e[i] 
}
print(sumf)

#6. Create a vector with 'N' elements and count number of even numbers

counte <- function(r){
    count = c(0)
    for(i in seq(1,length(r))){
        if(r[i]%%2==0){
            count = count+1
        }
    }
    print(count)
}
t <- c(1:20)
counte(t)

#7. R program to find the factorial of a number
nfactorial <- function(t){
    while(t==0){
        return(1)
    }
    fact<-1
    for(i in seq(1,t)){
        fact <- fact*i
    }
    print(fact)
}
nfactorial(0)
nfactorial(7)

#8. R program to check if the number is prime
prime_check <- function(p){
    while(p==0){
        print("0 is an Invalid input.")
        break
    }
    f<-0
    for(i in seq(2,p-1)){
        if(p%%i==0){
            f<-1
            print("Input is not a Prime Number.")
            break
        }
    }
    while(f==0){
        print("Input is a Prime Number.")
        break
    }
}
prime_check(5)
prime_check(9)
prime_check(53)

#9. R program to find the factors of a number
factors <- function(v){
    fact_array <- NULL
    for(i in seq(1,v)){
        while(v%%i==0){
            fact_array <- c(fact_array,i)
            v <<- v/i
            break
        }
    }
    print(fact_array)
}
factors(16)
factors(22)
factors(42)


###Assignment 4#####
#1. Initialize your plot:
plot(1:10,1:10,type="n")
        for(i in 1:10){
            lines(c(i,i),c(1,20))
        }
        for(j in 1:10){
            lines(c(1,10),c(j,j))
        }

#2. Observe the output:
plot(1:10,1:10)
    for(i in 1:10){
        for(j in 1:20){
            points(i,j)
        }
    }

#3. Observe the output:
plot(1:10,1:10)
    for(j in 1:20){
        color<-if(j%%2==0){"blue"}else{"red"}
        lines(c(1,10),c(j,j),col=color)
    }

#4. Can you make line color alternate between "red","blue" and "green"?