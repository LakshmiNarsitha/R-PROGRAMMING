print("enter 1st data :")
x <- scan()
print("enter 2nd data :")
y <- scan()
print("enter alpha value :")
alpha <- scan()
t <- wilcox.test(x,y,alternative = "two.sided")
print(t)
#t <- wilcox.test(x,y,alternative = "greater")
#print(t)
#t <- wilcox.test(x,y,alternative = "less")
#print(t)
ucal <- t$p.value
if(ucal>alpha) {
  print("accept null hypothesis")
} else {
  print("reject null hypothesis")
}
