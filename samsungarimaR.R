data5 <-read.csv("D:/samsungm.csv")
data5.ts = ts(data=data5$q,start=c(2010,01), frequency=12)
data5.ts
library("tseries")
summary(mo3<-arma(data5.ts, order=c(1,1)))
kpss.test(data5.ts)
fitted(mo3)
plot(data5.ts,type="b",main="ARMA(1,1) Model")
lines(fitted(mo3),col="red",lty=6,lwd=2)
summary(am5<-auto.arima(data5.ts))

x=matrix(0,5,7)
x[6,6]
install.packages("forecast")
library("forecast")
