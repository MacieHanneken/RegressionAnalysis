#Normality
fitTrainingvVIF26<-lm(dfTraining$y~+dfTraining$x1+dfTraining$x14+dfTraining$x15+dfTraining$x17+dfTraining$x18+dfTraining$x32+dfTraining$x33+dfTraining$x34+dfTraining$x35)
qqPlot(fitTrainingvVIF26, distribution="norm")
shapiro.test(y)
#Homogeneity of Variance for VIF:
beta1<-coef(fitTrainingvVIF26)
beta1<-as.matrix(beta1)
row.names(beta1)<-NULL
column.names(beta1)<-NULL

Test_VIFModel<-dfTest[,c("x1","x14","x15","x17","x18","x32","x33","x34","x35")]
Test_VIFModel1<-as.matrix.data.frame(Test_VIFModel)
c<-rep(1,1049)
X<-cbind(c,Test_VIFModel1)
y=X%*%beta1

Training_VIFModel<-dfTraining[,c("x1","x14","x15","x17","x18","x32","x33","x34","x35")]
Training_VIFModel1<-as.matrix.data.frame(Training_VIFModel)
c<-rep(1,1047)
X<-cbind(c,Training_VIFModel1)
y=X%*%beta1

residuals_Training_VIF<-Training$y-y

plot(y,residuals_Training_VIF)
#studentized residuals
SSE_VIF<-t(dfTraining$y)%*%dfTraining$y-t(beta1)%*%t(X)%*%dfTraining$y
MSE_VIF<-SSE_VIF/(length(dfTraining$y)-length(beta1))
plot(y,residuals_Training_VIF/rep(sqrt(MSE_VIF),length(residuals_Training_VIF)), main="VIF Model",xlab="Fitted Values", ylab="Studentized Resiuals")
abline(0,0)
abline(3,0)
abline(-3,0)

#Linearity assumption
crPlots(fitTrainingvVIF26)



