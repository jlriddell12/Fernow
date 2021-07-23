library(dplyr)
library(lubridate)
library(tidyverse)
library(readxl)
library(ggplot2)
setwd("/Volumes/GoogleDrive/My Drive/USFS/TempData/TempData_R")
airtemp <- read_csv("Fernow_Air_Temperature.csv")
airtemp$date <- as.Date(with(airtemp, paste(Year, Month, Day,sep="-")), "%Y-%m-%d")
unique(c(airtemp$`Weather Station`))
airtempB <- filter(airtemp, `Weather Station` == "B")
airtempC <- filter(airtemp, `Weather Station` == "C")
airtempB_plot <- print(ggplot(data = airtempB, aes(x=date)) + 
                          geom_line(aes(y = MaxTemp_C), lwd=0.2, col="blue") +
                         geom_line(aes(y= MinTemp_C), lwd=0.2, col="red") +
                         labs(x="Date", y="Temperature, C") + ggtitle("Weather Station B Air Temperature"))

airtempC_plot <- print(ggplot(data = airtempC, aes(x=date)) + 
                         geom_line(aes(y = MaxTemp_C), lwd=0.2, col="blue") +
                         geom_line(aes(y= MinTemp_C), lwd=0.2, col="red") +
                         labs(x="Date", y="Temperature, C") + ggtitle("Weather Station C Air Temperature"))
