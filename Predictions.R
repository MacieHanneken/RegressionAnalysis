
fitTrainingVIF26<-lm(dfTraining$y~dfTraining$x1+dfTraining$x14+dfTraining$x15+dfTraining$x17+dfTraining$x18+dfTraining$x32+dfTraining$x33+dfTraining$x34+dfTraining$x35)
#Predict y for the training data
b_VIF2<-coef(fitTrainingVIF26)
b_VIF2<-data.matrix(b_VIF2)
X_Training<-data.matrix(dfTraining)
X_VIF2<-X_Training[,cbind("x1","x14","x15","x17","x18","x32","x33","x34","x35")]
X_VIF2<-cbind(rep(1,dim(X_VIF2)[1]),X_VIF2)
y_VIF2<-X_VIF2%*%b_VIF2
plot(y_VIF,dfTest$y,main="Comparison of VIF and Training Data", xlab="real number of violent crimes", ylab="predicted number of violent crimes")
abline(0,1)


#Predict y for the test data set (VIF)
b_VIF<-coef(fitTrainingVIF26)
b_VIF<-data.matrix(b_VIF)
X_Test<-data.matrix(dfTest)
X_VIF<-X_Test[,cbind("x1","x14","x15","x17","x18","x32","x33","x34","x35")]
X_VIF<-cbind(rep(1,dim(X_VIF)[1]),X_VIF)
y_VIF<-X_VIF%*%b_VIF
plot(y_VIF,dfTest$y,main="Prediction for VIF Model", xlab="Fitted Values", ylab="Test Data")
abline(0,1)

#Predict y for the validation data set (VIF)
b_VVIF<-coef(fitTrainingVIF26)
b_VVIF<-data.matrix(b_VVIF)
X_Validation<-data.matrix(dfValidation)
X_VVIF<-X_Validation[,cbind("x1","x14","x15","x17","x18","x32","x33","x34","x35")]
X_VVIF<-cbind(rep(1,dim(X_VVIF)[1]),X_VVIF)
y_VVIF<-X_VVIF%*%b_VVIF
plot(y_VVIF,dfValidation$y, main="Comparison of VIF and Validaton data", xlab="real number of violent crimes",ylab="predicted number of violent crimes")
abline(0,1)

