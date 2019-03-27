FitTraining<-lm(Training$y~Training$x1+Training$x2+Training$x3+Training$x4+Training$x5+Training$x6+Training$x7+Training$x8+Training$x9+Training$x10+Training$x11+Training$x12+Training$x13+Training$x14+Training$x15+Training$x16+Training$x17+Training$x18+Training$x19+Training$x20+Training$x21+Training$x22+Training$x23+Training$x24+Training$x25+Training$x26+Training$x27+Training$x28+Training$x29+Training$x30+Training$x31+Training$x32+Training$x33+Training$x34+Training$x35+Training$x36)
summary(FitTraining)

#Residual standard error: 315.6 on 1010 degrees of freedom
#Multiple R-squared:  0.9679,	Adjusted R-squared:  0.9668 
#F-statistic:   846 on 36 and 1010 DF,  p-value: < 2.2e-16

FitTrainingBackwards<-lm(Training$y~Training$x1+Training$x2+Training$x3+Training$x4+Training$x5+Training$x6+Training$x9+Training$x10+Training$x11+Training$x12+Training$x13+Training$x14+Training$x16+Training$x17+Training$x19+Training$x21+Training$x22+Training$x23+Training$x24+Training$x25+Training$x27+Training$x28+Training$x29+Training$x31+Training$x33+Training$x34+Training$x36)
summary(FitTrainingBackwards)

# Residual standard error: 316.6 on 1019 degrees of freedom
# Multiple R-squared:  0.9674,	Adjusted R-squared:  0.9665 
# F-statistic:  1120 on 27 and 1019 DF,  p-value: < 2.2e-16

FitTrainingVIF<-lm(Training$y~Training$x1+Training$x3+Training$x5+Training$x6+Training$x13+Training$x14+Training$x17+Training$x19+Training$x25+Training$x33+Training$x34+Training$x36)
summary(FitTrainingVIF)
#Removal of non-significant VIF (x5 with p-value of .41108)
FitTrainingVIF1<-lm(Training$y~Training$x1+Training$x3+Training$x6+Training$x13+Training$x14+Training$x17+Training$x19+Training$x25+Training$x33+Training$x34+Training$x36)
summary(FitTrainingVIF1)
#Removal of non-significant VIF (x1 with p-value of .11196)
FitTrainingVIF2<-lm(Training$y~Training$x3+Training$x6+Training$x13+Training$x14+Training$x17+Training$x19+Training$x25+Training$x33+Training$x34+Training$x36)
summary(FitTrainingVIF2)
#Removal of non-significant VIF (x13 with p-value of .05689)
FitTrainingVIF3<-lm(Training$y~Training$x3+Training$x6+Training$x14+Training$x17+Training$x19+Training$x25+Training$x33+Training$x34+Training$x36)
summary(FitTrainingVIF3)

#Residual standard error: 511.3 on 1037 degrees of freedom
#Multiple R-squared:  0.9135,	Adjusted R-squared:  0.9127 
#F-statistic:  1216 on 9 and 1037 DF,  p-value: < 2.2e-16

#Summary of VIF from full model
FitTrainingvVIF<-lm(Training$y~Training$x1+Training$x14+Training$x15+Training$x17+Training$x18+Training$x32+Training$x33+Training$x34+Training$x35)
summary(FitTrainingvVIF)

#Residual standard error: 484.1 on 1037 degrees of freedom
#Multiple R-squared:  0.9225,	Adjusted R-squared:  0.9218 
#F-statistic:  1371 on 9 and 1037 DF,  p-value: < 2.2e-16

