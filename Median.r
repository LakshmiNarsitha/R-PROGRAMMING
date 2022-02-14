k <- scan()
f <- function(k) {
  z <- sort(k)
  n=length(k)
  if(n%%2==0) {
    r=n%/%2
    med=(z[r]+z[r+1])/2
    return (med)
  } else {
    r=(n+1)%/%2
    med=z[r]
    return (med)
  }
}
median=f(k)
sprintf("meadian is %f",median)
