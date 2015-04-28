# mk.layer.ao_* ####
# AM Sajo-Castelli
# 27/04/2015
#
# Salidas CSV ya fueron validadas con xlsx @andres
library(xlsx)
library(dplyr)
library(plyr)
library(reshape2)
# library(strings)
rm(list=ls())
WD = '~/github/gye/region2015/pre-proc/'
setwd(WD)
source('boot.R')
setwd('AO')
YEAR = 2015

#############################################################
# ao_access ####
# Nomenclatura archivo de salida
src = 'Oportunidad de pesca artesanal (1).xlsx'
file = paste0('ao_access_gye', YEAR, '.csv')

# Procesamiento ####
DF <- read.xlsx(src, sheetName = 'Base')
# View(DF)
# Columna de interés es [34] "OAO..ao_access."
interest <- "OAO..ao_access."
cat(paste('Building layer:', file, '\n'))
# levels(DF[,1])
AO = select(DF, one_of("Provincia", interest))
AO.u = unique(AO)
colnames(AO.u) <- c('rgn_name', 'value')
AO.u
rgn_id2name
AO.u = merge(rgn_id2name, AO.u, by.x = 'name', by.y = 'rgn_name') %>% transmute(name = NULL)

# Sanity Checks ####
stopifnot(all(AO.u$rgn_id %in% c(1,2,6)))
stopifnot(!any(is.na(AO.u)))

# Deplot layer ####
cat(paste('Deploying:', file, '\n'))
write.csv(AO.u, file = file, row.names = FALSE, quote = FALSE)



#############################################################
# ao_need ####
# Aquí hay que estimar un modelo de tendencia para 1990, 2001, 2010
# y guardar los ultimos 10 años
# Conversación con @lelys y @soraya, 28/04/2015
# Nomenclatura archivo de salida
# hard coded vars:
PBIN1990 = 79.5
PBIN2001 = 71.4
infer_years = c(1991 : 2000, 2002 : 2009, 2011 : 2013)
# Note: calculate_scores() produces NAs if last year is NOT 2013 == max_year
comit_years = c(1990,        2001,        2010)
src = 'Oportunidad de pesca artesanal-completo.xlsx'
file = paste0('ao_need_gye', YEAR, '.csv')

# Procesamiento ####
DF <- read.xlsx(src, sheetName = 'Base')
# View(DF)
# Columna de interés es [27] "NAO..ao_need."
interest <- "Pobreza.por.NBI"
cat(paste('Building layer:', file, '\n'))
# levels(DF[,1])
AO = select(DF, one_of("Provincia"), starts_with(interest))
AO.u = unique(AO)
AO.u[, 5:7] <- cbind(PBIN1990, PBIN2001, AO.u[, 5])
# colnames(AO.u) <- c('rgn_name', paste0('PBI', c(1990, 2001, 2010)), paste0('PBIN', c(1990, 2001, 2010)))
colnames(AO.u) <- c('rgn_name', comit_years, comit_years)
AO.u

AO.u =  merge(AO.u %>% melt('rgn_name', colnames(AO.u)[-(1:4)]),
              AO.u[, c(1, 5:7)] %>% melt('rgn_name'), by = c('rgn_name', 'variable'))
colnames(AO.u) <- c('rgn_name', 'year', 'PBI', 'PBIN')
y = as.numeric(levels(AO.u$year))
class(AO.u$year) <- "numeric"
AO.u$year <- y[AO.u$year]
AO.u
AO.u$value = AO.u[, 3:4] %>% apply(MARGIN = 1, function(x) { (100 - x[1]) / (100 - x[2]) })
AO.u
# Modelo de tendencia por región ####
predictionsSAO = split(AO.u, rep(seq(4), each=3)) %>% lapply( function(x) {L = lm(value ~ year, data = x) %>% predict(data.frame(year = infer_years)); data.frame(rgn_name = unique(x$rgn_name), year = infer_years, value = L) } )
predictionsSAO = predictionsSAO %>% ldply()
predictionsSAO$.id <- NULL
# predictionsSAO = predictionsSAO %>% split(predictionsSAO$year) %>% ldply()
predictionsSAO
# Merge with available data ####
AO.u
SAO = merge(all = TRUE, sort = TRUE, subset(AO.u, select = c('rgn_name', 'year', 'value'), subset = AO.u$year %in% comit_years), predictionsSAO)
 # SAO = SAO %>% split(SAO$year) %>% ldply()
SAO
# Check predictions per region ####
par(mfrow = c(2, 2))
AO.u %>% split(AO.u$rgn_name) %>% lapply(function(x) {
  plot(x$year, x$value, pch=16, col='red2', main=unique(x$rgn_name), xlim=range(c(infer_years, comit_years)), ylim=range(c(x$value, SAO$value[SAO$rgn_name == unique(x$rgn_name)])))
  points(SAO$year[SAO$rgn_name == unique(x$rgn_name)], SAO$value[SAO$rgn_name == unique(x$rgn_name)], cex=1.25)
  })

AO.u = merge(rgn_id2name, SAO, by.x = 'name', by.y = 'rgn_name') %>% transmute(name = NULL)

# Sanity Checks ####
stopifnot(all(AO.u$rgn_id %in% c(1,2,6)))
stopifnot(!any(is.na(AO.u)))
AO.u = AO.u %>% split(AO.u$year) %>% ldply()
AO.u$.id <- NULL
AO.u

# Deplot layer ####
cat(paste('Deploying:', file, '\n'))
write.csv(AO.u, file = file, row.names = FALSE, quote = FALSE)



#############################################################
# ao_sao ####
# Nomenclatura archivo de salida
src = 'Oportunidad de pesca artesanal (1).xlsx'
file = paste0('ao_sao_gye', YEAR, '.csv')

# Procesamiento ####
DF <- read.xlsx(src, sheetName = 'Base')
# View(DF)
# Columna de interés es [24] "SAO"
interest <- "SAO"
cat(paste('Building layer:', file, '\n'))
# levels(DF[,1])
AO = select(DF, one_of("Provincia", interest))
AO.u = unique(AO)
colnames(AO.u) <- c('rgn_name', 'value')
AO.u
rgn_id2name
AO.u = merge(rgn_id2name, AO.u, by.x = 'name', by.y = 'rgn_name') %>% transmute(name = NULL)

# Sanity Checks ####
stopifnot(all(AO.u$rgn_id %in% c(1,2,6)))
stopifnot(!any(is.na(AO.u)))

# Deplot layer ####
cat(paste('Deploying:', file, '\n'))
write.csv(AO.u, file = file, row.names = FALSE, quote = FALSE)
