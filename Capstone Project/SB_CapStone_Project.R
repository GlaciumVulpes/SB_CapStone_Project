library(Quandl)
library(dplyr)
USA_Revenue <- Quandl("ODA/USA_PPPPC")
Japan_Revenue <- Quandl("ODA/JPN_PPPPC")
China_Revenue <- Quandl("ODA/CHN_PPPPC")
Russia_Revenue <- Quandl("ODA/RUS_PPPPC")
Germany_Revenue <- Quandl("ODA/DEU_PPPPC")
France_Revenue <- Quandl("ODA/FRA_PPPPC")
Brazil_Revenue <- Quandl("ODA/BRA_PPPPC")
Italy_Revenue <- Quandl("ODA/ITA_PPPPC")
UK_Revenue <- Quandl("ODA/GBR_PPPPC")
India_Revenue <- Quandl("ODA/IND_PPPPC")
names(USA_Revenue)[2] <- "USA_Revenue"
names(Uk_Revenue)[2] <- "Uk_Revenuer"
names(Russia_Revenue)[2] <- "Russian_Revenue"
names(Japan_Revenue)[2] <- "Japanese_Revenue"
names(Italy_Revenue)[2] <- "Italian_Revenue"
names(India_Revenue)[2] <- "Indian_Revenue"
names(Germany_Revenue)[2] <- "German_Revenue"
names(France_Revenue)[2] <- "French_Revenue"
names(Brazil_Revenue)[2] <- "Brazilian_Revenue"
names(China_Revenue)[2] <- "Chinese_Revenue"
World <- inner_join(USA_Revenue, China_Revenue)
World <- inner_join(World, Japan_Revenue)
World <- inner_join(World, Germany_Revenue)
World <- inner_join(World, France_Revenue)
World <- inner_join(World, Brazil_Revenue)
World <- inner_join(World, UK_Revenue)
World <- inner_join(World, Italy_Revenue)
World <- inner_join(World, Russia_Revenue)
World.GDP1992 <- inner_join(World, India_Revenue)
write.csv(World.GDP1992, "World_GDP.csv")
names(World)[8] <- "China_Revenue"
USA_Pop <- Quandl("ODA/USA_LP")
China_Pop <- Quandl("ODA/CHN_LP")
Japan_Pop <- Quandl("ODA/JPN_LP")
German_Pop <- Quandl("ODA/DEU_LP")
French_Pop <- Quandl("ODA/FRA_LP")
Brazil_Pop <- Quandl("ODA/BRA_LP")
UK_Pop <- Quandl("ODA/GBR_LP")
Italy_Pop <- Quandl("ODA/ITA_LP")
Russian_Pop <- Quandl("ODA/RUS_LP")
India_Pop <- Quandl("ODA/IND_LP")
names(USA_Pop)[2] <- "USA_Pop"
names(UK_Pop)[2] <- "Uk_Pop"
names(Russian_Pop)[2] <- "Russian_Pop"
names(Japan_Pop)[2] <- "Japanese_Pop"
names(Italy_Pop)[2] <- "Italian_Pop"
names(India_Pop)[2] <- "Indian_Pop"
names(German_Pop)[2] <- "German_Pop"
names(French_Pop)[2] <- "French_Pop"
names(Brazil_Pop)[2] <- "Brazil_Pop"
names(China_Pop)[2] <- "Chinese_Pop"
World.Pop <- inner_join(USA_Pop, China_Pop)
World.Pop <- inner_join(World.Pop, Japan_Pop)
World.Pop <- inner_join(World.Pop, German_Pop)
World.Pop <- inner_join(World.Pop, French_Pop)
World.Pop <- inner_join(World.Pop, Brazil_Pop)
World.Pop <- inner_join(World.Pop, UK_Pop)
World.Pop <- inner_join(World.Pop, Italy_Pop)
World.Pop <- inner_join(World.Pop, Russian_Pop)
World.Pop <- inner_join(World.Pop, India_Pop)
write.csv(World.Pop, "World_Pop.csv")
USA_UnEmployment <- Quandl("ODA/USA_LUR")
China_UnEmployment <- Quandl("ODA/CHN_LUR")
Japan_UnEmployment <- Quandl("ODA/JPN_LUR")
German_UnEmployment <- Quandl("ODA/DEU_LUR")
French_UnEmployment <- Quandl("ODA/FRA_LUR")
Brazil_UnEmployment <- Quandl("ODA/BRA_LUR")
UK_UnEmployment <- Quandl("ODA/GBR_LUR")
Italian_UnEmployment <- Quandl("ODA/ITA_LUR")
Russian_UnEmployment <- Quandl("ODA/RUS_LUR")
names(USA_UnEmployment)[2] <- "US_Unemployment_Percent"
names(China_UnEmployment)[2] <- "Chinese_Unemployment_Percent"
names(Japan_UnEmployment)[2] <- "Japanese_Unemployment_Percent"
names(German_UnEmployment)[2] <- "German_Unemployment_Percent"
names(French_UnEmployment)[2] <- "French_Unemployment_Percent"
names(Brazil_UnEmployment)[2] <- "Brazil_Unemployment_Percent"
names(UK_UnEmployment)[2] <- "UK_Unemployment_Percent"
names(Italian_UnEmployment)[2] <- "Italian_Unemployment_Percent"
names(Russian_UnEmployment)[2] <- "Russian_Unemployment_Percent"
World.UnEmploy <- inner_join(USA_UnEmployment, China_UnEmployment)
World.UnEmploy <- inner_join(World.UnEmploy, Japan_UnEmployment)
World.UnEmploy <- inner_join(World.UnEmploy, German_UnEmployment)
World.UnEmploy <- inner_join(World.UnEmploy, French_UnEmployment)
World.UnEmploy <- inner_join(World.UnEmploy, Brazil_UnEmployment)
World.UnEmploy <- inner_join(World.UnEmploy, UK_UnEmployment)
World.UnEmploy <- inner_join(World.UnEmploy, Italian_UnEmployment)
World.UnEmploy <- inner_join(World.UnEmploy, Russian_UnEmployment)
write.csv(World.UnEmploy, "World_Unemployment_Percent.csv")
USA_Internet <- Quandl("WORLDBANK/USA_IT_NET_USER_P2")
China_Internet <- Quandl("WORLDBANK/CHN_IT_NET_USER_P2")
Japan_Internet <- Quandl("WORLDBANK/JPN_IT_NET_USER_P2")
Germany_Internet <- Quandl("WORLDBANK/DEU_IT_NET_USER_P2")
France_Internet <- Quandl("WORLDBANK/FRA_IT_NET_USER_P2")
Brazil_Internet <- Quandl("WORLDBANK/BRA_IT_NET_USER_P2")
UK_Internet <- Quandl("WORLDBANK/GBR_IT_NET_USER_P2")
Italy_Internet <- Quandl("WORLDBANK/ITA_IT_NET_USER_P2")
Russia_Internet <- Quandl("WORLDBANK/RUS_IT_NET_USER_P2")
India_Internet <- Quandl("WORLDBANK/IND_IT_NET_USER_P2")
names(USA_Internet)[2] <- "USA_Internet_Users"
names(China_Internet)[2] <- "Chinese_Internet_Users"
names(Japan_Internet)[2] <- "Japanese_Internet_Users"
names(Germany_Internet)[2] <- "German_Internet_Users"
names(France_Internet)[2] <- "French_Internet_Users"
names(Brazil_Internet)[2] <- "Brazil_Internet_Users"
names(UK_Internet)[2] <- "UK_Internet_Users"
names(Italy_Internet)[2] <- "Italian_Internet_Users"
names(Russia_Internet)[2] <- "Russian_Internet_Users"
names(India_Internet)[2] <- "Indian_Internet_Users"
World.Internet <- inner_join(USA_Internet, China_Internet)
World.Internet <- inner_join(World.Internet, Japan_Internet)
World.Internet <- inner_join(World.Internet, Germany_Internet)
World.Internet <- inner_join(World.Internet, France_Internet)
World.Internet <- inner_join(World.Internet, Brazil_Internet)
World.Internet <- inner_join(World.Internet, UK_Internet)
World.Internet <- inner_join(World.Internet, Italy_Internet)
World.Internet <- inner_join(World.Internet, Russia_Internet)
World.Internet <- inner_join(World.Internet, India_Internet)
write.csv(World.Internet, "World_Internet.csv")
USA_Health_Expenditure <- Quandl("WORLDBANK/USA_SH_XPD_PCAP_PP_KD")
China_Health_Expenditure <- Quandl("WORLDBANK/CHN_SH_XPD_PCAP_PP_KD")
Japanese_Health_Expenditure <- Quandl("WORLDBANK/JPN_SH_XPD_PCAP_PP_KD")
German_Health_Expenditure <- Quandl("WORLDBANK/DEU_SH_XPD_PCAP_PP_KD")
France_Health_Expenditure <- Quandl("WORLDBANK/FRA_SH_XPD_PCAP_PP_KD")
Brazil_Health_Expenditure <- Quandl("WORLDBANK/BRA_SH_XPD_PCAP_PP_KD")
UK_Health_Expenditure <- Quandl("WORLDBANK/GBR_SH_XPD_PCAP_PP_KD")
Italy_Health_Expenditure <- Quandl("WORLDBANK/ITA_SH_XPD_PCAP_PP_KD")
Russia_Health_Expenditure <- Quandl("WORLDBANK/RUS_SH_XPD_PCAP_PP_KD")
India_Health_Expenditure <- Quandl("WORLDBANK/IND_SH_XPD_PCAP_PP_KD")
names(USA_Health_Expenditure)[2] <- "USA_Health"
names(China_Health_Expenditure)[2] <- "Chinese_Health"
names(Japanese_Health_Expenditure)[2] <- "Japanese_Health"
names(German_Health_Expenditure)[2] <- "German_Health"
names(France_Health_Expenditure)[2] <- "French_Health"
names(Brazil_Health_Expenditure)[2] <- "Brazil_Health"
names(UK_Health_Expenditure)[2] <- "UK_Health"
names(Italy_Health_Expenditure)[2] <- "Italy_Health"
names(Russia_Health_Expenditure)[2] <- "Russia_Health"
names(India_Health_Expenditure)[2] <- "India_Health"
World_Health <- inner_join(USA_Health_Expenditure, China_Health_Expenditure)
World_Health <- inner_join(World_Health, Japanese_Health_Expenditure)
World_Health <- inner_join(World_Health, German_Health_Expenditure)
World_Health <- inner_join(World_Health, Brazil_Health_Expenditure)
World_Health <- inner_join(World_Health, UK_Health_Expenditure)
World_Health <- inner_join(World_Health, Italy_Health_Expenditure)
World_Health <- inner_join(World_Health, Russia_Health_Expenditure)
World_Health <- inner_join(World_Health, India_Health_Expenditure)
write.csv(World_Health, "World_Health.csv")
USA_Life <- Quandl("WORLDBANK/USA_SP_DYN_LE00_IN")
China_Life <- Quandl("WORLDBANK/CHN_SP_DYN_LE00_IN")
Japan_Life <- Quandl("WORLDBANK/JPN_SP_DYN_LE00_IN")
German_Life <- Quandl("WORLDBANK/DEU_SP_DYN_LE00_IN")
France_Life <- Quandl("WORLDBANK/FRA_SP_DYN_LE00_IN")
Brazil_Life <- Quandl("WORLDBANK/BRA_SP_DYN_LE00_IN")
UK_Life <- Quandl("WORLDBANK/GBR_SP_DYN_LE00_IN")
Italy_Life <- Quandl("WORLDBANK/ITA_SP_DYN_LE00_IN")
Russia_Life <- Quandl("WORLDBANK/RUS_SP_DYN_LE00_IN")
India_Life <- Quandl("WORLDBANK/IND_SP_DYN_LE00_IN")
names(USA_Life)[2] <- "USA_Life_EXP"
names(China_Life)[2] <- "Chinese_Life_EXP"
names(Japan_Life)[2] <- "Japanese_Life_EXP"
names(German_Life)[2] <- "German_Life_EXP"
names(France_Life)[2] <- "French_Life_EXP"
names(Brazil_Life)[2] <- "Brazil_Life_EXP"
names(UK_Life)[2] <- "UK_Life_EXP"
names(Italy_Life)[2] <- "Italy_Life_EXP"
names(Russia_Life)[2] <- "Russia_Life_EXP"
names(India_Life)[2] <- "India_Life_EXP"
World_Life <- inner_join(USA_Life, China_Life)
World_Life <- inner_join(World_Life, Japan_Life)
World_Life <- inner_join(World_Life, German_Life)
World_Life <- inner_join(World_Life, France_Life)
World_Life <- inner_join(World_Life, Brazil_Life)
World_Life <- inner_join(World_Life, UK_Life)
World_Life <- inner_join(World_Life, Italy_Life)
World_Life <- inner_join(World_Life, Russia_Life)
World_Life <- inner_join(World_Life, India_Life)
write.csv(World_Life, "World_life.csv")
World_Life <- read.csv("World_life.csv")
World.GDP1992 <- read.csv("World_GDP.csv")
World_Health <- read.csv("World_Health.csv")
World_Unemployment <- read.csv("World_Unemployment_Percent.csv")
World_Pop <- read.csv("World_Pop.csv")
World_Internet <- read.csv("World_Internet.csv")
World <- merge(World_Life, World.GDP1992)
World1 <- merge(World.GDP1992, World_Unemployment)
World1 <- merge(World1, World_Pop)
World1 <- merge(World1, World_Internet)
World1 <- merge(World1, World_Health)
World <- World1
write.csv(World, "World_version1.csv")
