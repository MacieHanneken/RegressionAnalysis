#VIF model
fitTrainingVIF26<-lm(dfTraining$y~dfTraining$x1+dfTraining$x14+dfTraining$x15+dfTraining$x17+dfTraining$x18+dfTraining$x32+dfTraining$x33+dfTraining$x34+dfTraining$x35)
vif(fitTrainingVIF26)

#Partial Correlation Model
FitTraining19<-lm(dfTraining$y~+dfTraining$x2+dfTraining$x3+dfTraining$x4+dfTraining$x9+dfTraining$x10+dfTraining$x11+dfTraining$x13+dfTraining$x16+dfTraining$x17+dfTraining$x18+dfTraining$x21+dfTraining$x22+dfTraining$x27+dfTraining$x28+dfTraining$x32+dfTraining$x34+dfTraining$x35+dfTraining$x36)
vif(FitTraining19)

#Backwards Model: p-value
FitTrainingBackwards<-lm(dfTraining$y~dfTraining$x1+dfTraining$x2+dfTraining$x3+dfTraining$x4+dfTraining$x5+dfTraining$x6+dfTraining$x9+dfTraining$x10+dfTraining$x11+dfTraining$x12+dfTraining$x13+dfTraining$x14+dfTraining$x16+dfTraining$x17+dfTraining$x19+dfTraining$x21+dfTraining$x22+dfTraining$x23+dfTraining$x24+dfTraining$x25+dfTraining$x27+dfTraining$x28+dfTraining$x29+dfTraining$x31+dfTraining$x33+dfTraining$x34+dfTraining$x36)
vif(FitTrainingBackwards)

#Backwards Model: AIC
FitTrainingBackwardsAIC<-lm(dfTraining$y~dfTraining$x1+dfTraining$x2+dfTraining$x3+dfTraining$x4+dfTraining$x5+dfTraining$x6+dfTraining$x7+dfTraining$x9+dfTraining$x10+dfTraining$x11+dfTraining$x12+dfTraining$x13+dfTraining$x14+dfTraining$x15+dfTraining$x16+dfTraining$x17+dfTraining$x18+dfTraining$x19+dfTraining$x21+dfTraining$x22+dfTraining$x23+dfTraining$x24+dfTraining$x25+dfTraining$x27+dfTraining$x28+dfTraining$x29+dfTraining$x31+dfTraining$x32+dfTraining$x33+dfTraining$x34+dfTraining$x35+dfTraining$x36)
vif(FitTrainingBackwardsAIC)

#Foward Model: AIC
FitTrainingForwardAIC<-lm(dfTraining$y~dfTraining$x1+dfTraining$x2+dfTraining$x3+dfTraining$x6+dfTraining$x7+dfTraining$x9+dfTraining$x10+dfTraining$x11+dfTraining$x13+dfTraining$x16+dfTraining$x17+dfTraining$x18+dfTraining$x19+dfTraining$x20+dfTraining$x21+dfTraining$x22+dfTraining$x23+dfTraining$x24+dfTraining$x25+dfTraining$x27+dfTraining$x28+dfTraining$x29+dfTraining$x32+dfTraining$x34+dfTraining$x35+dfTraining$x36)
vif(FitTrainingForwardAIC)

#Stepwise Model: AIC
FitTrainingStepwiseAIC<-lm(dfTraining$y~dfTraining$x2+dfTraining$x3+dfTraining$x6+dfTraining$x7+dfTraining$x9+dfTraining$x10+dfTraining$x11+dfTraining$x13+dfTraining$x16+dfTraining$x17+dfTraining$x18+dfTraining$x19+dfTraining$x20+dfTraining$x21+dfTraining$x22+dfTraining$x23+dfTraining$x24+dfTraining$x25+dfTraining$x27+dfTraining$x28+dfTraining$x29+dfTraining$x32+dfTraining$x34+dfTraining$x35+dfTraining$x36)
vif(FitTrainingStepwiseAIC)
