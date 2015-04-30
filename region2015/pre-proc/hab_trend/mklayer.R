# mk.layer.ao_* ####
# AM Sajo-Castelli
# 28/04/2015
#
# Salidas CSV ya fueron validadas con xlsx @andres
library(xlsx)
library(dplyr)
# library(plyr)
# library(reshape2)
# library(strings)
rm(list=ls())
WD = '~/github/gye/region2015/pre-proc/'
setwd(WD)
source('boot.R')
setwd('hab_trend')
YEAR = 2015
file = paste0('hab_trend_gye', YEAR, '.csv')
cat(paste('Building layer:', file, '\n'))
hab_trend <- data.frame()

# load table ####
par(mfrow=c(1,2))
# Magrove for El Oro ####
Region = 'El Oro'
DF <- read.xlsx('tabla tendencia.xlsx', sheetName = Region, stringsAsFactors = FALSE)
# View(DF)
years <- as.numeric(DF[1, -1])
data <- as.numeric(DF[nrow(DF), -1])
plot(years, data, main=paste('mangrove', Region))
lmtrend = lm(data ~ years)
title(sub=paste(coef(lmtrend), collapse = " "))
abline(lmtrend, lwd=3, col='red')
trend = lmtrend$coefficients[2] %>% bound_pm1()
hab_trend <- data.frame(rgn_id = get.rgn_id(Region), habitat = "mangrove", trend = trend, stringsAsFactors = FALSE)

# Magrove for Guayas ####
Region = 'Guayas'
DF <- read.xlsx('tabla tendencia.xlsx', sheetName = Region, stringsAsFactors = FALSE)
# View(DF)
years <- as.numeric(DF[1, -1])
data <- as.numeric(DF[nrow(DF), -1])
plot(years, data, main=paste('mangrove', Region))
lmtrend = lm(data ~ years)
title(sub=paste(coef(lmtrend), collapse = " "))
abline(lmtrend, lwd=3, col='red')
trend = lmtrend$coefficients[2] %>% bound_pm1()
hab_trend[2, ] <- data.frame(rgn_id = get.rgn_id(Region), habitat = "mangrove", trend = trend, stringsAsFactors = FALSE)

# Mangrove for Santa Elena ####
Region = 'Santa Elena'
hab_trend[3, ] <- data.frame(rgn_id = get.rgn_id(Region), habitat = "mangrove", trend = NA, stringsAsFactors = FALSE)

rownames(hab_trend) <- NULL
hab_trend

# Sanity Checks ####
stopifnot(all(hab_trend$rgn_id %in% c(1,2,6)))

# Deplot layer ####
cat(paste('Deploying:', file, '\n'))
write.csv(hab_trend, file = file, row.names = FALSE, quote = FALSE, na = '')
