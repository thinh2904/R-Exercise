vd2 = read.table(file = "vd2.txt")
vd2
squid = read.table(file="squid.txt", header = TRUE, dec=".")
squid
squid2 = scan(file="squid.txt", what = "number")
squid2
squid3 = scan(file="squid.txt", what = "character")
squid3
library(foreign)
?read.mtp
#Sum(Biendulieu(x), na.rm = True/False(k tinh dong du lieu trong))
#median(), max , min tuong tu
#c(vector)
#cbin(x, y, z): 
#rbin: noii cac bang du lieu theo dong
#vector
#matrix
#data.frame
#list
#setwd()
#getwd()
#read.table