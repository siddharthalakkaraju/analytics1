#initial commands
#assign
x1 = 3
x2<-3
x1
x2
y
ls()
women
data()
?AirPassengers
library()  
?mean
library()
?mean
x=0:10
x

x = c(0:10, 50:65)
x
xm <- mean(x)
c(xm, mean(x, trim = 0.2))
x = c(1,1,1,1,1,1,1,1,1,1,1)
xm = trim(x,0.1)
methods(class='matrix')
plot(1:100)
plot(women)
seq(1, 4, by=0.5)
rep(1:3,times=4)
x=rep(c(1,3,5,7,9), times=2)
x?rep
x
sort(x)
class(x)
(x3=c('a', 'XYZ'))
LETTERS[1:10]
x5a = c(0.74, 1.66, 4.23)
as.integer(x5a)
(x6=seq(0,100,by=3))
length(x6)
as.integer((rev(x6[10:32])))
x6[rev(c(3,4,6,2))]
x6[x6>=30&x6<40]           
x6[-(length(x6)-1)]
set.seed(1234)
(x7=sample(1:50))
sort(x7, decreasing = T)
rev(x7)
sum(x7)

(x=seq(1,5,length.out = 10))
x=NULL
x[4]

?distribution
?dnorm
(x=rnorm(1000))
plot(density(x))
abline(v=c(-3,0,3))
mean(x)
(x1 = rnorm(100, mean=50, sd=5))
plot(density(x1))  
hist(x1)
hist(x1, freq=F)
lines(density(x1), col=2)
quantile(x1,seq(0,1,0.1))
stem(x1)
plot(stem(x1))

m1=matrix(100:111, nrow=4)
m1
(m2=matrix(100:111, ncol =3, byrow=T))
m2[2,3]
dim(m1)
attributes(m1)
(colnames(m1)=paste('c',1:3,sep=''))
(rownames(m1)=paste("r",1:4,sep=''))
m1
attributes(m1)
m1[,c('c1','c3')]
(m3=1:24)
dim(m3)=c(6,4)
dim(m3)[2]
t(m3)
(rownames(m3)=paste('r',1:dim(m3),sep=''))
(colnames(m3)=paste('c',1:dim(m3)[2],sep=''))
?addmargins
addmargins(m1,1,sum)
addmargins(m1,margin=1,sd)
(addmargins(m1,c(1,2),list(list(mean,sum,max,min),list(var,sd,max,min))))

#dataframe
(rollno=1:30)
(sname = paste('student',1:30,sep=""))
(gender = sample(c('M','F'),size=30,replace=T,prob=c(0.7,0.3)))
table(gender)
prop.table(table(gender))
(marks1 = floor(rnorm(30,mean=50,sd=10)))
(marks2 = ceiling(rnorm(30,40,5)))
(course = sample(c('BBA','MBA'),size=30,replace=T,prob = c(0.5,0.5)))
rollno;sname;gender
marks1;marks2;course
df1=data.frame(rollno, sname, gender, marks1, marks2, course, stringsAsFactors = F)

str(df1)
head(df1)
head(df1,n=3)
tail(df1)
class(df1)
summary(df1)
df1$sname
boxplot(marks1 ~ gender + course, data = df1)
df1$gender
df1$gender = factor(df1$gender)
df1$course = factor(df1$course)
boxplot(marks2 ~ gender + course, data = df1)
summary(df1)
aggregate(df1$marks1, by=list(df1$gender), FUN=sum)
aggregate(cbind(marks1,marks2)~gender, data=df1,FUN=max)
aggregate(cbind(marks1,marks2)~gender+course, data=df1,FUN=mean)
?aggregate
