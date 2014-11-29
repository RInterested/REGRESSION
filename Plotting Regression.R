data(swiss)
head(swiss)
par(mfrow=c(3,2))
attach(swiss)
swiss <- swiss[order(Agriculture),]
head(swiss)
plot(Fertility ~ Agriculture)
fit <-lm(Fertility ~ Agriculture)
abline(fit)
plot(fit)

########OR

data(swiss)
head(swiss)
fit<- lm(Fertility ~ Agriculture)
plot(Fertility ~ Agriculture, pch=19,col="blue")
lines(Agriculture, fit$fitted, lwd=3, col='green')
