x <- scan()
n=length(x)
k=0
for (i in 1:n) {
  k=k+x[i]
}
m=k/n
p=0
for (i in 1:n) {
  if(x[i]-mean>0) {
    p=p+(x[i]-mean)
  } else {
    p=p+(mean-x[i])
  }
}
md=p/n
sprintf("mean deviation is %f",md)
