# Build a comparison table from scores.csv and scores-apr-15-2015.csv or other
# reference.
# AM Sajo-Castelli
#'
#'
rm(list=ls())
library(dplyr)
library(hwriter)
library(RColorBrewer)
setwd('~/github/gye/region2015/')
BASE <- 'scores-apr-15-2015.csv'
LOCAL <- 'scores.csv'
#
B <- read.csv(BASE, header = TRUE)
L <- read.csv(LOCAL, header = TRUE)
L = L %>% cbind(B[, 4])
idx = complete.cases(L[, 4 : 5])
L[, 6] = NA
L[idx, 6] = NA
L[, 7] = NA
L[, 8] = NA
changes = L[idx, 4 : 5] %>% apply(MARGIN=1, function(x) { if( x[1] < x[2] ) {"decreased"} else if ( x[1] > x[2] ) {"increased"} else {"unchanged"} })
perc = L[idx, 4 : 5] %>% apply(MARGIN=1, function(x) {  if ( all(x != 0) ) { round(100 * (x[1] - x[2]) / x[2])  } else { 'none' } }) %>% format(drop0trailing = TRUE,digits=2, width = 2,nsmall=0)
status = L[4 : 5] %>% apply(MARGIN=1, function(x) {  if ( is.na(x[1]) & is.na(x[2]) ) { 'unchanged' } else if (is.na(x[1]) & !is.na(x[2])) { 'crisis' } else if (!is.na(x[1]) & is.na(x[2])) { 'new' } else { 'ok' } })
L[, 6] = status
L[idx, 7] = changes
L[idx, 8] = perc
colnames(L) <- c(colnames(L)[1:4], 'reference score', 'status', 'change trend', 'change %')
View(L)

col.status = rep(NA, nrow(L))
col.status[status == 'ok'] = '#66FF33'
col.status[status == 'unchanged'] = '#ADD6FF'
col.status[status == 'crisis'] = '#FF3300'
head(col.status)

col.changes = rep(NA, nrow(L))
idx = !is.na(L[, 7])
col.changes[idx][L[idx, 7] == 'decreased'] = '#5CD65C'
col.changes[idx][L[idx, 7] == 'increased'] = '#FF8484'
col.changes[idx][L[idx, 7] == 'unchanged'] = '#CCFFFF'

pal = brewer.pal(11, 'Spectral')
col.perc = rep(NA, nrow(L))
idx = !is.na(L[, 8])
col.perc[idx] = pal[ceiling((100 + as.numeric(L[idx, 8])) / 200  * 11) %>% (function(x) {x[x > length(pal)] = length(pal); x[x < 1] = 1; x })]

hwrite(L, 'compare_scores.html', br=TRUE, center=TRUE, border=0, row.style=list(goal='text-align:center'), table.style='padding: 10px; margin:20px;', col.bgcolor=list(goal='#fff',dimension='#fff',region_id='#fff','score reference'='#fff',score='#fff',status=col.status,'change trend'=col.changes,'change %'=col.perc))
