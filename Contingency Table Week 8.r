m<-as.table(rbind(c(190,243,197),c(82,44,44),c(23,78,34),c(5,12,8)))
dimnames(m)=list(Empcategory=c("Labour","Clerks","Technicians","Executives"), BonusSchemes=c("Type1","Type2","Type3"))
csum<-colSums (m)
rsum<-rowSums (m)
n1 <- nrow(m)
n2 <- ncol(m)
n=(n1-1)*(n2-1)
mytable<-(rbind(m,csum))
print(mytable)
mytable<-(cbind(m,rsum))
print(mytable)
result<-chisq.test(m)
print(result$expected)
calvalue <- test[1]
sprintf("calculated value is : %f",calvalue)
tablevalue <- qchisq(.95,n)
sprintf("tablevalue is : %f",tablevalue) 
if(calvalue<tablevalue) {
  print("accept null hypothesis")
} else {
  print("reject nyll hypothesis")
}

