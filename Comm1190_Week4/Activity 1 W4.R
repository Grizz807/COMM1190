addata<-read.csv("Advertising.csv")

pairs(addata)

cor(addata)

summary(lm(Sales~ TV + Radio + Newspaper,data=addata))

lmSales_TVRadio <- lm(Sales~ TV + Radio , data = addata)
summary(lmSales_TVRadio)

confint(lmSales_TVRadio)

lmSales_tgt <- lm(Sales~ TV+ Radio + Radio:TV, data = addata)
summary(lmSales_tgt)
