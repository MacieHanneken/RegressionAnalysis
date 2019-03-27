#Full Model
FitTraining<-lm(dfTraining$y~dfTraining$x1+dfTraining$x2+dfTraining$x3+dfTraining$x4+dfTraining$x5+dfTraining$x6+dfTraining$x7+dfTraining$x8+dfTraining$x9+dfTraining$x10+dfTraining$x11+dfTraining$x12+dfTraining$x13+dfTraining$x14+dfTraining$x15+dfTraining$x16+dfTraining$x17+dfTraining$x18+dfTraining$x19+dfTraining$x20+dfTraining$x21+dfTraining$x22+dfTraining$x23+dfTraining$x24+dfTraining$x25+dfTraining$x26+dfTraining$x27+dfTraining$x28+dfTraining$x29+dfTraining$x30+dfTraining$x31+dfTraining$x32+dfTraining$x33+dfTraining$x34+dfTraining$x35+dfTraining$x36)
summary(FitTraining)
PRESS(FitTraining)

#Residual standard error: 315.6 on 1010 degrees of freedom
#Multiple R-squared:  0.9679+	Adjusted R-squared:  0.9668 
#F-statistic:   846 on 36 and 1010 DF+  p-value: < 2.2e-16
#PRESS: 564822990

#Summary of VIF Model
fitTrainingVIF26<-lm(dfTraining$y~dfTraining$x1+dfTraining$x14+dfTraining$x15+dfTraining$x17+dfTraining$x18+dfTraining$x32+dfTraining$x33+dfTraining$x34+dfTraining$x35)
summary(fitTrainingVIF26)
PRESS(fitTrainingVIF26)
anova(fitTrainingVIF26)

#Sum of Square Error VIF Validaiton


SSE_VIF_Val<-t(dfValidation$y)%*%dfValidation$y-t(beta1)%*%t(X)%*%dfValidation$y


#Residual standard error: 484.1 on 1037 degrees of freedom
#Multiple R-squared:  0.9225+	Adjusted R-squared:  0.9218 
#F-statistic:  1371 on 9 and 1037 DF+  p-value: < 2.2e-16
#PRESS: 455275482

