statename <- c("Andhra Pradesh","Telangana","Uttar Pradesh","Karnataka","Kerala","Tamilnadu","Gujarat")
area <- c(160205,112007,243289,191791,38863,130058,196024)
p <- round(100*area/sum(area),1)
d <- data.frame(statename,area)
d
write.csv(d,"area.csv")
a <- read.csv("area.csv")
a
pie(a$area,labels=p)
