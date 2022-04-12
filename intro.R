# R is case sensitive.
# use ctrl + enter to submit code
d = 0
g = 9
y = 88
d = g + y
d
g/y
g *y
g%%y
g^y
g%/%y
# %/% gives us the quotient
9%/%6 # = 1
9%% 6 # = 3
5 /15

# relational operators

# assignement operator 3 different ways
assign("k",c(9,8,9))
j = c
t <- c
k
j
t

# in built function
ls()
objects()
sum(c)
sqrt(c)

l = (k == 8) #assigns true or false
l

rm(logicalX)

assign("l", c("hello", "world"))
j  = l
k <- l

assign("o", factor(c(3,TRUE,"a","male","female")))
o

10 == 7

as.Date("2020-6-21")
Sys.time()
str(o)
typeof(o)
length(o)

x <- c(9,9,0,9,8)
sum((x-mean(x))^2)/length(x)-1

help(sort)
# sort(), sort(x, dec=T)

#11-1-22

x =2
y = 3

8 * x +7 *y + - 3 *x

x^2 - 7*x - 3*x + 4

6* a - 3 *b - 4 * a - 4 *b +3


l = c(2,4,6,7,9,0)
length(l)

rev(l)
sort(l)
sort(l,dec=T) #sort in reverse

order(l) 

head(l,3)
tail(l,3)

which.max(l)
which.min(l)

mean(l)
median(l)

var(l)
sd(l)
cumsum(l)
diff(l)

round(c(2.4,5.66,6.9))

m = c(65311, 65624, 65908, 66219, 66499, 66821, 67145, 67447)
diff(m)

names(m) = c("jan","feb","mar", "apr","may","jun","jul","aug")
m

j = c(2,4,7,5)
k = c(5.7,9.0,7.4,8.9)
typeof(j)
typeof(k)
j1 = as.numeric(j)
typeof(j1)
j1 = as.integer(j)
j1

y1 = as.numeric(k)
typeof(y1)
y1
k2 = as.integer(k)
k2

j2 = as.character(j)
j
j2

char1 = c("apple", "ball","cat","dog")
char2 = as.numeric(char1)
char2

comp = as.complex(j)
comp
comp1 = as.numeric(comp)
comp1

h = j<5
h
typeof(h)


#18-01-22
x = c(1,5,8)

sample(x, 15,replace = T, prob = c(0.3,0.6,0.1))

seq(1,length = 5,by = 2)

paste("xyz", 1:10)
paste("jj", c(5,6,"jj"))
paste("xyz", 1:10, sep="-")


rep(x,10) #just repeats set 10 times
rep(x,10,each = 2)

rep(c(10,20,30), 1, each  =4)

which(x == 5)

#exercise
#1
firstObj = 1:10
firstObj1 = c(1,2,3,4,5,6,7,8,9,10)
assign("firstObj2" , c(1,2,3,4,5,6,7,8,9,10))

#2
mean(firstObj)

#3
paste("R is great", c(4,7,45), "and i will love it")


#4\

f = c("A", "B", "C")
rep(c("A","B","C"),times=c(11,10,10)) #timesss
h = rep(f,c(11,10,10))
h[7]


#25-1-22
#matrix creationn 
#method 1
rn = c("2021","2022")
cn = c("jan","feb","mar","apr","may")
mat2 = matrix(c(1:10), nrow=2,ncol=5,byrow=T, dimnames =list(rn,cn) )

#method 2
vec = c(1,2,3,4,5,6)

dim(vec) = c(2,3)
vec

#mathod 3
r1 = c(1,2,3,4)
r2 = c(5,6,7,8)
mat = rbind(r1,r2)
mat

c1 = c(11,22,33,44)
c2 = c(10,20,30,40)
mat1 = cbind(c1,c2)
mat1


#modify row name/columname
rownames(mat2) =c("1998","1999")
mat2
colnames(mat2) = c("jun","jul","aug","sept","oct")


mat2[1,3]

submat = mat2[c(1,2),c(4,5)]
submat


#1-2-22
#matrix funvtions

mat3 = matrix(1:9,nrow = 3, byrow = T)
mat3 +2
mat3 * 3

mat4 = matrix(11:19, nrow = 3, ncol = 3, byrow = T)

#matrix addition works only for same order matrices
mat3 + mat4

mat3 - mat4
mat3 * mat4
mat3 /mat4

