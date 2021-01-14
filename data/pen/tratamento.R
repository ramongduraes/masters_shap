dados1 <- read.csv('Documents/Ativo/Mutual Information FS/data_fred/pen/pendigits.tes',header = F)
dados2 <- read.csv('Documents/Ativo/Mutual Information FS/data_fred/pen/pendigits.tra',header = F)

index6_1 <- which(dados1$V17==6)
index6_2 <- which(dados2$V17==6)
index9_1 <- which(dados1$V17==9)
index9_2 <- which(dados2$V17==9)

A <- dados1[index6_1,]
B <- dados2[index6_2,]
C <- dados1[index9_1,]
D <- dados2[index9_2,]

adapted_pen <- rbind(A,B,C,D)
class6 <- which(adapted_pen$V17==6)
adapted_pen$V17[class6]=1
adapted_pen$V17[-class6]=-1

write.csv(adapted_pen,file = "Documents/Ativo/Mutual Information FS/data_fred/pen/pen_2class")
