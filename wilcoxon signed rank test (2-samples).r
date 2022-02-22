#wilcoxon signed rank test(2-samples)
print("enter 1st sample data :")
x <- scan()
print("enter 2nd sample data :")
y <- scan()
print("enter alpha value:")
alpha <- scan()
t <- wilcox.test(x,y,paired=TRUE,alternative="two.sided")
t
p=t$p.value
p
if(p>alpha) {
  print("accept")
} else {
  print("reject")
}