#cross multi
mat3%*%mat4

#square of elements
mat3 ^2

#transpose
t(mat3)
t(mat4)



#create matrices A(2,3) B(3,2), C(3,2) in 3 different way
#assign row and column names
#calculate A+C, C/6 A*B
#create 2X2 submat from B in 3 diff ways
A = matrix(c(1:6), nrow=2)
A

B = c(1,2,3,4,5,6)
dim(B) = c(3,2)
B

c1 = c(11,22,33)
c2 = c(10,20,30)
C = cbind(c1,c2)
C

rownames(A) =c("1998","1999")
colnames(A) = c("jun","jul","aug")

rownames(B) =c("1998","1999", "2000")
colnames(B) = c("jun","jul")

rownames(C) =c("1998","1999", "2000")
colnames(C) = c("jun","jul")

A+C

C/6

A%*%B

subB = B[c(1,2),c(1,2)]
subB

subB1 = B[c("1998","1999"), c("jun","jul")]
subB1


subB2 = B[c(T,T,F), c(T,T)]
subB2


#determinant
x = matrix(c(1,4,6,8,4,2,4,5,9), nrow = 3)
x
det(x)

#inverse of matrix
solve(x)

#rank of matrix
qr(x)
qr(x)$rank #give $ sign to calculate specific things

#diagonal elements
diag(A)
diag(x)
diag(apply(x,1,rev)) #if 2 it gives reverse order top to down

#generate identity( matrix)
diag(3)

#replce diag elemenys
diag(x)= c(1,2,3)
diag(x) = c(1,2,3)


#eigen function similar to qr
eigen(x)
eigen(x)$values
eigen(x)$vector


#create a 4x4 matrix replace diagonal element
#generate A(4,5) and find its inverse and determinant


matr = matrix(c(1:16), nrow=4,ncol=4,byrow=T)
matr
diag(matr)= c(1,2,3,5)
matr


A = matrix(c(1,5,2,5,7,4,6,2,1,4,5,0,8,4,2,5,6,4,2,1),
           nrow=4,ncol=4,byrow=T)
A
solve(A)
det(A)

#----------------------------------------------------------------

#module II

data()

#list set of data in a package "dataset"
data(package="dataset")
data(package = "LearnBayes")

#example dataset
iris

#convert dataset into an R readable form
mydata <- data.frame(iris)
mydata

#gives first and last six
head(mydata)
tail(mydata)

#head and tail is applicable to all not just dataset even vector
tail(c(1:1000))

#extract column or variable names
names(mydata)

colnames(mydata)

rownames(mydata)

#chnge name of variable
names(mydata)[5]<-"Generic Name"
names(mydata)
names(mydata)[5]<-"Species"
names(mydata)

#chnage row names
rownames(mydata)[150]<-"blabla"
tail(mydata)
rownames(mydata)[150]<-"150"
tail(mydata)

#get dimensions
dim(mydata)

#filter out rows , columns or cells
mydata1 <- mydata[,c(1,5)]
mydata1
head(mydata1)

mydata2 <- mydata[c(10,20),]
head(mydata2)

mydata3 <- mydata[c(10,20), c(1,5)]
head(mydata3)

rownames(mydata3)[c(1,2)] <- c(3,9)
mydata3


mydata4 <- mydata[1,5]
head(mydata4)

mydata5 <- mydata[150,5]
mydata5

#remove data
rm(mydata1)
mydata1

mydata$Sepal.Width

#summary or of particular variable
summary(mydata)

summary(mydata$Sepal.Width)

boxplot(mydata)

#return the internal structure in terms of string
str(mydata)

newdata <-mydata

head(newdata)

#combining data 
cbinded<- cbind(mydata,newdata)
head(cbinded)


head <- head(mydata)
tail <- tail(mydata)

head_tail <- rbind(head,tail)
head_tail

#remove columnames
names(mydata) <- NULL
head(mydata)



#importing 
library(readxl)
#dd <- read_excel("location wit / of the excel file")

sample_1

data <- data.frame(sample_1)
data

summary(data)
data<-data[,c(2:7)]
data

#work directory
getwd()
setwd("E:/R/")
data1 <- read_excel("sample_1.xls")
data1


#managing lists in R
#------------------------------------------------

#lists are collection of various diff objects

