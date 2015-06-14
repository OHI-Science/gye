# A M Sajo
# 13/06/2015
# Build Spp_status layer ####
library(xlsx)
library(plyr)
library(dplyr)
rm(list=ls())
setwd("~/github/gye/region2015/pre-proc/BIO")

FRAME = read.xlsx("10.2.1 Tabla _ spp.xlsx", sheetIndex = 1, startRow = 2, endRow = 296, stringsAsFactors = FALSE) %>% select(-(1:3))
# F1 = FRAME
FRAME = within(FRAME, {
        fondo.blando[is.na(FRAME$fondo.blando)] = 'D'
        fondo.duro <- NULL
}) %>% rename(Tipo.Fondo = fondo.blando)

FRAME = FRAME %>% mutate(Estado.UICN = toupper(Estado.UICN), Tendencia.IUCN = toupper(Tendencia.IUCN)) %>%
    within( {     tmp = array(Tendencia.IUCN); Tendencia.IUCN = apply(tmp, 1, function(x) { sub('\n', '', x) } ); tmp = NULL } )
# View(FRAME)
# unique(FRAME$Estado.UICN)
# unique(FRAME$Tendencia.IUCN)
# View(FRAME)
# cbind(FRAME, F1) %>% View

head(FRAME)

# ADD STATUS WEIGHTS ####
Status.DF = read.xlsx("10.2.1 Tabla _ spp.xlsx", sheetIndex = 2, startRow = 3, endRow = 9, colIndex = c(10, 12), stringsAsFactors = FALSE)
# Map Weights .... ####
# unique(FRAME$Estado.UICN)
Status.DF = Status.DF %>% mutate(Estado.UICN = c("EX", "CRITICALLY ENDANGERED", "ENDANGERED", "VULNERABLE", "NEAR THREATENED", "LEAST CONCERN")) %>% rename(Estado.Peso = Peso..w.)

# Mege Status.DF with FRAME by Category and add Weights ####
FRAME = join(FRAME, Status.DF, by="Estado.UICN") %>% select(-Categoria)
head(FRAME)

# ADD TREND WEIGHTS ####
Trend.DF = data.frame(Tendencia.IUCN = c("INCREASING", "STABLE", "DECREASING", "UNKNOWN"), Tendencia.Peso = c(+0.5, 0, -0.5, NA))
# Map Weights .... ####
# unique(FRAME$Tendencia.IUCN)
FRAME = join(FRAME, Trend.DF, by="Tendencia.IUCN")
View(FRAME)

# ADD HAB EXTENT KM2 ####
# remove regionalization !
Area = read.csv('../../layers/hab_extent_gye2015.csv', stringsAsFactors = FALSE) %>% filter(habitat %in% c('rocky_reef', 'soft_bottom'))
Area = Area %>% group_by(habitat) %>% do({ data.frame(total.km2 = sum(.$km2) ) })
Area$Total =  sum(Area$total.km2)
Area$Tipo.Fondo = c('D', 'B')

# Status X_SPP ####
aceptables = complete.cases(FRAME$Estado.Peso)
X_SPP = FRAME[aceptables, ] %>% group_by(Tipo.Fondo) %>% do({
        data.frame(suma=sum(.$Estado.Peso), cantidad=nrow(.))
})  %>% join(Area, by='Tipo.Fondo') %>% mutate(cociente = 1 - suma / cantidad, Status = cociente * total.km2 / Total)

head(X_SPP)
XSPP = data.frame(rgn_id = c(1,2,6), score = sum(X_SPP$Status))

head(XSPP)
cat('Exporting XSPP to layer file...\n')
write.csv(XSPP, file = 'spp_status_gye2015.csv', row.names = FALSE, na = '')
cat('Done.')


# Build trend layer ####
# Using same frame...
# Trend Y_SPP ####
aceptables = complete.cases(FRAME$Tendencia.Peso)
Y_SPP = FRAME[aceptables, ] %>% group_by(Tipo.Fondo) %>% do({
  data.frame(mean = mean(.$Tendencia.Peso))
})  %>% join(Area, by='Tipo.Fondo') %>% mutate(Trend = mean * total.km2 / Total)

head(Y_SPP)
YSPP = data.frame(rgn_id = c(1,2,6), score = sum(Y_SPP$Trend))
head(YSPP)
cat('Exporting YSPP to layer file...\n')
write.csv(YSPP, file = 'spp_trend_gye2015.csv', row.names = FALSE, na = '')
cat('Done.')
