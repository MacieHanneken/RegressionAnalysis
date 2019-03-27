#Partail Correlation Matrix
> Xmatrix<-cbind(Training)
  options(max.print=1000000)
> pcor(Xmatrix [,4:39],method= c("pearson"))
#Data Frame without x31
Training2<-data.frame(Training$x1,Training$x2,Training$x3,Training$x4,Training$x5,Training$x6,Training$x7,Training$x8,Training$x9,Training$x10,Training$x11,Training$x12,Training$x13,Training$x14,Training$x15,Training$x16,Training$x17,Training$x18,Training$x19,Training$x20,Training$x21,Training$x22,Training$x23,Training$x24,Training$x25,Training$x26,Training$x27,Training$x28,Training$x29,Training$x30,Training$x32,Training$x33,Training$x34,Training$x35,Training$x36)
Xmatrix2<-cbind(Training2)
options(max.print=1000000)
pcor(Xmatrix2,method= c("pearson"))
#Data Frame without x26
Training3<-data.frame(Training$x1,Training$x2,Training$x3,Training$x4,Training$x5,Training$x6,Training$x7,Training$x8,Training$x9,Training$x10,Training$x11,Training$x12,Training$x13,Training$x14,Training$x15,Training$x16,Training$x17,Training$x18,Training$x19,Training$x20,Training$x21,Training$x22,Training$x23,Training$x24,Training$x25,Training$x27,Training$x28,Training$x29,Training$x30,Training$x32,Training$x33,Training$x34,Training$x35,Training$x36)
Xmatrix3<-cbind(Training3)
options(max.print=1000000)
pcor(Xmatrix3,method= c("pearson"))