list1 <- list(name="John",no_students= 500, score = c(10,20,30))
list1
length(list1)

#use double for ajskcnsdcn 
list1[1]

list1[[3]][1]
list1[[3]][2]
list1[[3]][3]

#also accesoble with $ 
list1$name
list1$score


#list withour label
list2 <- list(c("Jan","Feb","Mar"), matrix(c(1,2,3,4,5,6)
                ,nrow = 2), list("red"), 10.2)
list2

#assigning names
names(list2) <- c("months","paymatrix","colotag",
                  "random_number")
list2

#combining lists
combilist <- c(list1,list2)
combilist
names(combilist)

combilist1 <- cbind(list1,list2)
combilist1




#STA271 [R Programming]
#class [2022-02-15/a]
#module II
#Importing and managing excel sheets in R
###############################################
#begin of the_document-------------------------
rm(list=ls())
#empty the global environment


#using if statement
x <- 5
if (x>0) {print("positive number")}

y <- -5
if (y>0) {print ("positive number")}#void return

z <- -5
if (z<0) {print ("positive number")}#wrong interpretation


#----------------------------------------------
#Usage of 'if else' statement------------------

w<-0
if (w>=0){
  print("non-negative number")
} else {
  print("negative number")
}

m<--1
if (m>=0){
  print("non-negative number")
} else {
  print("negative number")
}


#----------------------------------------------
#Usage of 'if else' as a function--------------
x<-56
ifelse(x>60, print("First Class"), print("Second Class"))
?ifelse
x<-56
ifelse(x>60, "First Class", "Second Class")


#----------------------------------------------
#Usage of 'if else' along with data frame------
#\title{building data frame (user-defined)}----
name <-  c('name1', 'name2', 'name3', 'name4')
sex <-  c("f","m","f","m")
age <-  c(10,15,25,35)

#data framing via listing----------------------
mydata <- list(name,sex,age)
mydata
is.data.frame(mydata)

data_temp <- data.frame(mydata)
data_temp
is.data.frame(data_temp)

names(data_temp) <- c("name","sex","age")
data_temp
is.data.frame(data_temp)

#direct call-----------------------------------
student <-data.frame(name,sex,age) 
student
is.data.frame(student)


#Add a 4th column to this data frame with Male.teen
#checking the condition sex=m and ### age<20
student$male.teen<-ifelse(student$sex=="m"& student$age<20, 
                          "T","F")#checks on two condiions
student



###############################################
#Usage of loops--------------------------------
#Loops are used for repetitive execution of expressions
#Commonly used loops are 'for' loop, 'while' loop and 'repeat' loop
#Syntax 'for loop': for (value in sequence){statement}
#----------------------------------------------
#Usage of 'for' loops--------------------------
#for (value in sequence){statement}

#----------------------------------------------
#example 1: To print the square of the first 10 elements of vector u1
u1 <- seq(1:20)
# Initialize ``
init <- 1
for(i in 1:10) {
  # i-th element of `u1` squared into `i`-th position of `init`
  init[i] <- u1[i]*u1[i]
  print(init[i])
}
print(i)


#----------------------------------------------
#example 2: To call numbers in a sequence via object
for (val in 1:5){
  print (val)
}
val


#----------------------------------------------
#example 3: To call strings in a vector via object
week <-  c('Sunday','Monday','Tuesday','Wednesday'
           ,'Thursday','Friday','Saturday')
for (day in week){
  print (day)
}
day



#Write an R code to check a given
#year is leap year or not, using if and for loop?
years = c(1990,1997,2000,2454)

for (year in years){
  if((year %% 4) == 0) {
    if((year %% 100) == 0) {
      if((year %% 400) == 0) {
        print(paste(year,"is a leap year"))
      } else {
        print(paste(year,"is not a leap year"))
      }
    } else {
      print(paste(year,"is a leap year"))
    }
  } else {
    print(paste(year,"is not a leap year"))
  }
}




#----------------------------------------------
#Usage of 'while' loops----------------------------
#the while loop includes a condition and the loop
#is terminated when the condition becomes false
#while ( condition ){ statement }
#----------------------------------------------
#example 4 while loop to print-----------------
val <- 1
while (val <=5){
  print(val)
  val=val+1
}

#----------------------------------------------
#example 5 while loop to calculate factorial---
n<-5
factorial<-1
i<-1
while(i<=n){
  factorial=factorial*i
  i=i+1
}
print(factorial)

