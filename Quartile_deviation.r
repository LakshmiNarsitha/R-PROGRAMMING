x <- scan()
n=length(x)/2
z=sort(x)
print(z)
if(n%%2==0) {
  q3 <- (1/2)(z[(3*n)/2]+z[(3*(n+1))/2])
  print(q3)
  q1 <- (1/2)(z[n/2]+z[(n+1)/2])
  print(q1)
} else {
  q3 <- z[(3*(n+1))%/%4]
  print(q3)
  q1 <- z[(n+1)%/%4]
  print(q1)
}
qd=(q3-q1)/2
sprintf("quartile deviation is %f",qd)
