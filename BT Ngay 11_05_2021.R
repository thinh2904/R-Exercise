setwd('D:/RR')
#Doc file
owls = read.table(file="owls.txt",header=TRUE)
owls
#Lay tat ca cac ten trong Nests
allnests = unique(owls$ï..Nest)
#So phan tu co trong allnests
n = length(allnests)

for (i in 1:n){
  nest.i = allnests[i] #Lay lan luot cac phan tu co trong allnests vao nest.i
  print(nest.i)
  owls.i = owls[owls$ï..Nest == nest.i,]
  filename = paste(nest.i, ".jpg", sep = "") #Dat ten file tu ten cua cac phan tu co trong allnest theo thu tu
  jpeg(file = filename) #Lenh luu anh
  #Ve do thi
  plot(x = owls.i$SiblingNegotiation, y = owls.i$ArrivalTime,
       xlab = "SiblingNegotiation",
       ylab = "ArrivalTime",
       main = nest.i)
  dev.off()
}


b = owls$FoodTreatment
for (i in 1:length(b)){
  if (owls$FoodTreatment[i] == "Satiated"){
    owls$NextNinght[i] = paste("Deprived")
  }else{
    owls$NextNinght[i] = paste("Satiated")
  }
}
owls