x <- scan()
f <- scan()
fx <- f*x
sumf <- sum(f)
sumfx <- sum(fx)
n=length(x)-1
p=sumfx/sumf
pr <- dpois(0:n,lambda=p)
pr <- round(pr,digits=5)
fe <- sumf*pr
fe <- round(fe,2)
fre <- round(fe,0)
d <- data.frame(x,f,fx,pr,fe,fre)
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
