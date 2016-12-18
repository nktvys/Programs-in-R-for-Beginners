#1.
#reading input file
df <- read.csv("input.csv", header=TRUE)

# Number of columns
ncol(df)

# Number of rows
nrow(df)

# Maximum Salary
max(df$salary)

# Details of person with max salary
df[df$salary==max(df$salary),]

#People working in computer dept
df[df$dept=="Computer",]

#People working in computer dept whose salary is greater than 16000
subset.data.frame(df,dept=="Computer"&salary>16000)

#People who joined after 2000/01/14
subset.data.frame(df,as.Date(start_date)>as.Date("2000/01/14"))


#2.
#output file with joining date greater than 2000/01/14
df2 <- subset.data.frame(df,as.Date(start_date)>as.Date("2000/01/14"))
write.csv(df2,"output2.csv")

#3.
insurance <- read.csv("insurance.csv", header=TRUE)
summary(insurance)
boxplot(insurance)

# Average age
mean(insurance$age)

#Average expense
mean(insurance$expenses)

# the details of female with maximum age
subset.data.frame(insurance,sex=="female" & age==max(age))

# the male with minimum number of children
subset.data.frame(insurance,sex=="male" & children==min(children))

# the number of people from southwest region
sw <- subset(insurance,region=="southwest")
nrow(sw)

# the number of female smokers
nrow(subset.data.frame(insurance,sex=="female" & smoker=="yes"))

# the number of male smokers
nrow(subset.data.frame(insurance,sex=="male" & smoker=="yes"))

# the females having 2 children and have maximum BMI but non smokers.
nrow(subset.data.frame(insurance,sex=="female" & children==2 & bmi==max(bmi) & smoker=="no"))

# the correlation between age,bmi,children,expenses.


#4.programme to concatenate the strings “Hello” “How” “are you?”
cat("Hello","How","are you?")

#5. the number of characters in the string  “Hello, how are you?”
nchar("Hello, how are you?")


#6. Change the case of the string “Hello, how are you?”
toupper("Hello, how are you?")
tolower("Hello, how are you?")

#7. Extract “Hello” from “Hello, how are you?”
if(grep("Hello","Hello, how are you?")==1) print("Hello")

#8. Find out all the vowels and consonant in the string “Hello” 
h <- "Hello"
ha <- strsplit(h,split = "")
vow <- c()
conso <- c()
vowstr <- c("a","e","i","o","u")
for (i in 1:length(ha[[1]])) {
    vf <- 0
    for(j in 1:length(vowstr)){
        if(ha[[1]][i]==vowstr[j]){
            vow <- c(vow,ha[[1]][i])
            vf <- 1
            }
    }
    if(vf==0){
        conso <- c(conso,ha[[1]][i])
    }
}
print(vow)
print(conso)

#9. Remove the space from the string “Hello, how are you?”
dd <- "Hello, how are you?"
gsub(" ", "", dd, fixed = TRUE)

#10. Write a programme to insert “abc” on 4th space of the string “xyz pqr”
dd1 <- "xyz pqr"
gsub(" ", "abc", dd1, fixed = TRUE)

#11. Find out the numbers in the string “abc976the45u”
str_extract_all()

