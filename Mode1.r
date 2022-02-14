x <- scan()
c <- vector()
n=length(x)
for (i in 1:(n-1)) {
  c[i] <- 0
  for(j in (i+1):n) {
    if(x[i]==x[j]) {
      c[i] <- c[i]+1
    }
  }
}
print(c)
big=c[1]
pos=1
for (i in 2:(n-1)) {
  if(big <c[i]) {
    c[i]=big
    pos=i 
  }
}
sprintf("mode is %d",x[pos])
