dado= read.csv('Documents/Documents/Mutual Information FS/data_fred/abalone/abalone.data',header = F)
summary(dado$V1)
clean_dado = dado[which(dado$V1!="I"),]
y = as.numeric(clean_dado$V1) - 2
x = clean_dado[,2:9]
write.csv(y,'y_abaloneMF')
write.csv(x,'X_abaloneMF')
