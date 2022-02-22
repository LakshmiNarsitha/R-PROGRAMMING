#wilcoxon signed rank test(1-sample)
print("enter data :")
x <- scan()
print("enter mu value")
mu <- scan()
print("enter alpha value:")
alpha <- scan()
t <- wilcox.test(x,mu=mu,alternative="two.sided")
t
p=t$p.value
p
if(p>alpha) {
  print("accept")
} else {
  print("reject")
}
