library(dplyr)
library(lubridate)
library(tidyverse)
library(readxl)
library(ggplot2)
library(readxl)
setwd("/Volumes/GoogleDrive/My Drive/USFS/TempData/TempData_R")
strtemp <- read_xlsx("strtemp_weeklymaxmin.xlsx")
strtemp$date <- as.Date(with(strtemp, paste(Yr, Mon, Day,sep="-")), "%Y-%m-%d")
unique(c(strtemp$Ws))
locs <- unique(c(strtemp$Location))
Fernow <- strtemp[strtemp$Location == "Fernow", ]
FernowWs <- unique(c(Fernow$Ws))
FernowWs
weeklyws1 <- Fernow[Fernow$Ws == 1, ]
weeklyws2 <- Fernow[Fernow$Ws == 2, ]
weeklyws3 <- Fernow[Fernow$Ws == 3, ]
weeklyws4 <- Fernow[Fernow$Ws == 4, ]
weeklyws5 <- Fernow[Fernow$Ws == 5, ]
weeklyws6 <- Fernow[Fernow$Ws == 6, ]
weeklyws7 <- Fernow[Fernow$Ws == 7, ]
weeklyws10 <- Fernow[Fernow$Ws == 10, ]
weeklyws23 <- Fernow[Fernow$Ws == 23, ]
weeklyws27 <- Fernow[Fernow$Ws == 27, ]
weeklyws28 <- Fernow[Fernow$Ws == 28, ]
weeklyws32 <- Fernow[Fernow$Ws == 32, ]
strtemp_hourlyhobo_2002_2006 <- read_xlsx("strtemp_hourlyhobo_2002_2006")
#wsplot <- print(ggplot(ws1, aes(x=date, y=Maximum))+
  geom_point(size=0.5)+
    geom_point(aes(y=Minimum), size=0.5, col="red"))
