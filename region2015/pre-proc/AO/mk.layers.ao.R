# mk.layer.ao_* ####
# AM Sajo-Castelli
# 27/04/2015
#
# @sorayaabadmota: Una cosa que no está en el
# excel es que el ao_need se calculó para datos
# del 2010, pero el ao_access se calculó con
# datos del 2009. En esas capas de datos va el
# año también y esos son los dos valores del año.
#
# @andressajo: Como hay datos solo para un año
# especifico, este no se pone en una columna
# adicional, sino en el nombre del archivo.
library(xlsx)
library(dplyr)
# library(strings)
rm(list=ls())
WD = '~/github/gye/region2015/pre-proc/'
setwd(WD)
source('boot.R')

# ao_access ####
# Nomenclatura archivo de salida
YEAR = 2009
src = 'Oportunidad de pesca artesanal (1).xlsx'
file = paste0('ao_access_loc', YEAR, '.csv')

# Procesamiento ####
DF <- read.xlsx(src, sheetName = 'Base')
# View(DF)
# Columna de interés es [34] "OAO..ao_access."
interest <- "OAO..ao_access."
cat(paste('Building layer:', interest, '\n'))
# levels(DF[,1])
AO = select(DF, one_of("Provincia", interest))
AO.u = unique(AO)
colnames(AO.u) <- c('rgn_name', 'value')
AO.u
rgn_id2name
AO.u = merge(rgn_id2name, AO.u, by.x = 'name', by.y = 'rgn_name') %>% transmute(name = NULL)

# Sanity Checks ####
stopifnot(all(AO.u$rgn_id %in% c(1,2,6)))
stopifnot(!all(is.na(AO.u)))

# Deplot layer ####
cat(paste('Deploying:', file, '\n'))
write.csv(AO.u, file = file, row.names = FALSE, quote = FALSE)




# ao_need ####
# Nomenclatura archivo de salida
YEAR = 2010
src = 'Oportunidad de pesca artesanal (1).xlsx'
file = paste0('ao_need_loc', YEAR, '.csv')

# Procesamiento ####
DF <- read.xlsx(src, sheetName = 'Base')
# View(DF)
# Columna de interés es [27] "NAO..ao_need."
interest <- "NAO..ao_need."
cat(paste('Building layer:', interest, '\n'))
# levels(DF[,1])
AO = select(DF, one_of("Provincia", interest))
AO.u = unique(AO)
colnames(AO.u) <- c('rgn_name', 'value')
AO.u
rgn_id <- rgn_id2name
rgn_id$year <- YEAR
rgn_id
AO.u = merge(rgn_id, AO.u, by.x = 'name', by.y = 'rgn_name') %>% transmute(name = NULL)

# Sanity Checks ####
stopifnot(all(AO.u$rgn_id %in% c(1,2,6)))
stopifnot(!all(is.na(AO.u)))

# Deplot layer ####
cat(paste('Deploying:', file, '\n'))
write.csv(AO.u, file = file, row.names = FALSE, quote = FALSE)




# ao_sao ####
# Nomenclatura archivo de salida
YEAR = 2010
src = 'Oportunidad de pesca artesanal (1).xlsx'
file = paste0('ao_sao_loc', YEAR, '.csv')

# Procesamiento ####
DF <- read.xlsx(src, sheetName = 'Base')
# View(DF)
# Columna de interés es [24] "SAO"
interest <- "SAO"
cat(paste('Building layer:', interest, '\n'))
# levels(DF[,1])
AO = select(DF, one_of("Provincia", interest))
AO.u = unique(AO)
colnames(AO.u) <- c('rgn_name', 'value')
AO.u
rgn_id <- rgn_id2name
rgn_id$year <- YEAR
rgn_id
AO.u = merge(rgn_id, AO.u, by.x = 'name', by.y = 'rgn_name') %>% transmute(name = NULL)

# Sanity Checks ####
stopifnot(all(AO.u$rgn_id %in% c(1,2,6)))
stopifnot(!all(is.na(AO.u)))

# Deplot layer ####
cat(paste('Deploying:', file, '\n'))
write.csv(AO.u, file = file, row.names = FALSE, quote = FALSE)
