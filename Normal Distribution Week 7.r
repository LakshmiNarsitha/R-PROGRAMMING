print("enter x values : ")
x <- scan()
print("enter y values :")
y <- scan()
print("enter frequencies :")
f <- scan()
xi <- (x+y)/2
fx <- f*xi
fxx <- f*xi*xi
sumfxx <- sum(fxx)
sumfx <- sum(fx)
sumf <- sum(f)
s<- length(x)-1
m <- sumfx/sumf
sd<-(sumfxx/sumf)-(m*m)
sd<-sqrt(sd)
u<-pnorm(y,m,sd)
l<-pnorm(x,m,sd)
pr<-u-l
u<-round(u,digits=5)
l<-round(l,digits=5)
pr<-round(pr,digits=5)
fee<-(pr*sumf)
fe<-round(fee,digits=0)
d<- data.frame(x,y,xi,f,fx,fxx,pr,fee,fe)
l<-c(NA,NA,NA,sumf,sumfx,sumfxx,NA,NA,sum(fe))
mydata<-rbind(d,l)
print(mydata)
result <- chisq.test(f,p=pr,rescale.p=TRUE)
print(result)
calvalue <- result$statistic
sprintf("caluculated value is : %f",calvalue)
tablevalue <- qchisq(.95,df=s)
sprintf("table value is : %f",tablevalue)
if(calvalue<tablevalue) {
  print("accept null hypothesis")
} else {
  print("reject null hypothesis")
}