factorial(5)


#----------------------------------------------
#example 6: Repeat loop to print first five natural numbers
val = 1
repeat{
  print(val)
  val=val+1
  # checking condition
  if (val>5)
  {
    break
  }
}
#----------------------------------------------
#example 7: Repeat loop to print first five natural numbers
x= 1
repeat{
  print(x)
  x=x+1
  
  if (x==6)
  {
    break
  }
}

#Create a nested for loop which prints
#3 sequence of numbers (1:5, 11:15, 21:25)
for(i in c(0,10,20)){
  for(j in 1:5){
    print(j+i)
  }
}
#(1:5,11:15,21:25)
for (i in 0:2){
  for (j in 1:5){
    print(j+10*i)
  }
}


#create a repeat loop containing 3 random numbers
#repeating exactly 10 times
set.seed(123)
randomnr<-rnorm(3)#rnorm(3,0,1)
counter<-1
repeat{
  print(randomnr)
  counter<-counter+1
  if (counter>10){
    break
  }
}


# 22-2-22

#using next (same as continue in python)


for (i in mtcars$disp){
  if (i <160)
    next
  print(i)
}

x <- 0
while(x<=10){
  if (x==7){
    x = x+1
    next
    
  }
  print(x)
  x = x+1
}



set.seed(321)

y <- rnorm(10,mean <- 3, sd <- 5)

y

mean(y)
sd(y)

rm(list = ls())


#function

funn <- function(x,y){
  
}
funn(1,2)


con <- function(x,y){
  print(paste(x,y))
}

x<- "Joel"
y <- "Varghese"

con(x,y)


mylog <- function(x){
  logvalue <- log(x)
  return (logvalue)
  
}

mylog(5)


#print squares of numbers in a sequence

nn <- function(a){
  for (i in 1:a){
    print(i^2)
  }
}

nn(7)


nn()




f <- function(a,b,c){
  print((a*b)+c)
}

f(5,60,9)
f(10,10,10)


cov1 <- function(x){
  # na.rm checks for NA values and strips them before computation
  mn <- mean(x, na.rm = TRUE)
  sd <- sd(x, na.rm = TRUE)
  cv = (sd/mn)*100
  return(cv)
}

x = c(12,3445,23,4523,34,23)
cov1(x)


mean_sd <- function(x){
  mean <- mean(x,na.rm = TRUE)
  var <- var(x,na.rm = TRUE)
  est <- data.frame(mean,sd = sqrt(var))
  estl <- list(mean, sd = sqrt (var))
  return(estl)
  #multi argument returns are not permitted
}

mean_sd(c(12,23,45456,57,6,7,78,7))

sd(c(1,3,NA,NA,NA), na.rm = T)



#attach function allows us to access variables of data.frame without
#calling data.frame

#detach function can be used to :
#remove the attachment of data.frame which was previously
# attached using the attach function
# unload a package, which was previously loaded with the library
# function


data <- data.frame(x1 = c(1,2,3,4,5),
                   x2 = c(2,4,1,3,6),
                   x3 = c(3,5,7,2,1))
data

data$x
attach(data)
x2
x1
x3




# question
# write an R code using the loops and functions to develop :
# the pmf of the random variable 
# and hence the expectation and variance of it.
# pack the whole code into a single function



x = c(1,2,3,4,5)
fx = c(10,9,8,7,6)

freq = sum(fx)

pmf = c()

for (i in fx){
  j = i/freq
  pmf = append(j,pmf)
}

pmf

exp = 0

for (i in 1:length(x)){
  exp = exp + x[i]*pmf[i]
}

exp

var = 0

l = 0
m = 0


for(k in 1:length(x)){
  l = l +  x[i]*fx[i]
  m = m +  x[i]^2 *fx[i]
  
}


n = length(x)
var = (n*m - l^2)/(n*(n-1))

var

pmf_var <- function(a,b){
  freq = sum(b)
  pmf = c()
  for (i in b){
    j = i/freq
    pmf = append(j,pmf)
  }
  print(paste ("pmf = ", pmf))
  exp = 0
  
  for (i in 1:length(a)){
    exp = exp + a[i]*pmf[i]
  }
  
  print(paste("expectation = ", exp))
  me = mean(a)
  var = 0
  ll = 0
  l = 0
  m = 0
  for(k in 1:length(a)){
    l = l +  a[i]*b[i]
    m = m +  a[i]^2 *b[i]
    ll = ll + b[i]*(a[i] - me)^2
  }
  n = length(a)
  var = (n*m - l^2)/(n*(n-1))
  var1 = ll/sum(b)
  print(paste("variance = ", var1))
}
x = c(1,2,3,4,5)
fx = c(10,9,8,7,6)


