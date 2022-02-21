age <- scan()
rank <- scan()
grade <- scan()
names=c("Abdhija","Dhairya","Dhatri","Yukti","Swetha","Pallavi","Smita","Medha","yasaswini","Vasudha")
d <- data.frame(age,rank,grade,names)
d
write.csv(d,"students data.csv")
a <- read.csv("students data.csv")
a
barplot(a$age)
barplot(a$age,xlab="names of students",ylab="age",main="students names and age",names.arg=names,border="black",col=rainbow(length(age)),las=2,density=300,ylim=c(0,50))
