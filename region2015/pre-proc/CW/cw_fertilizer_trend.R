# AM Sajo-Castelli
# 31/05/2015
library(xlsx)
library(dplyr)
library(reshape2)
rm(list=ls())
WD = '~/github/gye/region2015/pre-proc/'
setwd(WD)
source('boot.R')
setwd('CW')
YEAR = 2015
database = 'cw_fertilizer_trend.xlsx'
sheet = 'cw_fertilizer_trendGGF'
file = paste0('cw_fertilizer_trend_gye', YEAR, '.csv')
cat(paste('Building layer:', file, '\nwith:', database, '@', sheet,'\n'))

DF <- read.xlsx(database, sheetName = sheet, stringsAsFactors = FALSE, startRow = 2)
colnames(DF) <- c('year', 'value')
rownames(DF) <- NULL
DF
attach(DF)
mdl = lm(value ~ year)
trend =  coef(mdl)[['year']] * sd(year) / sd(value)
sector_trend = pmax(-1, pmin(1, trend))
d = data.frame(halpern.trend = sector_trend, coef.Beta0 = coef(mdl)[['(Intercept)']],  coef.year = coef(mdl)[['year']])
d

# Sanity check 1 ####
png(file = paste0(file, '.png'), width = 1000, height = 500)
par(mfrow = c(1, 1))
plot(DF, main = paste(d$variable), sub=paste(d$coef.Beta0, '+', d$coef.year))
abline(col = 'red', lwd = 3, a = d$coef.Beta0, b = d$coef.year)
dev.off()

# Rename cols ####
trend = data.frame(rgn_id = rgn_id2name$rgn_id, trend.score = d$halpern.trend)
trend
# Sanity Check 2 ####
stopifnot(all(trend$rgn_id %in% c(1, 2, 6)))

# Deplot layer ####
cat(paste('Deploying:', file, '\n'))
write.csv(trend, file = file, row.names = FALSE, quote = FALSE, na = '')

