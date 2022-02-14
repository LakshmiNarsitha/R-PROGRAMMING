x <- scan()
n=length(x)
k=1
for (i in 1:n) {
  k=k*x[i]
}
gm=(k)^(1/n)
sprintf("geometric mean is %f",gm)
