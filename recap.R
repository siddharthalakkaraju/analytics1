#DF
(sname=paste('student',1:30,sep='_'))
(marks=trunc(runif(n=30,max=90,min=50)))
runif(30)
(gender=sample(c('M','F'),replace=T,size=30,prob=c(0.7,0.3)))
?runfi
?runif
df1=data.frame(sname, marks, gender)
head(df1)

library(dplyr)
df1 %>% group_by(gender) %>% summarize(mean(marks),n(),min(marks),max(marks))
df1[(order(df1$marks,decreasing = T)), c('sname','marks')]
c('sname','marks')

df1 %>% select(sname, marks) %>% arrange(desc(marks))
