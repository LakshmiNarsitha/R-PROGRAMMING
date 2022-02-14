rank <- scan()
names <- c("srushti","yukti","pallavi","rohini","smita","swetha","yasaswini","pooja")
barplot(rank,xlab="names",ylab="rank",main="students vs rank",names.arg=names,las=2,border="blue",col=rainbow(length(names)),density=200)
