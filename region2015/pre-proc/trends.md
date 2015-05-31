---
title: "Trends"
author: "AM Sajo Castelli"
date: "31/05/2015"
output: html_document
---

# Trends
Notes of layers regarding trends estimated via local information.
Layers herein mentioned are estimated via the following generic code:
```r
mdl = lm(value ~ year, data = .)
trend =  coef(mdl)[['year']] * sd(.$year) / sd(.$value)
sector_trend = pmax(-1, pmin(1, trend))
```
## hab_trend
file: `hab_trend_gye2015.csv` 
```r
# soft_bottom
     variable halpern.trend coef.Beta0  coef.year
1      El.Oro    -0.8945315   481.4069 -0.2388295
2      Guayas    -0.8945315   343.1915 -0.1702598
3 Santa.Elena    -0.8945315  1639.7790 -0.8135064
```
```r
data = melt(DF, id.vars = 'year') %>% group_by(variable)
d = data %>% do( {
  mdl = lm(value ~ year, data = .)
  trend =  coef(mdl)[['year']] * sd(.$year) / sd(.$value)
  sector_trend = pmax(-1, pmin(1, trend))
  data.frame(halpern.trend = sector_trend, coef.Beta0 = coef(mdl)[['(Intercept)']],  coef.year = coef(mdl)[['year']])
} )
     variable halpern.trend coef.Beta0  coef.year
1      El.Oro    -0.8945315   481.4069 -0.2388295
2      Guayas    -0.8945315   343.1915 -0.1702598
3 Santa.Elena    -0.8945315  1639.7790 -0.8135064

> data %>% do({data.frame(cor(.$year,.$value))})
     variable cor...year....value.
1      El.Oro           -0.8945315
2      Guayas           -0.8945315
3 Santa.Elena           -0.8945315
```
```r

> read.csv('hab_trend_gye2015.csv', header = TRUE)
  rgn_id     habitat      trend
1      1 soft_bottom -0.8945315
2      2 soft_bottom -0.8945315
3      6 soft_bottom -0.8945315
4      1    mangrove -0.9493326    # <---- antes eran -1, y
5      2    mangrove -0.9503731    # <----            -1
6      6    mangrove         NA
```
![trend](https://github.com/OHI-Science/gye/blob/draft/region2015/pre-proc/hab_trend_3/hab_trend_gye2015.csv.png)

![trend](https://github.com/OHI-Science/gye/blob/draft/region2015/pre-proc/hab_trend_3/hab_trend_gye2015_mangrove.csv.png)

## cw_fertilizer_trend
file: `cw_fertilizer_trend_gye2015.csv`
```r
  halpern.trend coef.Beta0 coef.year
1      0.729996  -3189.662  1.616833
```
![trend](https://github.com/OHI-Science/gye/blob/draft/region2015/pre-proc/CW/cw_fertilizer_trend_gye2015.csv.png)

## cw_pathogen_trend_gye2015.csv
file: `cw_pathogen_trend_gye2015.csv`
```r
    Provincia halpern.trend coef.Beta0  coef.year
1      El Oro     0.9995888  -53.53220 0.02706556
2      Guayas     0.9996868  -37.37956 0.01902788
3 Santa Elena     0.9992926  -47.48317 0.02404863
```
![trend](https://github.com/OHI-Science/gye/blob/draft/region2015/pre-proc/CW/cw_pathogen_trend_gye2015.csv.png)

## cw_coastalpopn_trend_gye2015.csv
file: `cw_coastalpopn_trend_gye2015.csv`
```r
    Provincia halpern.trend coef.Beta0   coef.year
1      El Oro     0.4486744  -5.255776 0.002685736
2      Guayas     0.9978289 -11.696870 0.005980759
3 Santa Elena     0.8026107  -3.580096 0.001813239
```
![trend](https://github.com/OHI-Science/gye/blob/draft/region2015/pre-proc/CW/cw_coastalpopn_trend_gye2015.csv.png)

## cw_pesticide_trend_gye2015.csv
file: `cw_pesticide_trend_gye2015.csv`
```r
  halpern.trend coef.Beta0 coef.year
1     0.6580158  -842.2727 0.4233247
```
![trend](https://github.com/OHI-Science/gye/blob/draft/region2015/pre-proc/CW/cw_pesticide_trend_gye2015.csv.png)
