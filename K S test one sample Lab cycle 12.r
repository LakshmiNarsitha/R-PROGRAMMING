print("enter data :")
x <- scan()
print("enter alpha :")
alpha <- scan()
#print("enter mu value :")
#mu <- scan()
#print("enter sd :")
#sd <- scan()
t <- ks.test(x,"punif")
t
#t <- ks.test(x,"pexp",alpha*100)
#t
#t <- ks.test(x,"pnorm",mu,sd)
#t
p <- t$p.value
if(p>alpha) {
  print("accept null hypothesis")
} else {
  print("reject null hypothesis")
}

