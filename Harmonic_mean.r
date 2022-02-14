x <- scan()
n=length(x)
k=0
for (i in 1:n) {
  k=k+(1/x[i])
}
hm=n/k
sprintf("harmonic mean is %f",hm)
