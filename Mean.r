x <- scan()
n=length(x)
k=0
for (i in 1:n) {
  k=k+x[i]
}
mean=k/n
sprintf("mean is %f",mean)
print("mean is " ,mean)
paste("mean is",mean)          #paste gives spaces between them
paste0("mean is " ,mean)       #paste0 do not give spaces between them
cat("mean is",mean)
