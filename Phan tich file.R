#Sorting the data
getwd()
setwd('C:\\Users\\DELL\\Documents\\thinhda\\Alo')
squid = read.table(file = "squid.txt", header = TRUE)
squid
#Sap xep cot month theo thu tu tang dan
ord1 = order(squid$Month)
#Hien thi luon ca bang squid
squid[ord1,]
#Lay cot GSI theo thu tu sap xep cua month
squid$GSI[ord1]
#Noi 2 tep du lieu lai voi nhau
sq1 = read.table(file="squid1.txt", header = TRUE)
sq2 = read.table(file="squid2.txt", header = TRUE)
sq3 = merge(sq1, sq2, by="Sample")
sq3
#Xuat du lieu
sq4 = squid[squid$Sex==1,]
write.table(sq4, file="Malesquid.txt",sep = " ",quote = FALSE, append=FALSE, na = "NA")
#Sep: ngan cach gia cac cot du lieu la dau space
#quote=FALSE: ngan chan cac ky tu dac biet o trong phan headings
#append=FALSe: tao 1 file moi
#na="NA": o du lieu nao trong thi dien vo la NA
write.table(sq4, file="Malesquid.txt",sep = ",",quote = TRUE, append=FALSE, na = "NA")
str(squid)
squid$fSex = factor(squid$Sex, levels = c(1, 2), labels = c("M","F"))
squid$fSex
#squid$sex; 1 => "M" ; 2 => "F"
boxplot(GSI~fSex, data = squid)
M1 = lm(GSI~fSex+Location, data = squid)
M1
summary(M1)
#Ham                      Muc dich
#write.table             Ghi 1 bien vao 1 file text
write.table(z, file = "test.txt")
#order                   sap xep du lieu
order(x)
#merge                   Ghep 2 dataframe
merge(x, y, by = "ID")
#attach                  Tao cac bien trong dataframe
attach(squid)
Sex
#str                     Hien thi cau truc bien trong 1 doi tuong
str(Sex)
#factor                  Du lieu luu tru nhom