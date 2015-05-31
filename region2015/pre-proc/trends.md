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
