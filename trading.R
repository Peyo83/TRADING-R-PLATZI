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

FEMSA <- read_csv('FEMSAUB.csv')
FEMSA <- mutate(FEMSA, Company='Femsa', Company_Ticker='KOF')
FEMSA_2 <- FEMSA[, c(9,8,1,2,3,4,5,6,7)]


BANORTE <- read_csv('GFBANORTE.MX.csv')
BANORTE <- mutate(BANORTE, Company='Banorte', Company_Ticker='XNOR')
BANORTE_2 <- BANORTE[, c(9,8,1,2,3,4,5,6,7)]

BRADESCO <- read_csv('BBD-bradesco.csv')
BRADESCO <- mutate(BRADESCO, Company='bradesco', Company_Ticker='XBBDC')
BRADESCO_2 <- BRADESCO[, c(9,8,1,2,3,4,5,6,7)]

TELEVISA <- read_csv('TELEVISA.csv')
TELEVISA <- mutate(TELEVISA, Company='televisa', Company_Ticker='TV')
TELEVISA_2 <- TELEVISA[, c(9,8,1,2,3,4,5,6,7)]

WALMEX <- read_csv('WALMEX.MX.csv')
WALMEX <- mutate(WALMEX, Company='walmex', Company_Ticker='WALMEX')
WALMEX_2 <- WALMEX[, c(9,8,1,2,3,4,5,6,7)]

Latam_GEI_Index <- rbind(FEMSA_2, BANORTE_2, BRADESCO_2, TELEVISA_2, WALMEX_2)

View(Latam_GEI_Index)