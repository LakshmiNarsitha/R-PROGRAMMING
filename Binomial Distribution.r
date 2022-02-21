x <- scan()
f <- scan()
fx <- f*x
sumf <- sum(f)
sumfx <- sum(fx)
n=length(x)-1
p=sumfx/sumf/n
p=round(p,4)
pr <- dbinom(0:n,size=n,prob=p)
pr <- round(pr,5)
fr <- pr*sumf
fr <- round(fr,digits=2)
fre <- round(fr,0)
d <- data.frame(x,f,fx,pr,fr,fre)
d
l <- c(NA,sumf,sumfx,NA,NA,NA)
bindata <- rbind(d,l)
print(bindata,row.names=FALSE)
result <- chisq.test(f,p=pr,rescale.p=TRUE)
result
tablevalue <- qchisq(.95,df=n)
tablevalue
k=result[1][1]
if(k<tablevalue) {
  print("accept")
} else {
  print("reject")
}
