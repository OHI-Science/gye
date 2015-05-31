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

![trend](https://github.com/OHI-Science/gye/blob/draft/region2015/pre-proc/CW/cw_fertilizer_trend_gye2015.csv.png)

## cw_pathogen_trend_gye2015.csv
file: `cw_pathogen_trend_gye2015.csv`

![trend](https://github.com/OHI-Science/gye/blob/draft/region2015/pre-proc/CW/cw_pathogen_trend_gye2015.csv.png)

## cw_coastalpopn_trend_gye2015.csv
file: `cw_coastalpopn_trend_gye2015.csv`

![trend](https://github.com/OHI-Science/gye/blob/draft/region2015/pre-proc/CW/cw_coastalpopn_trend_gye2015.csv.png)

## cw_pesticide_trend_gye2015.csv
file: `cw_pesticide_trend_gye2015.csv`

![trend](https://github.com/OHI-Science/gye/blob/draft/region2015/pre-proc/CW/cw_pesticide_trend_gye2015.csv`.png)