pmf_var(x,fx)


#Unit 3
#graphs n stuff
lynx

plot(lynx, main="Graphhhh", col.main = "#14ffb5",
     cex.main= 3.5, las = 2,
     xlab = "x label", ylab = "y axis", 
     pch = 11, col = 70 )

#main = grapsh title
#col.main = color for title
#cex.main = title letter size
#las = axis label orientation
# xlab, ylab  = x and y axis label
#pch = plot character
#col = color for datapoint



#str for structure of dataset



#22-3-22

#DataFrames - used to store data table with different type

nrow(mtcars)
ncol(mtcars)
g <- mtcars
tail(g)
head(g)
View(g)
dim(g)
length(g)


#column vector
g[[9]]
g$am
g[,"am"]
g[,9]


#row slice
g[24,0]
mtcars[c(3,24),]
g[c(3:24),]

#Column slice
g[9]
g$am
g["am"]
g[c("mpg","am")]


mtcars[mtcars$am==0,]





#Subset command
#subset() will subset the dataframe
gear3 = subset(mtcars,mtcars$gear==3,select = c(wt,qsec))
gear3

gear4 = subset(mtcars,mtcars$gear==3,select = -wt)
gear4


#Subscripting from a data frames
mtcars[,1] #gives first five columns

#specifying vector
mtcars[1:5] #gives first 5 columns of data

#Sorting data frame columns
nn <- mtcars[order(mtcars$mpg),] #sort by mpg
nn
attach(mtcars)
nn1 <- mtcars[order(mpg,cyl), ] #sort by mpg and cyl
nn1

nn2 <- mtcars[order(mpg,-cyl), ] #sort by mpg and cyl
nn2

detach(mtcars)


#extract 4 gear vehicles which are automatic

gear5 = subset(mtcars,mtcars$gear==4 & mtcars$am == 1)
gear5


#univariate - categorical data- bar graph

data = mtcars$gear
barplot(data)

#barplot with category
barplot(table(data))

barplot(prop.table(table(data)),legend.text = c(3,4,5),
        col = c("#b4c9a5", "#4071a3","#b87fa1"),
        main = "Probabilities ", xlab = "no of gears", 
        ylab = "probability")



#pie chart

data.counts = table(data)
pie(data.counts)

#formatting is important
names(data.counts) = c("Three\n Gear", 
                       "Four\n Gear", "Five\n Gear")

pie(data.counts,legend.text = c(3,4,5), 
    col = c("#b4c9a5", "#4071a3","#b87fa1"))


cats = cut(mtcars$mpg, breaks = c(10,20,90))
cats



hist(mtcars$mpg)
hist(mtcars$mpg, probability = TRUE)
hist(mtcars$mpg,breaks = c(10,15,20,max(mtcars$mpg)),
     probability = TRUE)


#boxplot

g <- mtcars

boxplot(g$mpg,notch = TRUE,border = "#171924" ,
        main = " mtcars mpg",col = "#8f9ce3", 
        horizontal = TRUE)
summary(g$mpg)


#rnorm
rnorm(12,mean=0,sd=9)


c = table(g$am,g$cyl)

old.digits = options("digits")
options(digits = 3)

c

#total proportion
prop.table(c)

#proportion among rows
prop.table(c,1)

#proportion along columns
prop.table(c,2)

barplot(table(g$am,g$cyl), col = c("#382466", "#8f9ce3"))


barplot(table(g$am,g$cyl),beside = TRUE,horiz = TRUE,
        col = c("#382466", "#8f9ce3","tomato" ,"#382661")
        ,legend.text = c("ee","ee","ee"))



boxplot(g$wt~g$cyl, col = c("#382466", "#8f9ce3","tomato" ))

plot(g$mpg,g$wt,pch = "+", col = c("#382466", "#8f9ce3","tomato" )
     ,bg = "#484157")


install.packages("MASS")


library("MASS")

f = Cars93

attach(f)
View(Cars93)

