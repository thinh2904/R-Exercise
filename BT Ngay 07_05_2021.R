setwd('D:/R')
Veg <- read.table(file="Vegetation2.txt", header = TRUE)
CP <- read.table(file="CodParasite.txt", header = TRUE)
names(Veg)
#Ham kiem tra trong cot co bao nhieu bien NA
NAPerVariable <- function(X1){
  D1 <- is.na(X1)
  colSums(D1)
}
NAPerVariable(Veg)
NAPerVariable(CP)
#Ham kiem tra bien zero (0)
ZeroPerVariable <- function(X1){
  D1= (X1==0)
  colSums(D1)
}
ZeroPerVariable(Veg)
ZeroPerVariable(CP)
ZeroPerVariable <- function(X1){
  D1= (X1==0)
  colSums(D1, na.rm = TRUE)
}
ZeroPerVariable(Veg)
ZeroPerVariable(CP)


#6.3.2 Ham co nhieu tham so
VariableInfo <-function(X1, Choice1){
  if (Choice1== "Zeros") {
    D1= (X1==0)
  }
  if (Choice1== "NAs") {
    D1 <- is.na(X1)
  }
  colSums(D1, na.rm=TRUE)
}
VariableInfo(CP,"Zeros")
VariableInfo(CP,"NAs")
VariableInfo(CP,"thamso")
VariableInfo(CP)


#6.3.3
#Gan gia tri mac dinh cho Choice1
VariableInfo <-function(X1, Choice1="Zeros"){
  if (Choice1== "Zeros") {
    D1= (X1==0)
  }
  if (Choice1== "NAs") {
    D1 <- is.na(X1)
  }
  colSums(D1, na.rm=TRUE)
}
VariableInfo(CP,"Zeros")
VariableInfo(CP,"NAs")
VariableInfo(CP,"thamso")
VariableInfo(CP)


#Tham sp khong giong voi gia tri cua chung ta
#Dua ra mot thong bao
VariableInfo <-function(X1, Choice1="Zeros"){
  if (Choice1== "Zeros") {
    D1= (X1==0)
  }
  if (Choice1== "NAs") {
    D1 <- is.na(X1)
  }
  if (Choice1!= "Zeros" & Choice1 != "NAs") {
    print("You make a miss typo.You should choose: Zeros or NAs")
  }else{
    colSums(D1, na.rm=TRUE)
  }
}
VariableInfo(CP,"Zeros")
VariableInfo(CP,"NAs")
VariableInfo(CP,"thamso")
VariableInfo(CP)