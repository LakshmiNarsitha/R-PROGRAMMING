x <- scan()
y <- scan()
f <- scan()
xi <- (x+y)/2
fx <- f*xi
fxx <- f*xi*xi
sumf <- sum(f)
sumfx <- sum(fx)
sumfxx <- sum(fxx)
m=sumfx/sumf
v <- (sumfxx/sumf) - (m*m)
sd <- sqrt(v)
u <- pnorm(y,m,sd)
l <- pnorm(x,m,sd)
pr <- u-l
pr <- round(pr,4)
fe <- pr*sumf
fe <- round(fe,2)
fre <- round(fe,0)
sumfre <- sum(fre)
d <- data.frame(x,y,f,fx,fxx,xi,v,pr,fe,fre)
d
l <- c(NA,NA,sumf,sumfx,sumfxx,NA,NA,NA,NA,sumfre)
normdata <- rbind(d,l)
print(normdata,row.names=FALSE)
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
