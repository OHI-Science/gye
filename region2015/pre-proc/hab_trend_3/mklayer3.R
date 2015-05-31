# AM Sajo-Castelli
# 28/05/2015
#
# Salidas CSV ya fueron validadas con xlsx @andres
library(xlsx)
library(dplyr)
# library(plyr)
library(reshape2)
# library(strings)
rm(list=ls())
WD = '~/github/gye/region2015/pre-proc/'
setwd(WD)
source('boot.R')
setwd('hab_trend_3')
YEAR = 2015
file = paste0('hab_trend_gye', YEAR, '.csv')
cat(paste('Building layer:', file, '\n'))
hab_trend <- data.frame()
habitat = "soft_bottom"

DF <- read.xlsx('Respaldos Habitat destruction subtidal soft bottom-1.xlsx', sheetName = 'final', stringsAsFactors = FALSE)

View(DF)

data = melt(DF, id.vars = 'year') %>% group_by(variable)
d = data %>% do( {
  mdl = lm(value ~ year, data = .)
  trend =  coef(mdl)[['year']] * sd(.$year) / sd(.$value)
  sector_trend = pmax(-1, pmin(1, trend))
#   sector_trend = pmax(-1, pmin(1, coef(mdl)[['year']] * 5))
  data.frame(halpern.trend = sector_trend, coef.Beta0 = coef(mdl)[['(Intercept)']],  coef.year = coef(mdl)[['year']])
} )
d

# Sanity check 1 ####
png(file = paste0(file, '.png'), width = 1000, height = 500)
par(mfrow = c(1, 3))
for ( rgn in 1 + seq(rgn_id2name$name) ) {
        plot( DF[, c(1, rgn)], main = paste(d$variable[rgn - 1], habitat), sub=paste(d$coef.Beta0[rgn-1], '+', d$coef.year[rgn-1]))
        abline(col = 'red', lwd = 3, a = d$coef.Beta0[rgn - 1], b = d$coef.year[rgn - 1])
}
dev.off()
# Rename cols ####
d.soft_bottom = d %>% select(trend = halpern.trend) %>%
transmute(rgn_id = get.rgn_id(variable, with.dot = TRUE), habitat = habitat, trend) %>%
ungroup %>% select(-variable)

# Grab Mangrove trends calculated in pre-proc/hab_trend/hab_trend_gye2015.csv
# bind and deploy
d.mangrove <- read.csv('hab_trend_gye2015_mangrove.csv', header = TRUE)
hab_trend = rbind(d.soft_bottom, d.mangrove)


# Sanity Check 2 ####
stopifnot(all(hab_trend$rgn_id %in% c(1, 2, 6)))

# Deplot layer ####
cat(paste('Deploying:', file, '\n'))
write.csv(hab_trend, file = file, row.names = FALSE, quote = FALSE, na = '')
