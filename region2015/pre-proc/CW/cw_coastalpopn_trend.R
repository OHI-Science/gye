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
database = 'cw_coastalpopn_trend (1).xlsx'
sheet = 'Hoja4'
file = paste0('cw_coastalpopn_trend_gye', YEAR, '.csv')
cat(paste('Building layer:', file, '\nwith:', database, '@', sheet,'\n'))

DF <- read.xlsx(database, sheetName = sheet, stringsAsFactors = FALSE)
DF = DF[, 1 : 4] %>% melt(id.vars = 'Provincia') %>% group_by(Provincia) %>% transmute(year = as.numeric(substr(variable, 2, 5)), value)
d = DF %>% do({
        mdl = lm(value ~ year, data = .)
        trend =  coef(mdl)[['year']] * sd(.$year) / sd(.$value)
        sector_trend = pmax(-1, pmin(1, trend * 5))
        data.frame(halpern.trend = sector_trend, coef.Beta0 = coef(mdl)[['(Intercept)']],  coef.year = coef(mdl)[['year']])
}) %>% filter(! Provincia == 'Golfo de Guayaquil')
d

# Sanity check 1 ####
png(file = paste0(file, '.png'), width = 1000, height = 500)
par(mfrow = c(1, 3))
DF %>% filter(! Provincia == 'Golfo de Guayaquil') %>% do({
  plot(.$year, .$value, main = paste('Coastal Population', .$Provincia[1]), sub=paste(d$coef.Beta0[d$Provincia == .$Provincia[1]], '+', d$coef.year[d$Provincia == .$Provincia[1]]))
  abline(col = 'red', lwd = 3, a = d$coef.Beta0[d$Provincia == .$Provincia[1]], b = d$coef.year[d$Provincia == .$Provincia[1]])
  data.frame(NA)
})
dev.off()
d
# Rename cols ####
trend = data.frame(rgn_id = get.rgn_id(d$Provincia), trend = d$halpern.trend)
trend

# Sanity Check 2 ####
stopifnot(all(trend$rgn_id %in% c(1, 2, 6)))

# Deplot layer ####
cat(paste('Deploying:', file, '\n'))
write.csv(trend, file = file, row.names = FALSE, quote = FALSE, na = '')

