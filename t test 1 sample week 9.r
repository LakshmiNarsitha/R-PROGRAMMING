print("enter data :")
data <- scan()    
print("assumed mean value :")
mu <- scan()
print("enter level of significance")
alpha <- scan()
n <- length(data)
t <- t.test(data,mu=mu)
print(t)
tablevalue <- qt(1-alpha/2,df=n-1)
sprintf("table value is : %f",tablevalue)
p=t[1][1]
sprintf("calculated value is : %f",p)
if(p<tablevalue) {
  print("accept null hypothesis")
} else {
  print("reject null hypothesis")
}
