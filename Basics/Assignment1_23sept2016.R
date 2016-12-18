## A Dataframe named "Employee" is created below:
EMPID <- c(101,102,103,104)
NAME <- c("A","B","C","D")
AGE <- c(31,35,33,35)
INCOME <- c(25000,35000,38000,37000)
Employee <- data.frame(EMPID,NAME,AGE,INCOME)
Employee    #Display Dataframe

Employee[c(1,2)]  #Retrieve EMPID and NAME from Dataframe Employee

######################################################################

# A matrix x.mat is created below:
x.mat <- matrix(1:12,nrow=3,ncol=4)
x.mat

dimnames(x.mat)<- list(letters[1:3],letters[1:4]) # Dimension names have been assigned

xx <- cbind(x.mat,x.mat) #Binding matrix column wise
xx

xxx <- rbind(x.mat,x.mat) #Binding matrix row wise
xxx


#rbind(xx,xxx) # No. of columns must match to perform this operation
#Output:
#Error in rbind(xx, xxx) : 
#number of columns of matrices must match (see arg 2)

######################################################################

# A vector x is created below:
x <- 1:10
names(x) <- letters[x] #Every element of x is assigned a letter in sequence
x

x[1:3] # First 3 elements of vector x


x[c(1,10)] # First and Tenth element of vector x


x[c(-1,-2)] # All vector x elements without elements at first and second place


x[x>5] #Vector elements which are greater than 5 i.e. 6,7,8,9,10


x[c("a","d")] # 1 and 4 since corresponding columns a and d elements were retrieved


x[] # All vector x elements


jj1 <- matrix(1:100,ncol=10)
jj1 # A 10x10 matrix with elements 1 to 100


jj1[1:5,] # A 5x10 matrix which retrieved all the first 5 row elements


jj1[1:4,x[x<3]] # 1 to 4 row elements and column elements which are less than 3

######################################################################

# A list object is created below:
x.lis <- list(a=1:10,b=letters[1:3],b=matrix(1:10,ncol=2))

x.lis$a  #first object in the list i.e. vector a

x.lis[[2]] #second object in the list i.e. vector b

x.lis[[3]][,1] #third object of the list i.e. matrix c and only a part of the matrix


######################################################################

# A matrix x.mat is created below:
x.mat <- matrix(1:10,ncol=2)

x.mat+1 #addition of matrix with 1


x.mat + x.mat #addition of matrices


x.mat %*%t(x.mat) #Dot product of matrix and its transpose

