print("enter data : ")
x <- scan()
print("enter frequencies :")
f <- scan()
fx <- f*x
sumfx <- sum(fx)
sumf <- sum(f)
s<- length(x)-1
p <- sumfx/sumf/s
pr <- dbinom(0:s,size=s,prob=p)
pr <- round(pr,digits=5)
fre <-  sumf*pr
fre <- round(fre,digits=2)
fe <- round(fre,digits=0)
d <- data.frame(x,f,fx,pr,fre,fe)
l <- c(NA,sumf,sumfx,NA,NA,sum(fe))
mydata <- rbind(d,l)
print(mydata)
result <- chisq.test(f,p=pr,rescale.p=TRUE)
print(result)
calvalue <- result$statistic
sprintf("caluculated value is : %f",calvalue)
tablevalue <- qchisq(.95,df=s)
print(tablevalue)
if(calvalue<tablevalue) {
  print("accept")
} else {
  print("reject")
}

