data1 <-read.csv("D:/tempandq.csv",na.strings = c(""," ",NA))
data2 <-read.csv("D:/bitcoin.csv")
data3 <-read.csv("D:/kospid.csv")
data4 <-read.csv("D:/samsungd.csv")
data5 <-read.csv("D:/samsungm.csv")
data1.ts = ts(data=data1$q,start=c(2006,01,01), frequency=365)
data1.ts
data2.ts = ts(data=data2$q,start=c(2018,01,01), frequency=12)
data2.ts
data3.ts = ts(data=data3$q,start=c(2006,01,01), frequency=365)
data3.ts
data4.ts = ts(data=data4$q,start=c(2006,01,01), frequency=365)
data4.ts
data5.ts = ts(data=data5$q,start=c(2010,01), frequency=12)
data5.ts

#134 는 일단위
#25는 달 단위 비트코인 2018-2021, 삼성전자 2010-2017

library("tseries")
summary(mo1<-arma(data2.ts, order=c(1,1)))
kpss.test(data2.ts,"Trend")
summary(mo2<-arma(data3.ts, order=c(1,1)))
kpss.test(data3.ts)
summary(mo3<-arma(data5.ts, order=c(1,1)))
kpss.test(data3.ts)
arma(x=data5.ts, order=c(1,1))
fitted(mo3)
plot(data5.ts)
