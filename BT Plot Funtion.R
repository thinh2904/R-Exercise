setwd('D:/Dataset')
#Cau1:
Benthic = read.table(file = 'RIKZ2.txt', header = TRUE)
Benthic$fBeach = factor(Benthic$Beach)
plot(Benthic$Richness,type="p")
plot(Benthic$Richness,type="l")
plot(Benthic$Richness,type="b")
plot(Benthic$Richness,type="o")
plot(Benthic$Richness,type="h")
plot(Benthic$Richness,type="s")
plot(Benthic$Richness,type="n")
#Cau2:
plot.new()# tao khung bieu do moi
win.graph()# Tao cua so graph de chua bieu do minh ve
plot.window(xlim=c(0,1), ylim=c(5,10))# Tao toa do
plot(Benthic$Richness,type="o")
savePlot()# Luu bieu do
savePlot(filename = "Rplot",plot(Benthic$Richness,type="o"),device = dev.cur(),
         restoreConsole = TRUE)
locator(n=512, type = 'n') #Doc vi tri con tro khi nhan nut chuot
range() #tra ve mot vector chua toi thieu va toi da cua tat ca cac so da cho
matplot() #Ve cac cot cua ma tran so voi cot cua mot ma tran khac
persp() #Ve cac do thi phoi canh cua mot be mat tren mat phang x - y
cut() # chia pham vi 'x' thanh cac khoang va ma hoa cac gia tri 'x' theo khoang
# ma chung roi vao
split() # chia du lieu trong vector 'x' thanh cac nhom duoc xac dinh boi 'f'.