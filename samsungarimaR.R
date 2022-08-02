data5 <-read.csv("D:/samsungm.csv")
data5.ts = ts(data=data5$q,start=c(2010,01), frequency=12)
data5.ts
length(data5$num)
findfrequency(data5)
tsdisplay(data5$q)
library("tseries")
data5<-subset(data5,select = "q")

summary(mo3<-arma(data5.ts, order=c(1,1)))
kpss.test(data5.ts)

summary(am4<-auto.arima(data5.ts))
tsdiag(am4)


forecast(am4)
plot(forecast(am4),xlim=c(2018,2019))


lines(fitted(am4),col="red",lty=2)
summary(am3<-auto.arima(data$q2))

x=matrix(0,5,7)
x[6,6]
install.packages("forecast")
library("forecast")
