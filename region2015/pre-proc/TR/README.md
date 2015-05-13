---
title: "Readme TR score and layers"
author: "AM Sajo Castelli"
date: "12/05/2015"
output: html_document
---

## TSK 01052015: Update TR score formula and associated layers.

![task:complete](https://img.shields.io/badge/task-complete-brightgreen.svg)

In order to complete this task, the following steps were taken:

 1. Updated functions.R at lines <https://github.com/OHI-Science/gye/blob/draft/region2015/conf/functions.R#L848> to
 <https://github.com/OHI-Science/gye/blob/draft/region2015/conf/functions.R#L920> with the formula
```{r}
# Formula:
# Xtr = 1/2 * [ Ti * Ri% / Pi + Te * Re% / Pe ] * Sr
#
# Ti = tourist count of national provenance (tr_visitors_int)
# Ri = % of local tourist count per region (tr_percent_int)
# Pi = projected local tourist count (target) (projected$int)
# Te = tourist count of international provenance (tr_visitors_ext)
# Re = % of alien tourist count per region (tr_percent_ext)
# Pe = projected alien tourist count (target) (projected$ext)
# S = Sustainability index (tr_sustainability)
#
# Esta fórmula representa  la suma del porcentaje de
# visitantes nacionales  y el porcentaje de visitantes
# internacionales, donde cada uno de estos porcentajes
# se calcula con respecto a la meta o número de
# visitantes de referencia que se quiere alcanzar en
# cada caso. Esta suma es modificada por un índice de
# sostenibilidad que penaliza los porcentajes obtenidos
# por la capacidad de mantener una actividad turística
# sostenible en función de la infraestructura  y otros
# factores locales.
```
 2. Add `tr_visitors_int` layer <https://github.com/OHI-Science/gye/blob/draft/region2015/layers/tr_visitors_int_gye2015.csv>

 3. Add `tr_percent_int` layer <https://github.com/OHI-Science/gye/blob/draft/region2015/layers/tr_percent_int_gye2015.csv>

 4. Add `tr_visitors_ext` layer <https://github.com/OHI-Science/gye/blob/draft/region2015/layers/tr_visitors_ext_gye2015.csv>

 5. Add `tr_percent_ext` layer <https://github.com/OHI-Science/gye/blob/draft/region2015/layers/tr_percent_ext_gye2015.csv>
 
 6. Function header was updated to
 `TR = function(layers, year_max=NA, debug=FALSE, pct_ref=90, projected=list(int=NA, ext=NA, year=NA))`
 
 7. File `conf/goals.csv` (<https://github.com/OHI-Science/gye/blob/draft/region2015/conf/goals.csv#L9>) was updated to correctly call `TR`: 
```r
TR(layers, year_max=2014, projected=list(int=5613693, ext=2173596, year=2019))
```

## Notes

 1. Sustainability layer used is the gl2014 and in `TR()` it is still used as
```r
S     = (S_score - 1) / 5,
```
 2. Trend is *NOT* calculated separatly: Internal tourism _vs._ External tourism trends, but
    is estimated using the `Xtr` score. **This differs from what discussed by conference call.**
 
