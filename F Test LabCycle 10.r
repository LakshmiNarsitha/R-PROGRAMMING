print("enter x value :")
x<-scan()
print("enter y value :")
y<-scan()
print("enter level of significance :")
alpha<-scan()
n1<-length(x)
n2<-length(y)
sd1<-sd(x)
sd2<-sd(y)
if (sd1>sd2) { 
  fvalue<-sd1^2/sd2^2 
} else {
  fvalue<-sd2^2/sd1^2
}
xbar<-mean(x)
ybar<-mean(y)
f$statistic
fcal=f$statistic
sprintf("F value using program is %f ",fcal)
f<-var.test(x,y)
if (sd1>sd2) { 
  ftab<-qf(1-alpha,n1-1,n2-1)
} else {
  ftab<-qf(1-alpha,n2-1,n1-1)
}
sprintf("Table value for two-tailed test is %f",ftab)
if(fcal<ftab) {
  print("accept null hypothesis")
} else {
  print("reject null hypothesis")
}
