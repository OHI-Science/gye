# AM Sajo-Castelli
# 31/05/2015
library(dplyr)
library(reshape2)
rm(list=ls())
WD = '~/github/gye/region2015/pre-proc/'
setwd(WD)
source('boot.R')
setwd('CW_2')
YEAR = 2015
database = paste0('input/cw_pesticide_trend_gye', YEAR, '.csv')
file = paste0('cw_pesticide_trend_gye', YEAR, '.csv')
cat(paste('Building layer:', file, '\nwith:', database, '@\n'))

DF <- read.csv(database, stringsAsFactors = FALSE)
DF = DF[, 2 : ncol(DF)] %>% melt(id.vars = 'Provincia') %>% group_by(Provincia) %>% transmute(year = as.numeric(substr(variable, 2, 5)), value)
d = DF %>% do({
  print(names(.))
  mdl = lm(value ~ year, data = .)
  trend =  coef(mdl)[['year']] * sd(.$year) / sd(.$value)
  sector_trend = pmax(-1, pmin(1, trend * 5))
  # Sanity check 1 ####
  png(file = paste0(file, '_', .$Provincia[1], '.png'), width = 500, height = 250)
  plot(.$value ~ .$year, main = paste(.$Provincia[1]), sub=paste(coef(mdl)[['(Intercept)']], '+', coef(mdl)[['year']]))
  abline(col = 'red', lwd = 3, a = coef(mdl)[['(Intercept)']], b = coef(mdl)[['year']])
  dev.off()
  #
  data.frame(halpern.trend = sector_trend, coef.Beta0 = coef(mdl)[['(Intercept)']],  coef.year = coef(mdl)[['year']])
})
d

# Rename cols ####
trend = data.frame(rgn_id = rgn_id2name$rgn_id, trend.score = d$halpern.trend)
trend
# Sanity Check 2 ####
stopifnot(all(trend$rgn_id %in% c(1, 2, 6)))

# Deplot layer ####
cat(paste('Deploying:', file, '\n'))
write.csv(trend, file = file, row.names = FALSE, quote = FALSE, na = '')

