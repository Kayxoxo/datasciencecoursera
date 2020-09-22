######## 17th September 2020 #####
x<-(1:3)
x
##### Reading tabular data into R
### read.table,read.csv
read.table("try.exe")
read.csv("try")
?read.table
y<-data.frame(a=1,b="a")
dput(y)
dget(y)
k<-c(1:20)
dump(c("k","y",file = "reg.R"))
u<-c("a","b", "c","d", "e")

########## Subsetting basics
u[1]
u[1:3]
u[u > "b"]
v<-list(yolo=1:5,bar = 0.5,baz="Yello World")
v[1]
v[[1]]
v$bar
v[c(1,3)]
########## Nested Subsetting
w<-list(a=list(10,12,14),b =c(3.14,2.81))
w[[c(1,3)]]
w[[c(2,2)]]

########## Subsetting a matrix
r<-matrix(1:6,2,3)
r
r[1,]
r[,2]
r[1,3]
r[2,3,drop= FALSE]



########## PARTIAL MATCHING
C<-list(ark=1:7)
C$a
C[["a", exact = FALSE]]



########### REMOVING MISSING VALUES
t<-c(1,2,NA,4,NA,6,7)
na<-is.na(T)
t[!na]
s<-c("a","b",NA,NA,"d","e",NA)
good<-complete.cases(s,t)
good
t[good]
s[good]
?airquality
airquality[1:6,]
great<-complete.cases(airquality)
airquality[great,][1:6,]


######## Vectorized Operations
ark<-1:4
tap<-6:9
ark+tap
e<-matrix(1:4,2,2); y<-matrix(rep(10,4),2,2)
e+y
e*y # elementwise multiplication

e%*% y ### true matrix multiplication



x&It;-4
x<-4
class(x)
x<-c(4,"a", TRUE)
class(x)
x<-c(1,3,5)
y<-c(3,2,10)
rbind(x,y)
x<-list(2,"a","b",TRUE)
class(x[[1]])
x<-1:4
y<-2:3
class(x+y)
x<-c(17,14,4,5,13,12,10)
x[x>10]==4
x
x[x==4]>10
x[x>10]<-4### setting all elements of the vector that are greater
# than 10 to 4
air[x<-10]<-4
airquality
colnames(airquality)
airquality[c(152,153),]
airquality[47,]
mean(airquality$Ozone, NA= FALSE)
airquality$Ozone
ask<-na.omit(airquality)
mean(airquality$Ozone)
as.integer(airquality$Ozone)
ask$Ozone
mean(ask$Ozone)
extrcat<-ask[c("Ozone">31,),]
Temp<-work[work$Month == 6,]
work<-c(airquality,na.rm= TRUE)
may<-ask[ask$Month==5,]
mean(Temp$Temp)
max(may$Ozone)
awe<-subset(ask,Ozone > 120&Temp > 35)
mean(awe$Solar.R)
