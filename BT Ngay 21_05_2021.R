setwd('D:/Dataset')
#Su dung boxplot de hien thi du lieu owl data
#Roulin va Bersier (2007)
#Xem xet hanh vi cua con cú con xem no phan ung ntn
#Khi ma co su hien dien cua cú bo voi cu me?
#21.30 den 5.30 qua 2 dem
Owls = read.table(file = 'Owls.txt', header = TRUE)
Owls
names(Owls)
str(Owls)
boxplot(Owls$NegPerChick)
par(mfrow = c(2,2), mar = c(3,3,2,1))
boxplot(NegPerChick ~ SexParent, data = Owls)
boxplot(NegPerChick ~ FoodTreatment, data = Owls)
boxplot(NegPerChick ~ SexParent*FoodTreatment, data = Owls)
boxplot(NegPerChick ~ SexParent*FoodTreatment,
        names = c('F/Dep','M/Dep','F/Sat','M/Sat'),
        data = Owls)
boxplot(NegPerChick ~ ï..Nest, data = Owls)
par(mar=c(2,2,3,3))
boxplot(NegPerChick ~ ï..Nest, data = Owls,
        axes = FALSE, ylim = c(-10, 8.5))
axis(2,at=c(0,2,4,6,8))
text(x=1:27, y=-2, labels = unique(Owls$ï..Nest),
     cex=0.75, srt=90)
#cex : fint size, mac dinh bang 1
#srt: goc nghieng
#7.3 Boxplot su dung cho du lieu sinh vat bien RIKZ2.txt
#Ve bieu do Boxplot giua 
#Rickness ~ Beach
RIKZ = read.table(file = 'RIKZ2.txt', header = TRUE)
RIKZ
names(RIKZ)
str(RIKZ)
boxplot(Richness ~ Beach, data = RIKZ,
        col = rainbow(9),
        xlab = 'Beach',
        ylab = 'Richness')
#Ve bieu do boxplot giua R ~ Transect cua dataset vegetation2.txt
Veg = read.table(file = 'vegetation2.txt', header = TRUE)
names(Veg)
str(Veg)
boxplot(R ~ Transect, data = Veg,
        col = rainbow(8),
        xlab = 'Transect',
        ylab = 'R')
