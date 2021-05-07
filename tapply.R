setwd("D:/R")
#Doc file
a = read.csv(file='Temperature.csv', header = TRUE)
#Xem co bao nhieu nam
unique(a$Year)
#Cau 1
tb1 = tapply(a$Temperature, a$Month, mean, na.rm = TRUE)
tb1
#b)
tb2 = tapply(a$Temperature, list(a$Month, a$Year), mean, na.rm = TRUE)
tb2
#b)
tb3 = tapply(a$Temperature, a$Month, sd, na.rm = TRUE)
tb3
#Cau 2
#a)
table(a$Year)
#b)
table(a$Station, a$Year)
