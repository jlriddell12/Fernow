library(dplyr)
library(lubridate)
library(tidyverse)
library(readxl)
library(ggplot2)
setwd("/Volumes/GoogleDrive/My Drive/USFS/TempData/TempData_R")
precip_raw <- read_csv("Fernow_Precipitation.csv")
precip_raw$date <- as.Date(with(precip_raw, paste(Year, Month, Day,sep="-")), "%Y-%m-%d")
unique(c(precip_raw$Watershed))
ws1_precip <- filter(precip_raw, Watershed == "1")
ws2_precip <- filter(precip_raw, Watershed == "2")
ws4_precip <- filter(precip_raw, Watershed == "4")
ws3_precip <- filter(precip_raw, Watershed == "3")
ws5_precip <- filter(precip_raw, Watershed == "5")
ws6_precip <- filter(precip_raw, Watershed == "6")
ws7_precip <- filter(precip_raw, Watershed == "7")
ws10_precip <- filter(precip_raw, Watershed == "10")
ws13_precip <- filter(precip_raw, Watershed == "13")
ws1_precipplot <- print(ggplot(data = ws1_precip, aes(x=date, y=Precipitation_mm)) + 
geom_line(lwd=0.2, col="blue") + labs(x="Date", y="Precipitation mm") + ggtitle("Watershed 1 Precipitation"))

ws2_precipplot <- print(ggplot(data = ws2_precip, aes(x=date, y=Precipitation_mm)) + 
                          geom_line(lwd=0.2, col="blue") + labs(x="Date", y="Precipitation mm") + ggtitle("Watershed 2 Precipitation"))

ws3_precipplot <- print(ggplot(data = ws3_precip, aes(x=date, y=Precipitation_mm)) + 
                          geom_line(lwd=0.2, col="blue") + labs(x="Date", y="Precipitation mm") + ggtitle("Watershed 3 Precipitation"))

ws4_precipplot <- print(ggplot(data = ws4_precip, aes(x=date, y=Precipitation_mm)) + 
                          geom_line(lwd=0.2, col="blue") + labs(x="Date", y="Precipitation mm") + ggtitle("Watershed 4 Precipitation"))


ws5_precipplot <- print(ggplot(data = ws5_precip, aes(x=date, y=Precipitation_mm)) + 
                          geom_line(lwd=0.2, col="blue") + labs(x="Date", y="Precipitation mm") + ggtitle("Watershed 5 Precipitation"))

ws6_precipplot <- print(ggplot(data = ws6_precip, aes(x=date, y=Precipitation_mm)) + 
                          geom_line(lwd=0.2, col="blue") + labs(x="Date", y="Precipitation mm") + ggtitle("Watershed 6 Precipitation"))

ws7_precipplot <- print(ggplot(data = ws7_precip, aes(x=date, y=Precipitation_mm)) + 
                          geom_line(lwd=0.2, col="blue") + labs(x="Date", y="Precipitation mm") + ggtitle("Watershed 7 Precipitation"))

ws10_precipplot <- print(ggplot(data = ws10_precip, aes(x=date, y=Precipitation_mm)) + 
                          geom_line(lwd=0.2, col="blue") + labs(x="Date", y="Precipitation mm") + ggtitle("Watershed 10 Precipitation"))

ws13_precipplot <- print(ggplot(data = ws13_precip, aes(x=date, y=Precipitation_mm)) + 
                          geom_line(lwd=0.2, col="blue") + labs(x="Date", y="Precipitation mm") + ggtitle("Watershed 13 Precipitation"))


