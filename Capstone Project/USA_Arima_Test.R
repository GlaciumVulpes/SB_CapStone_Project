#These are all the libraries that I would need for my analysis
library(Quandl)
library(dplyr)
library(tseries)
library(forecast)
#This is where I got my USA Revenue data set from and
#this is where I did my processing of the data to turn it into 
#an timeseries
USA_Revenue <- Quandl("ODA/USA_PPPPC")
names(USA_Revenue)[2] <- "USA_Revenue"
USA_Revenue <- USA_Revenue %>% arrange(USA_Revenue)
dates <- USA_Revenue$Date
values <- USA_Revenue[,-1]
#I created the time series and created a training and testing
#set for the time series data
USA_XTS <- as.xts(values, order.by = dates)
USA_XTS_Train <- USA_XTS[1:36]
USA_XTS_Test <- USA_XTS[37:42]
plot(USA_XTS)
#looking at seasonal sationarity
kpss.test(USA_XTS_Train)
#This is where I preform my data analysis and forecasting to
#determine GDP of the US
USA_XTS_trainArima <- auto.arima(USA_XTS_Train)
summary(USA_XTS_trainArima)
USA_XTS_trainForecast <- forecast.Arima(USA_XTS_trainArima, h = 6)
USA_XTS_trainForecast
USA_XTS_Test

plot(USA_XTS_trainForecast)
title(xlab = "Predictive Years", ylab = "USA GDP in PPP")

#The next set of data I want to look at is the USA Population 
#and look at the forecast to see how big it may get
USA_Pop <- Quandl("ODA/USA_LP")
##This is the preprocessing step of geting the Population data
#ready to analyze 
names(USA_Pop)[2] <- "USA_Population"
USA_Pop <- USA_Pop %>% arrange(USA_Population)
dates <- USA_Pop$Date
values <- USA_Pop[,-1]
#This bit of code is to create the time series and to also
#create training and test data
USA_PopXTS <- as.xts(values, order.by = dates)
USA_PopXTS_Train <- USA_PopXTS[1:36]
USA_PopXTS_Test <- USA_PopXTS[37:42]
#next step is the analysis of the data
kpss.test(USA_PopXTS_Train)
USA_PopArima <- auto.arima(USA_PopXTS_Train)
summary(USA_PopArima)
USA_PopForecast <- forecast.Arima(USA_PopArima, h = 6)
USA_PopForecast
USA_PopXTS_Test
plot(USA_PopForecast)
title(xlab = "Predictive Years", ylab = "Population in Millions")

#The next set of data I will look at is Internet user data in 
#the US
USA_Int <- Quandl("WORLDBANK/USA_IT_NET_USER_P2")
names(USA_Int)[2] <- "USA_Internet"
USA_Int <- USA_Int %>% arrange(USA_Internet)
dates <- USA_Int$Date
values <- USA_Int[,-1]
#Next I will create the time series
USA_IntXts <- as.xts(values, order.by = dates)
USA_IntXtsTrain <- USA_IntXts[1:21]
USA_IntXtsTest <- USA_IntXts[22:25]
#Now I will analyize my data
kpss.test(USA_IntXtsTrain)
USA_IntArima <- auto.arima(USA_IntXtsTrain)
USA_IntForecast <- forecast.Arima(USA_IntArima, h = 4)
USA_IntForecast
USA_IntXtsTest
plot(USA_IntForecast)
title(ylab = "Internet Usage per 100 people in the USA", xlab = "Predictive Years")

#Now I will be looking at the health expenditure of the USA
USA_Health <- Quandl("WORLDBANK/USA_SH_XPD_PCAP_PP_KD")
#this block is like the others to format the Health dataset
names(USA_Health)[2] <- "Health_Expenditure"
USA_Health <- USA_Health %>% arrange(Health_Expenditure)
dates <- USA_Health$Date
values <- USA_Health[, -1]
#Now I will create the time series and the training and test sets
USA_HealthXts <- as.xts(values, order.by = dates)
USA_HealthXts_Train <- USA_HealthXts[1:15]
USA_HealthXts_Test <- USA_HealthXts[16:19]
#Now I will preform my analysis on the data
kpss.test(USA_HealthXts_Train)
USA_HealthArima <- auto.arima(USA_HealthXts_Train)
USA_HealthForecast <- forecast.Arima(USA_HealthArima, h = 4)
USA_HealthForecast
USA_HealthXts_Test
plot(USA_HealthForecast)
title(xlab = "Predictive Years", ylab = "USA Health Expenditure in PPP")

#Next I will look at the forecast for unemployment rates in the USA
USA_UnEmp <- Quandl("ODA/USA_LUR")
#Now I will preprocess the data
names(USA_UnEmp)[2] <- "Unemployment"
USA_UnEmp <- USA_UnEmp %>% arrange(Date)
dates <- USA_UnEmp$Date
values <- USA_UnEmp[, -1]
#now for the creation of the time series and the training and test
#sets
USA_UnEmpXts <- as.xts(values, order.by = dates)
USA_UnEmpXtsTrain <- USA_UnEmpXts[1:36]
USA_UnEmpXtsTest <- USA_UnEmpXts[37:42]
#now for the data analysis
USA_UnEmpArima <- auto.arima(USA_UnEmpXtsTrain)
USA_UnEmpForecast <- forecast.Arima(USA_UnEmpArima, h = 7)
USA_UnEmpForecast
USA_UnEmpXtsTest
plot(USA_UnEmpForecast)
title(ylab = "Unemployment by Percent", xlab = " Predictive Years")
