library(quantmod)
library(PerformanceAnalytics)

date <- "2019-1-15"
tv <- getSymbols.yahoo("TV", from = date, env = .GlobalEnv)

TVClose <- getSymbols.yahoo("TV", from=date, auto.assign=F)[,6]

TVClose

TVRets <- na.omit(dailyReturn(TVClose, type = 'log'))

#chartSeries(TVRets)

library(dplyr)
library(caret)
library(tidyverse)
  
FEMSA <- mutate(FEMSAUB.csv, Company='Femsa', Company_Ticker='KOF')
