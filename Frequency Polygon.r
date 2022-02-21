temparature <- scan()
time <- scan()
d <- data.frame(temparature,time)
d
write.csv(d,"temparature.csv")
a <- read.csv("temparature.csv")
a
plot(a$temparature,type="o",xlab="time",ylab="temparature",main="time vs temperature",xlim=c(0,10),ylim=c(0,50),col="blue")

