#1. 
pow<-function(x,y){
    # function to print x raised to power y
    result <- x^y
    print(result)
}
pow(8,2)
pow(10,2)

#2.
check <- function(x){
    # function to check if a number is positive, negative or zero
    if(x>0){
        result <- "Positive"
    } else if (x<0) {
        result <- "Negative"
    } else {
        result <- "Zero"
    }
    return(result)
}
check(1)
check(-110)
check(0)

#3.
multi_return <- function(){
    # function that returns a list
    my_list <- list("color"="red","size"=20,"shape"="round")
    return(my_list)
}
a<- multi_return()
a$color
a$shape

#4.
recursive.factorial <- function(x){
    # function to find factorial of a number
    if(x==0) return(1)
    else return(x*recursive.factorial(x-1))
}
recursive.factorial(5)
recursive.factorial(7)
recursive.factorial(120)


#######################################################
# Using For and While Loops

#1. R program to find the factorial of a number
xfactorial <- function(z){
    while(z==0){
        return(1)
    }
    fact<-1
    for(i in seq(1,z)){
        fact <- fact*i
    }
    print(fact)
}
xfactorial(0)
xfactorial(5)
xfactorial(8)

#2. R program to check if the number is prime
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
prime_check(10)
prime_check(13)
prime_check(27)


#3. R program to find the factors of a number
factors <- function(v){
    fact_array <- NULL
    for(i in seq(1,v)){
        while(v%%i==0){
            fact_array <- c(fact_array,i) #The factors are stored in a vector
            v <<- v/i
            break
        }
    }
    print(fact_array)
}
factors(10)
factors(25)
factors(30)
factors(37)
