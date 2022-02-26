#MANN WHITNEY U TEST
print("enter 1st data:")
x <- scan()
print("enter 2nd data:")
y <- scan()
print("enter level of significance:")
alpha <- scan()
t <- wilcox.test(x,y,alternative="two.sided")
t
tcal=t$p.value
if(tcal>alpha) {
  print("accept")
} else {
  print("reject")
}
