library(dplyr)
library(xts)
library(moments)
library(lmom)
library(lubridate)
df<-read.csv("C:\\Users\\PSISKA\\Desktop\\stoxastika/NileData_BCM.txt")
df<-df[13:900,]
ts<-xts(df, order.by=as.Date(df$Date))

#Mean, sd, skewness of January#
D = ts[lubridate::month(ts) ==1]
storage.mode(D) <- "numeric"
#Mean#
lapply(D$data,FUN=mean)
#sd#
lapply(D$data,FUN=sd)
#skewness#
lapply(D$data,FUN=moments::skewness)
#ροπές#
data<-as.vector(D$data)
(emplmom = samlmu(x = data, nmom = 3, ratios = FALSE))
#προσαρμογή Gama#
(fitGama<-pelgam(lmom = emplmom))

#Mean, sd, skewness of February#
D = ts[lubridate::month(ts) ==2]
storage.mode(D) <- "numeric"
lapply(D$data,FUN=mean)
lapply(D$data,FUN=sd)
lapply(D$data,FUN=moments::skewness)
data<-as.vector(D$data)
(emplmom = samlmu(x = data, nmom = 3, ratios = FALSE))
(fitGama<-pelgam(lmom = emplmom))

#Mean, sd, skewness of March#
D = ts[lubridate::month(ts) ==3]
storage.mode(D) <- "numeric"
lapply(D$data,FUN=mean)
lapply(D$data,FUN=sd)
lapply(D$data,FUN=moments::skewness)
data<-as.vector(D$data)
(emplmom = samlmu(x = data, nmom = 3, ratios = FALSE))
(fitGama<-pelgam(lmom = emplmom))

#Mean, sd, skewness of April#
D = ts[lubridate::month(ts) ==4]
storage.mode(D) <- "numeric"
lapply(D$data,FUN=mean)
lapply(D$data,FUN=sd)
lapply(D$data,FUN=moments::skewness)
data<-as.vector(D$data)
(emplmom = samlmu(x = data, nmom = 3, ratios = FALSE))
(fitGama<-pelgam(lmom = emplmom))

#Mean, sd, skewness of May#
D = ts[lubridate::month(ts) ==5]
storage.mode(D) <- "numeric"
lapply(D$data,FUN=mean)
lapply(D$data,FUN=sd)
lapply(D$data,FUN=moments::skewness)
data<-as.vector(D$data)
(emplmom = samlmu(x = data, nmom = 3, ratios = FALSE))
(fitGama<-pelgam(lmom = emplmom))

#Mean, sd, skewness of June#
D = ts[lubridate::month(ts) ==6]
storage.mode(D) <- "numeric"
lapply(D$data,FUN=mean)
lapply(D$data,FUN=sd)
lapply(D$data,FUN=moments::skewness)
data<-as.vector(D$data)
(emplmom = samlmu(x = data, nmom = 3, ratios = FALSE))
(fitGama<-pelgam(lmom = emplmom))

#Mean, sd, skewness of July#
D = ts[lubridate::month(ts) ==7]
storage.mode(D) <- "numeric"
lapply(D$data,FUN=mean)
lapply(D$data,FUN=sd)
lapply(D$data,FUN=moments::skewness)
data<-as.vector(D$data)
(emplmom = samlmu(x = data, nmom = 3, ratios = FALSE))
(fitGama<-pelgam(lmom = emplmom))

#Mean, sd, skewness of August#
D = ts[lubridate::month(ts) ==8]
storage.mode(D) <- "numeric"
lapply(D$data,FUN=mean)
lapply(D$data,FUN=sd)
lapply(D$data,FUN=moments::skewness)
data<-as.vector(D$data)
(emplmom = samlmu(x = data, nmom = 3, ratios = FALSE))
(fitGama<-pelgam(lmom = emplmom))

#Mean, sd, skewness of September#
D = ts[lubridate::month(ts) ==9]
storage.mode(D) <- "numeric"
lapply(D$data,FUN=mean)
lapply(D$data,FUN=sd)
lapply(D$data,FUN=moments::skewness)
data<-as.vector(D$data)
(emplmom = samlmu(x = data, nmom = 3, ratios = FALSE))
(fitGama<-pelgam(lmom = emplmom))

#Mean, sd, skewness of October#
D = ts[lubridate::month(ts) ==10]
storage.mode(D) <- "numeric"
lapply(D$data,FUN=mean)
lapply(D$data,FUN=sd)
lapply(D$data,FUN=moments::skewness)
data<-as.vector(D$data)
(emplmom = samlmu(x = data, nmom = 3, ratios = FALSE))
(fitGama<-pelgam(lmom = emplmom))

#Mean, sd, skewness of November#
D = ts[lubridate::month(ts) ==11]
storage.mode(D) <- "numeric"
lapply(D$data,FUN=mean)
lapply(D$data,FUN=sd)
lapply(D$data,FUN=moments::skewness)
data<-as.vector(D$data)
(emplmom = samlmu(x = data, nmom = 3, ratios = FALSE))
(fitGama<-pelgam(lmom = emplmom))

#Mean, sd, skewness of December#
D = ts[lubridate::month(ts) ==12]
storage.mode(D) <- "numeric"
lapply(D$data,FUN=mean)
lapply(D$data,FUN=sd)
lapply(D$data,FUN=moments::skewness)
data<-as.vector(D$data)
(emplmom = samlmu(x = data, nmom = 3, ratios = FALSE))
(fitGama<-pelgam(lmom = emplmom))

#last#
#Yearly mean#
(last<-apply.yearly(ts$data, FUN = mean))

