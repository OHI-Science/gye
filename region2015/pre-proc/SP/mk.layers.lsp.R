# mk.layer.lsp_* ####
# AM Sajo-Castelli
# 28/04/2015
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
setwd('SP')
YEAR = 2015

#############################################################
# lsp_prot_area_inland1km_gye2015.csv ####
src = 'AMCPs 3MN Y 1 KM INCREMENTO_UTF8.csv'
file = paste0('lsp_prot_area_inland1km_gye', YEAR, '.csv')

# Procesamiento ####
DF <- read.csv(src, header = TRUE)
# View(DF)

layers <- unique(DF$X)

lsp <- split(DF[, -(1:3)], layers)


lsp[[1]] # 1km lsp[[2]] # 3nm
# Collate any sub-region, by sum:
lsp[[1]] = lsp[[1]] %>% split(lsp[[1]]$rgn_id) %>% ldply(colSums)
lsp[[1]]$rgn_id <- lsp[[1]]$.id
lsp[[1]]$.id <- NULL
lsp[[1]]
lsp[[1]] = lsp[[1]] %>% melt(id.vars = "rgn_id")
lsp[[1]]$variable = lsp[[1]]$variable %>% substr(start = 2, stop = 5) %>% as.numeric
colnames(lsp[[1]]) <- c('rgn_id', 'year', 'area_km2')
lsp[[1]]

# Sanity Checks ####
stopifnot(all(lsp[[1]]$rgn_id %in% c(1,2,6)))
stopifnot(!any(is.na(lsp[[1]])))

# Deplot layer ####
cat(paste('Deploying:', file, '\n'))
write.csv(lsp[[1]], file = file, row.names = FALSE, quote = FALSE)


#############################################################
# lsp_prot_area_inland3nm_gye2015.csv ####
file = paste0('lsp_prot_area_offshore3nm_gye', YEAR, '.csv')
lsp[[2]] # 1km lsp[[2]] # 3nm
# Collate any sub-region, by sum:
lsp[[2]] = lsp[[2]] %>% split(lsp[[2]]$rgn_id) %>% ldply(colSums)
lsp[[2]]$rgn_id <- lsp[[2]]$.id
lsp[[2]]$.id <- NULL
lsp[[2]]
lsp[[2]] = lsp[[2]] %>% melt(id.vars = "rgn_id")
lsp[[2]]$variable = lsp[[2]]$variable %>% substr(start = 2, stop = 5) %>% as.numeric
colnames(lsp[[2]]) <- c('rgn_id', 'year', 'area_km2')
lsp[[2]]

# Sanity Checks ####
stopifnot(all(lsp[[2]]$rgn_id %in% c(1,2,6)))
stopifnot(!any(is.na(lsp[[2]])))

# Deplot layer ####
cat(paste('Deploying:', file, '\n'))
write.csv(lsp[[2]], file = file, row.names = FALSE, quote = FALSE)
