x <- scan()
n=length(x)
k=0
for (i in 1:n) {
  k=k+x[i]
}
m=k/n
p=0
print(m)
for (i in 1:n) {
    p=p+(((x[i])-m)^2)
}
v=p/(n-1)
print(v)
sd=sqrt(v)
sprintf("standard deviation is %f",sd)
