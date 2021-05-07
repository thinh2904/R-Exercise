#Cau 1
#a)
answer = 0
for (j in 3:5){answer = j+answer}
answer
#b)
answer = 10
for (j in 3:5){ answer = j+answer }
answer
#c)
answer = 10
for (j in 3:5){ answer = j*answer }
answer
#Cau 2
10*prod(3:5)
answer = 0
#Cau 3
for (i in 1:100){answer = answer+i}
answer
sum(1:100)
#Cau 4
answer = 1
for (i in 1:50){answer = answer*i}
answer
prod(1:50)
#Cau 5
r = 3:20
v = (4*pi*(r**3)/3)
bang = data.frame(radius=r, volume=v)
bang
#Cau 6
help(sapply)
sapply(tinting, is.factor)
sapply(tinting[, 4:6], levels)
sapply(tinting[, 4,:6], is.ordered)