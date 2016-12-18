#1.
`%divisible%` <- function(x,y){ 
    if (x%%y==0){
        return (TRUE)
    } else {
        return (FALSE) 
    }
}
10 %divisible% 3 
10 %divisible% 2 
`%divisible%`(10,5) 

#Switch Statement
#1.
#Did not name it summary because of conflict with summary() which is used later
summary_1 <- function(x,type){
    switch (type,
        "minimum" = print(min(x)), "maximum"= print(max(x)),"sum"=print(sum(x))
    )
}
summary_1(matrix(1:9,nrow =3 ),"minimum")
summary_1(matrix(1:9,nrow =3 ),"maximum")
summary_1(matrix(1:9,nrow =3 ),"sum")

#2.
'%common%' <- function(g,h){
    count = 0
    for(i in seq(1,nrow(g))){
        for(j in seq(1,ncol(g))){
            if(g[i,j]==h[i,j]){
                count <- count + 1
            } else{}
        }
    }
    print(count)
}
A <- matrix(c(12,14,13,19,21,23),nrow=2)
B <- matrix(c(12,15,18,11,21,31),nrow=2)
A %common% B

#3.
scat.plot <- function(x,y){
    plot(x,y,type = "p")
    cor(x,y)
} 
x <- c(1,12,43,23,32,21,20,11,13,14,9,30)
y <- c(11:22)
scat.plot(x,y)

#4.
x <- matrix(c(1,2,3,4,11,12,13,5,6),nrow=3)
y <- matrix(c(1,1,1,4,1,1,3,1,1),nrow=3)
    #a)
    2*x
    #b)
    x*x
    #c)
    x%*%x
    #d)
    x%*%y
    #e)
    t(y)
    #f)
    solve(x)
    
#5.
    #(a)
    7:11 #numbers from 7 to 11
    #(b)
    seq(2,9) #numbers from 2 to 9
    #(c)
    seq(4,10,by=2) #numbers from 4 to 10 that are in interval of 2
    #(d)
    seq(3,30,length=10) #sequence from 3 to 30 but with length 10
    #(e)
    seq(6,-4,by=-2) #numbers in sequence from 6 to -4 with interval of -2
    
#6.
    #a
    rep(6,6)
    #b
    rep(c(5,8),4)
    #c
    c(rep(5,4),rep(8,4))

#7.
    library(DAAG)
    dim(tinting)
    dim(possum)
    dim(possumsites)
    
#8.
    #a
    Rowers <- subset(ais,sport=="Row")
    Rowers
    
    #b
    rnt <- subset(ais,sport=="Row" | sport=="Netball" | sport=="Tennis")
    rnt
    
    #c
    fbbr <- subset(ais,sex=="f" & (sport=="B_Ball" | sport=="Row"))
    fbbr
    
#9.
    gender <- factor(c(rep("female", 91), rep("male", 92))) 
    table(gender) 
    gender <- factor(gender, levels=c("male", "female")) 
    table(gender) 
    gender <- factor(gender, levels=c("Male", "female")) 
    table(gender)
    rm(gender)

#10.
    paste("Leo", "the", "lion") 
    paste("a", "b") 
    paste("a", "b", sep="") #The sep value isn't mentioned so there is no space or separator between paste items
    paste(1:5) 
    paste(1:5, collapse="") # collapse has similar effect like sep i.e. the values are concatenated into a string
    
#11.
    curve(sin(x),from =0, to =2*pi)
    curve(2*x^3+x^2-2*x+10,from =-2, to =2)
    curve(log(x),from =0, to =10,col="magenta")
    curve(5-x,from =0, to =10,col="red", add=T)
    
#12.
    library(UsingR)
    data(cfb)
    attach(cfb)
    
    #a
    hist(INCOME) #Most people earn in the range of 0 to 200k
    #b
    mean(INCOME) #It gives us the average income but is far from the people with very high income
    #c
    mean(INCOME,trim=0.1)
    mean(INCOME,trim=0.4)
    #d
    median(INCOME)
    
#13.
    #hbc <- scan()
    #hwt <- scan()
    #miles <- scan()
    hbc <- c(45.8,41.1,55.9,46.6,57.0,45.0,58.5,46.7,49.3,52.7,54.9,48.5,40.4,44.4,51.0,44.2,59.1,46.9,50.7,43.7,41.7,52.8,60.5,38.5,60.4,53.8,47.3,50.2,58.8,50.7)
    hwt <- c(23.1,15.9,21.0,26.0,25.1,14.7,24.2,16.6,18.2,16.5,20.7,15.3,17.7,19.1,22.7,21.9,14.6,26.3,25.8,9.4,17.0,21.2,17.9,24.7,21.1,17.2,19.1,22.7,24.0,24.7,22.5,8.3,2.5,30.4)
    miles <- c(3.7,14.3,11.0,26.5,5.2,4.8,24.2,16.9,8.2,26.5,40.7,5.3)
    #a.
    summary(hbc)
    IQR(hbc)
    sd(hbc)
    
    summary(hwt)
    IQR(hwt)
    sd(hwt)
    
    summary(miles)
    IQR(miles)
    sd(miles)
    
    #b.
    boxplot(hbc)
    boxplot(hwt)
    boxplot(miles)
    
    #c.
    hist(hbc)
    hist(hwt)
    hist(miles)
    
    #d.
    hist(hbc,freq=F)
    lines(density(hbc))
    
    hist(hwt,freq=F)
    lines(density(hwt))
    
    hist(miles,freq=F)
    lines(density(miles))
    
#14.
    library(MASS)
    data(cats)
    attach(cats)
    plot(Hwt~Bwt)
    abline(lm(Hwt~Bwt))
    boxplot(Hwt~Sex, xlab='gender', ylab='heart weight')
    plot(Hwt~Bwt, xlab='body weight (kg)', ylab='heart weight (g)', type='n')
    points(Hwt[Sex=='M']~Bwt[Sex=='M'])
    points(Hwt[Sex=='F']~Bwt[Sex=='F'], pch=3)
    

    
    