summary(f)

dim(f)

nprice = cut(Price,c(0,12,20,max(Price)))
levels(nprice) = c("Cheap", "Okay", "Expensive")

barplot(table(nprice))


nmpg = cut(MPG.highway,c(0,20,30,max(MPG.highway)))
levels(nmpg) = c("gas guzzler", "Okay","Miser")

table(Type)

table(nprice)



barplot(table(nprice,Type),beside = T, main = "Price vs Type")


barplot(table(Type,nprice),beside = T, main = "Price vs Type")


barplot(table(Type,nprice),beside = T, 
        main = "Price vs Type",col = rainbow(9))


detach(f)


#5 april 2022

data <-iris
attach(data)
shapiro.test(Sepal.Length)

shapiro.test(Sepal.Width)


#sepal width follows normal distribution
#sepal length doesnot

#p value < 0.05 the significance level

#hence rejection H0
#conclusion: data doesnot follow normal distribution

#A Shapiro-Wilk test is the test to check the normality 
#of the data. The null hypothesis for Shapiro-Wilk test is 
#that your data is normal, and if the p-value of the test if 
#less than 0.05, then you reject the null hypothesis at 5% 
#significance and conclude that your data is non-normal.

t.test(Sepal.Width ,mu = 5, 
       alternative = c("greater"), paired = F,
       var.equal = F,conf.level = 0.99 )

t.test(Sepal.Width ,mu = 5, 
       alternative = c("less"), conf.level = 0.99 )




#6-4-22


datasub <- data[c(1:100), ]
attach(datasub)

t.test(Sepal.Length~Species, paired = F)


t.test(Sepal.Length~Species, paired = F,alternative = c("greater"))


t.test(Sepal.Length,Sepal.Width, paired = F)



length(Sepal.Length)

t.test()



#analysis of variance

#ANOVA

anova <- aov(Sepal.Length~Species)

anova
summary(anova)




#corellation
data <-iris
attach(data)


cor.test(Sepal.Length,Sepal.Width,method = "pearson")


cor.test(Petal.Length,Petal.Width,method = "pearson")
#p values is < 0.05 therefore we reject H0
#hence there is significant cirrelation between them\



#associaiton 
#chi square test for testing the association between
#two variables

data1 <- mtcars

result <- chisq.test(data1$wt, data1$qsec)
result

result <- chisq.test(data1$gear, data1$carb)
result

View(iris)


#hellloooo




#install.packages("dplyr")

library(dplyr)


mydata <- data.frame(iris)

mydata
summary(mydata)

str(mydata)

set.seed(123)


#sample n rows randomly from the dataframe
mydata2 <- sample_n(mydata,3)

mydata2


#sample p percentage from entire rows
mydata1 <- sample_frac(mydata,.01)

mydata1


#eliminate duplicate values
rem0 <- distinct(mydata)
rem0

rem1 <- distinct(mydata, Species, .keep_all = T)
rem1

#if  keepall = falsse it returns just that column
rem2 <- distinct(mydata, Species, .keep_all = F)
rem2


#displays unique pais of data
rem3 <- distinct(mydata, Sepal.Length,Species,  .keep_all = F)
rem3


#select a specific column
subcol.species <- select(mydata,Species)
subcol.species

#subset rows with column values
#subset data with matching logical conditions
filter.rows <- filter(mydata, Species == "virginica")
filter.rows

mydata


filter.rows1 <- filter(mydata, Species %in% c("virginica","setosa"))
filter.rows1



mydata11<- select(mydata, -Sepal.Length,-Sepal.Width)
mydata11

mydata12<- select(mydata, starts_with("S"))
mydata12

mydata13<- select(mydata, -starts_with("S"))
mydata13

#reordering variables
mydata14<- select(mydata, Species, everything())
mydata14


#rename() function
mydata15<- rename(mydata, Category = Species)
mydata15



m1= matrix(c(1:10),5,6)


am1 <- apply(m1, 1, mean)
am1
am2 <- apply(m1, 2, mean)
am2



#sapply() function take list, vector or dataframe as input
#and gives






movies <- c("spiderman","Batman","Vertigo", "Chinatown")
movies.lower <- lapply(movies, tolower)
movies.lower
str(movies.lower)


movies.lower2 <- unlist(lapply(movies, tolower))
movies.lower2


dt <-cars

amn






























