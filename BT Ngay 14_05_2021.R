setwd("D:/R")
Benthic = read.table("RIKZ.txt", header = TRUE)
names(Benthic)
str(Benthic)
#Bien Species (loai) tu cot thu 2 den 76 trong bien Benthic
Species = Benthic[,2:76]
names(Species)
str(Species)
#Kiem tra dimension - chieu cua bien species
n = dim(Species)
n
#45 dong tuong ung voi 45 sites - vi tri tu thap mau vat
# Tuong ung voi moi mot vi tri se ghi nhan duoc nhung loai sinh vat bien nao?
#Co bao nhieu loai sinh vat bien o vi tri so 1
sum(Species[1,], na.rm = TRUE)
#Ket qua 143 loai sinh vat bien xuat hien o site 1
sum(Species[2,], na.rm = TRUE)
#.., Lam 45 lan de kiem tra so luong sinh vat bien
#Xuat hien o cac sites
TA = vector(length = n[1])
for (i in 1:n[1]){
  TA[i] = sum(Species[i,], na.rm = TRUE)
}
TA
#Ham rowSums: tinh toan tong cua cac cot o trong hang
# tham so na.rm = TRUE => loai bo cac gia tri rong
TA02 = rowSums(Species, na.rm = TRUE)
TA02

#Di vao chi tiet tai tung vi tri quan sat
sum(Species[1,]>0, na.rm = TRUE)
#Ket qua co 11 loai khac nhau xuat hien tai vi tri 1
Richness = vector(length = n[1])
for (i in 1:n[1]){
  Richness[i] = sum(Species[i,]>0, na.rm = TRUE)
}
Richness

Richness02 = rowSums(Species>0, na.rm = TRUE)
Richness02
#Chi so da dang loai
#Tim hieu cach tinh chi so da dang loai
#H - sum bien chay tu i -> m cua bien p: xac xuat * log10 p
RS = rowSums(Species, na.rm = TRUE)
prop = Species/RS
H = -rowSums(prop * log10(prop), na.rm = TRUE)
H
# Ket hop lai het nhung gi da lam vo 1 ham cua rieng minh
#Sau nay su dung lai de phan tich nhung du lieu tuong tu
Index.function = function(Spec, Choice){
  if (Choice == "Richness"){
    Index = rowSums(Species>0, na.rm = TRUE)
  }
  if (Choice == "Total Abundance"){
    Index = rowSums(Species, na.rm = TRUE)
  }
  if (Choice == "Shannon"){
    RS = rowSums(Species, na.rm = TRUE)
    prop = Species / RS
    Index = -rowSums(prop * log10(prop), na.rm = TRUE)
  }
  list(Index = Index, MyChoice= Choice)
}

Index.function(Species,"Shannon")










