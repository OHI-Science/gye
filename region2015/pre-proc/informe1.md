---
title: "Informe de actividades (1/5/2015 -- 15/6/2015)"
author: "AM Sajo Castelli"
date: "14/06/2015"
output:
  pdf_document:
    number_sections: yes
    toc: yes
---
# Actividades realizadas y Productos entregados
Se presentan las actividades realizadas y productos entregados 
durante el mes de Mayo y la primera quincena de Junio de 2015.

Tiempo de contratación 1,5 mes/hombre a costo de 1000USD / mes: total 1500USD.

# Capa HAB

Para este producto las siguientes actividades fueron realizadas:

Sub-meta Hábitat (HAB)
Las capas de datos correspondientes al Golfo de Guayaquil para esta sub-meta fueron agregadas y validadas:

 - `hab_extent_gye2015.csv`
 - `hab_health_gye2015.csv`
 - `hab_trend_gye2015.csv`
 - `hab_presence_gye2015.csv`
 
La capa `hab_extent` tiene los valores de área en km2 para cada tipo de hábitat:
 - mangrove
 - mangrove_offshore1km
 - mangrove_inland1km
 - rocky_reef
 - soft_bottom
 
Adicionalmente se modificó y validó el código fuente `functions.R` en línea 1413 definir los hábitat que se 
utilizarán para el Golfo (`mangrove` and `soft_bottom`).

Luego el registro de las nuevas capas y validación de los puntajes (scores) nuevos, construcción de tabla comparativa. 


# Capas SPP TREND and SPP STATUS.

Para este producto las siguientes actividades fueron realizadas:

 - Construcción de las capas `spp_trend` y `spp_status` a partir de la fuente: `10.2.1 Tabla _ spp.xlsx` @ sheets 1, 2, 3.
 - Se escribió el código R `mk_spp_status.R` que efectúa los cambios necesarios
 
Específicamente, el código R escrito, arregla y acomoda los datos fuentes luego une las tres hojas de calculo en una y estima los
scores.

## Status
```R
aceptables = complete.cases(FRAME$Estado.Peso)
X_SPP = FRAME[aceptables, ] %>% group_by(Tipo.Fondo) %>% do({
        data.frame(suma=sum(.$Estado.Peso), cantidad=nrow(.))
})  %>% join(Area, by='Tipo.Fondo') %>% mutate(
cociente = 1 - suma / cantidad, Status = cociente * total.km2 / Total)
```
Output:
```R
> head(X_SPP)
  Tipo.Fondo suma cantidad     habitat  total.km2    Total  cociente      Status
1          B  6.2      178 soft_bottom 12051.9487 12109.32 0.9651685 0.960595608
2          D  6.8      116  rocky_reef    57.3735 12109.32 0.9413793 0.004460219
```
## Trend
```R
aceptables = complete.cases(FRAME$Tendencia.Peso)
Y_SPP = FRAME[aceptables, ] %>% group_by(Tipo.Fondo) %>% do({
  data.frame(mean = mean(.$Tendencia.Peso))
})  %>% join(Area, by='Tipo.Fondo') %>% mutate(Trend = mean * total.km2 / Total)
```
Output
```R
  Tipo.Fondo       mean     habitat  total.km2    Total         Trend
1          B -0.1944444 soft_bottom 12051.9487 12109.32 -0.1935231742
2          D -0.1428571  rocky_reef    57.3735 12109.32 -0.0006768516
```

Posteriormente fueron registradas las capas y validadas en `layers.csv`.
Se validaron los score globales (`calculateALL.R`), construcción de tabla comparativa. 

# Capas ICO_SPP

Se validaron y registraron las capas

 1. `ico_spp_extinction_status_gye2015.csv` 
 2. `ico_spp_popn_trend_gye2015.csv`

Luego del registro de las nuevas capas, se hizo la validación de los puntajes (scores) nuevos y construcción de tabla comparativa.
 
# Capas LE
Se validaron y registraron las capas 
 
 1. `le_jobs_sector_year_gye2015.csv`
 2. `le_sector_weight_gye2015.csv`
 3. `le_unemployment_gye2015.csv`
 4. `le_vab_gye2015.csv`
 5. `le_wage_sector_year_gye2015.csv`
 6. `le_workforcesize_adj_gye2015.csv`
 7.  `le_popn`
 
Adicionalmente se modifica la función  `LIV_ECO` dentro de `functions.R` para usar la capa `le_sector_weight_gye2015.csv` 
en vez de usar datos preprogramados
Se modifica adicionalmente la función para que use el VAB en vez del GDP.

Al finalizar los cambios se valida el código fuente.

Luego del registro de las nuevas capas, se hizo la validación de los puntajes (scores) nuevos y construcción de tabla comparativa.


# Actualización de la capa `hab_trend`

La capa `hab_trend_gye2015` es actualizada para que incluya las nuevas tendencias de los habitat: mangrove y soft_bottom.

Para ello su realizaron las siguientes actividades:

 1. La tendencia de mangrove es calculada en  `hab_trend` con la base de datos `tabla tendencia.xlsx` 
    y es restringida a  +/- 1.
 2. Para realizar el punto anterior se programa en R `mklayer.R`
 3. La tendencia de soft_bottom es calculada en `hab_trend_2` con base de datos `Respaldos Habitat destruction subtidal soft bottom-1.xlsx`
    @ sheet `final`y es restringida a  +/- 1. 
 4  El código escrito para realizar el punto anterior es  `mklayer2.R`
 5. En la fuente `mklayer2.R` se agrega una parte final que une `hab_trend/hab_trend_gye2015.csv` con la tabla de soft_bottom para generar la
 capa final `hab_trend/hab_trend_gye2015.csv`.
 6. Validación de la nueva capa
 7. Registro de la capa en `layers.csv`
 8. Recalculo de los scores globales y
 9. Recalculo de la tabla comparativa

# Meta TR

## Actualización Segunda de TR
Cambio completo de la función `TR()` dentro de `functions.R`:

## Ecuación nueva implementada
```r
TR = function(layers, year_max=NA){

  # Formula:
  # Xtr = 1/2 * [ Ti * Ri% / Pi + Te * Re% / Pe ] * Sr
  #
  # Ti = tourist count of national provenance (tr_visitors_local)
  # Ri = % of local tourist count per region (tr_percent_local)
  # Pi = projected local tourist count (target) (tr_target_local)
  # Te = tourist count of international provenance (tr_visitors_inter)
  # Re = % of alien tourist count per region (tr_percent_inter)
  # Pe = projected alien tourist count (target) (tr_target_inter)
  # Sr = Sustainability index (tr_sustainability)
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

## Cálculo de la tendencia
```r
# calculate trend
  # print(d_t)  %%% Example:
  #   rgn_id dimension     score
  # 1      1     trend 0.1632303
  # 2      2     trend 0.1632308
  # 3      6     trend 0.1632309
  # Steps
  # 1. Get I column trend
  # 2. Get E column trend
  # 3. Average \beta_1's
  # 4. cap at end -/+ 1
  d_t = d %>% filter(year %in% (year_max - 5) : year_max) %>% 
  select(rgn_id, year, I, E) %>% group_by(rgn_id) %>%
    do( mod.local = lm(I ~ year, data = .),
        mod.inter = lm(E ~ year, data = .)) %>% 
        do(data.frame(rgn_id=.$rgn_id, dimension='trends', 
        score.local=coef(.$mod.local)[['year']], score.inter=coef(.$mod.inter)[['year']])) %>%
    mutate(dimension='trend', score=median(t(cbind(score.local, score.inter)))) %>%
    mutate(score=max(min(score, 1), -1)) %>% select(rgn_id, dimension, score)
  # mutate(score=max(min(score*5, 1), -1)) %>% select(rgn_id, dimension, score) <-- why?
  # Answer: the *5 is NOT needed here because this formula
  #       does NOT use [S = (S_score - 1) / 5] nor [Xtr]
```

## Cálculo del estado
```r
# get status (as last year's value given by year_max)
  d_s = d %>% filter(Xtr, year==year_max) %>% 
  mutate(dimension='status', Xtr=100*Xtr) %>% 
  select(rgn_id, dimension, score=Xtr)
  # > print(d_s) %%% Example:
  # rgn_id dimension     score
  # 1      1    status  99.99963
  # 2      2    status 100.00000
  # 3      6    status 100.00000
```

Nota: `goals.csv` fue actualizado para reflejar la nueva declaración de `TR()` : `TR = function(layers, year_max=NA)`. 


Posteriormente se efectuó la validación de la función `TR()` y se recalcularon los scores globales. Finalmente,
se vuelve a construir la tabla comparativa de scores.


## Roll-back de TR

Las siguientes actividades fueron realizadas:
 1. Actualizar `functions.R` en lineas 848--920 para incorporar la fórmula
```{r}
# Formula:
# Xtr = 1/2 * [ Ti * Ri% / Pi + Te * Re% / Pe ] * Sr
#
# Ti = tourist count of national provenance (tr_visitors_local)
# Ri = % of local tourist count per region (tr_percent_local)
# Pi = projected local tourist count (target) (tr_target_local) <- NEW LAYER
# Te = tourist count of international provenance (tr_visitors_inter)
# Re = % of alien tourist count per region (tr_percent_inter)
# Pe = projected alien tourist count (target) (tr_target_inter) <- NEW LAYER
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
 2. Renombrar `tr_visitors_int` a  `tr_visitors_local`

 3. Renombrar `tr_percent_int` a `tr_percent_local`

 4. Renombrar `tr_visitors_ext` a `tr_visitors_inter`

 5. Renombrar `tr_percent_ext` a `tr_percent_inter`
 
 6. Declaración de la función fue cambiada a
 `TR = function(layers, year_max=NA, debug=FALSE, pct_ref=90)`
 
 7. Archivo `conf/goals.csv` fue actualizado para regresar el cambio
```r
TR(layers, year_max=2014)
```
 8. Las capas nuevas `tr_target_local` y `tr_target_inter` fueron agregar, validadas y registradas
 
 9. Recalculo de los scores globales`calculated_scores.R` 
 10. Recalculo de la tabla comparativa `compare_scores.R` y validación de los cambios obtenidos.



## Actualización Primera de TR
Para completar esta actividad se realizaron las siguientes tareas

 1. Actualización de `functions.R` entre las líneas 848 y 920 para incorporar la nueva  formula
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
 2. Agregar capa `tr_visitors_int`

 3. Agregar capa `tr_percent_int`

 4. Agregar capa `tr_visitors_ext`

 5. Agregar capa `tr_percent_ext`
 
 6. Cambiar declaración de función para
 `TR = function(layers, year_max=NA, debug=FALSE, pct_ref=90, projected=list(int=NA, ext=NA, year=NA))`
 
 7. Actualizar `conf/goals.csv` para la llamada correcta a `TR()`:
```r
TR(layers, year_max=2014, projected=list(int=5613693, ext=2173596, year=2019))
```
 9. Recalculo de los scores globales`calculated_scores.R` 
 10. Recalculo de la tabla comparativa `compare_scores.R` y validación de los cambios obtenidos.

### Notas

 1. Variable `Sustainability` usa información `gl2014` dentro `TR()` y se sigue usando como
```r
S     = (S_score - 1) / 5,
```
 2. Tendencia no es calculada de forma separada si no que se estima a través de `Xtr`.
 
# Recalculo de Tendencias
Todas las tendencias fueron recalculadas con 5 años a futuro:
```r
mdl = lm(value ~ year, data = .)
trend =  coef(mdl)[['year']] * sd(.$year) / sd(.$value)
sector_trend = pmax(-1, pmin(1, trend * 5))
```

## Tendencias
Las capas mencionadas en esta sección son estimadas usando la siguiente implementación:
```r
mdl = lm(value ~ year, data = .)
trend =  coef(mdl)[['year']] * sd(.$year) / sd(.$value)
sector_trend = pmax(-1, pmin(1, trend))
```

Se realizaron las siguientes actividades:

 1. Recalculo de las tendencias con datos locales
 2. Construcción de la capa
 3. Validación y registro de la capa 
 4. Recalculo de los score globales
 5. Actualización de la tabla comparativa



### Capa `hab_trend`
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
  data.frame(halpern.trend = sector_trend, 
  coef.Beta0 = coef(mdl)[['(Intercept)']],  coef.year = coef(mdl)[['year']])
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


### Capa `cw_fertilizer_trend`
file: `cw_fertilizer_trend_gye2015.csv`
```r
  halpern.trend coef.Beta0 coef.year
1      0.729996  -3189.662  1.616833
```

### cw_pathogen_trend_gye2015.csv
file: `cw_pathogen_trend_gye2015.csv`
```r
    Provincia halpern.trend coef.Beta0  coef.year
1      El Oro     0.9995888  -53.53220 0.02706556
2      Guayas     0.9996868  -37.37956 0.01902788
3 Santa Elena     0.9992926  -47.48317 0.02404863
```

### cw_coastalpopn_trend_gye2015.csv
file: `cw_coastalpopn_trend_gye2015.csv`
```r
    Provincia halpern.trend coef.Beta0   coef.year
1      El Oro     0.4486744  -5.255776 0.002685736
2      Guayas     0.9978289 -11.696870 0.005980759
3 Santa Elena     0.8026107  -3.580096 0.001813239
```

### cw_pesticide_trend_gye2015.csv
file: `cw_pesticide_trend_gye2015.csv`
```r
  halpern.trend coef.Beta0 coef.year
1     0.6580158  -842.2727 0.4233247
```

# Bitácora y Registro de Actividades
commit ee195d572d2054498546f83b3ff930d73f49ab63
Author: Andrew Sajo <asajo@usb.ve>
Date:   Sat Jun 13 23:24:17 2015 -0430

    Move mk_spp_status.R to the right place....

commit 6aabe9a2e8239e1ffbdb2c83213b5832c7de036b
Author: Andrew Sajo <asajo@usb.ve>
Date:   Sat Jun 13 22:47:24 2015 -0430

    Fix HAB sub-goal.

commit d9e73d5fcf365d03dd67bf98fba1d6fd98d91dd1
Author: Andrew Sajo <asajo@usb.ve>
Date:   Sat Jun 13 22:38:01 2015 -0430

    Add spp_status and spp_trend layers

commit 1b5a1815388281087be5a750381347f5fdd27e28
Merge: 58d470c 6314f2e
Author: Andrew Sajo <asajo@usb.ve>
Date:   Sat Jun 13 19:58:50 2015 -0430

    Merge branch 'draft' of https://github.com/OHI-Science/gye into draft

commit 58d470c6d8a7dfccb82a1a529f1b4dbc5685b0ce
Author: Andrew Sajo <asajo@usb.ve>
Date:   Sat Jun 13 19:58:16 2015 -0430

    Update two ICO/SPP layers

commit 6314f2ed11729f4cc29e42d2d1f7dbe9655f598d
Author: Andrew Sajo Castelli <talassio@users.noreply.github.com>
Date:   Sat Jun 13 19:56:20 2015 -0430

    Update README.md

commit 56b00b6c90173e78a0304b1a71469f8254e32beb
Author: Andrew Sajo <asajo@usb.ve>
Date:   Fri Jun 5 00:21:06 2015 -0430

    Last minute verification of ALL layers

commit dbb44832ca714bcea484f82ea206694cefb6c6ae
Author: Andrew Sajo <asajo@usb.ve>
Date:   Thu Jun 4 23:37:11 2015 -0430

    LE updates

commit 86b6119f1aa13c0f89de002e75177a08a7e39ade
Author: Andrew Sajo <asajo@usb.ve>
Date:   Thu Jun 4 23:33:26 2015 -0430

    LE Goal

commit 208d530163d63e12283b09ad168e3f0ef2df2b3f
Author: Andrew Sajo <asajo@usb.ve>
Date:   Thu Jun 4 23:32:14 2015 -0430

    LE goal

commit a6be4053d71c0398e1c32786231db283307448ee
Author: Andrew Sajo <asajo@usb.ve>
Date:   Thu Jun 4 23:18:48 2015 -0430

    le_* README.md

commit 41d31a5e21531139bda4d3eb17299d7799c40974
Author: Andrew Sajo <asajo@usb.ve>
Date:   Thu Jun 4 23:09:15 2015 -0430

    le_layers and LIV_ECO @ functions.R update

commit 5ef0bb28843e50afbc50b88f1a31d81321776254
Author: Andrew Sajo <asajo@usb.ve>
Date:   Thu Jun 4 22:19:36 2015 -0430

    Partially change GDP for VAB, var names stay unchanged

commit ce6f312216feb63e6bae2a3f71d80e49ea5b250c
Merge: 97f6d9c e44c399
Author: Andrew Sajo <asajo@usb.ve>
Date:   Thu Jun 4 22:17:01 2015 -0430

    Merge branch 'draft' of https://github.com/OHI-Science/gye into draft

commit 97f6d9c2cfa603e4503380e928dc8cedf6297803
Author: Andrew Sajo <asajo@usb.ve>
Date:   Thu Jun 4 22:16:43 2015 -0430

    Add le_* layers

commit 43b98188206ad49a272db69cd49796a6b3fe7d64
Author: Andrew Sajo <asajo@usb.ve>
Date:   Mon Jun 1 20:01:15 2015 -0430

    Add register pressure layers in layers.csv
    
    This brings 43 warnings

commit 51802d0860717906f7b6d291d0c7abb60a67a936
Author: Andrew Sajo <asajo@usb.ve>
Date:   Mon Jun 1 19:47:01 2015 -0430

    updated score for previous commit

commit 49bb1f3243619fb2469b9f7bb7a29f0602cef8b9
Author: Andrew Sajo <asajo@usb.ve>
Date:   Mon Jun 1 19:44:51 2015 -0430

    Update all trend layers with local info: project 5 years

commit 53f8f6d013f21012616163c874b5692a9a136596
Author: Andrew Sajo <asajo@usb.ve>
Date:   Mon Jun 1 17:59:20 2015 -0430

    fix pressure layers problem

commit 3c7a8d2c1b31160a4dc831b911aecf4de6ebe7ed
Author: Andrew Sajo <asajo@usb.ve>
Date:   Sun May 31 17:11:30 2015 -0430

    Trend doc update

commit 20e693eb1aca4a367bcbe0f5822f2df73c644f7a
Author: Andrew Sajo <asajo@usb.ve>
Date:   Sun May 31 17:06:43 2015 -0430

    Trend doc update

commit aa4d0301014be44370ea6cc3da738ff0a0163b73
Author: Andrew Sajo <asajo@usb.ve>
Date:   Sun May 31 17:00:22 2015 -0430

    Trend doc

commit 891d7994174867bd70251b59adde7e420f2fa34e
Author: Andrew Sajo <asajo@usb.ve>
Date:   Sun May 31 16:55:41 2015 -0430

    add trend layers. fix hab_trend.
    
    These layers all use
    mdl = lm(value ~ year, data = .)
    trend =  coef(mdl)[['year']] * sd(.$year) / sd(.$value)
    sector_trend = pmax(-1, pmin(1, trend))

commit 293eacd3ca35a3069190b8e4586ca51ae76e421a
Author: Andrew Sajo <asajo@usb.ve>
Date:   Thu May 28 23:17:01 2015 -0430

    add soft_bottom trend figure

commit 0f85de5f86de7fa6fdf0cc8a0739f6e3f4c3d090
Author: Andrew Sajo <asajo@usb.ve>
Date:   Thu May 28 23:16:28 2015 -0430

    add soft_bottom to hab_trend_gye2015 layer

commit 9c0a20787796dd2891243163b8b3b175f463cc7b
Merge: d601848 a582e0a
Author: Andrew Sajo <asajo@usb.ve>
Date:   Thu May 28 21:04:59 2015 -0430

    Merge branch 'draft' of https://github.com/OHI-Science/gye into draft

commit d601848c99f50fe29b13e711c6250f4ca7287187
Author: Andrew Sajo <asajo@usb.ve>
Date:   Thu May 28 21:04:03 2015 -0430

    add local pressure layer but not register in layers.csv

commit 106d64736d4ddea6b6e8d6e241adb2cae903d8ea
Author: Andrew Sajo <asajo@usb.ve>
Date:   Wed May 27 19:27:38 2015 -0430

    readme

commit 8b17fdfa218013bfa7f37347a1deaeae9c45cab5
Author: Andrew Sajo <asajo@usb.ve>
Date:   Wed May 27 19:25:10 2015 -0430

    compare scores for new pressure matrix

commit 7dbfd5482b25ff453f088e114c3688264df32818
Merge: 4653c4e 26f36b2
Author: Andrew Sajo <asajo@usb.ve>
Date:   Tue May 26 17:43:53 2015 -0430

    Merge branch 'draft' of https://github.com/OHI-Science/gye into draft

commit 4653c4ec4b1c252ad0b5af07dd746a2176969403
Author: Andrew Sajo <asajo@usb.ve>
Date:   Tue May 26 16:58:08 2015 -0430

    fix ; and , dissaster

commit 5ef1654d858ec6aaaf303f65a40eccbb26a1f941
Author: Andrew Sajo <asajo@usb.ve>
Date:   Thu May 21 12:50:17 2015 -0430

    replace TR=... by formula TR2=... in page 11 of
    pre-proc/TR/INFORME DE AVANCE 3TR-lb.pdf

commit 4d990bca6ebe74a3fd454f80c423c3feff54471a
Author: Andrew Sajo <asajo@usb.ve>
Date:   Fri May 15 00:40:57 2015 -0430

    scores table update and comparison

commit a08118318d05bdf38b3c8322e94f1043a7b9a9cf
Merge: eb44349 f950650
Author: Andrew Sajo <asajo@usb.ve>
Date:   Fri May 15 00:39:26 2015 -0430

    Merge branch 'draft' of https://github.com/OHI-Science/gye into draft

commit eb443494072710e9d3003268b6725a62d9f2b4a2
Author: Andrew Sajo <asajo@usb.ve>
Date:   Fri May 15 00:39:08 2015 -0430

    TSK #03-052015 report

commit 52a1b9e29d77ddada1880c4bfaf4460383a7d67b
Author: Andrew Sajo <asajo@usb.ve>
Date:   Fri May 15 00:26:46 2015 -0430

    Update TR to use new formulas

commit e14d9c21446f43af49888c72de50c7c0e66e5533
Author: Andrew Sajo <asajo@usb.ve>
Date:   Wed May 13 22:08:08 2015 -0430

    Update TR score to use 6 layers

commit 964c6ba5b6e73c463aa338edb2ffc0a018b1366b
Author: Andrew Sajo <asajo@usb.ve>
Date:   Wed May 13 21:32:36 2015 -0430

    Roll-back on layers names: int->local & ext->inter ...

commit 9dea8904b88314a2366f18f92a1be949e733bc2b
Merge: 687f40e de29013
Author: Andrew Sajo <asajo@usb.ve>
Date:   Tue May 12 23:40:32 2015 -0430

    Merge branch 'draft' of https://github.com/OHI-Science/gye into draft

commit 687f40e2d3ac154118c138c065b9ff4cc16f2a6d
Author: Andrew Sajo <asajo@usb.ve>
Date:   Tue May 12 23:40:16 2015 -0430

    Progress report

commit 2b9ff4a60c060cc24ee3387f3681311f609e47fb
Author: Andrew Sajo <asajo@usb.ve>
Date:   Tue May 12 23:11:21 2015 -0430

    Changed TR score formula + 4 new layers in TR gye 2015

commit f6df671fa331ecb99fcdd4d50aa804448b38ca12
Author: Andrew Sajo <asajo@usb.ve>
Date:   Sun May 3 16:13:58 2015 -0430

    rename layer file to .old

commit 7c8ebfdd9688f5a6c867243800b414bc1e43f012
Author: Andrew Sajo <asajo@usb.ve>
Date:   Sun May 3 16:10:18 2015 -0430

    update layers.csv

commit 63c93756c7dd05aa9e0e87a46db05dc5bfc9c034
Author: Andrew Sajo <asajo@usb.ve>
Date:   Sun May 3 16:04:59 2015 -0430

    layers.csv update

commit 0a6c1e129672cc79558d6cf8c6ff444d6437ef32
Merge: 49db9ed 0018a0d
Author: Andrew Sajo <asajo@usb.ve>
Date:   Sat May 2 21:38:25 2015 -0430

    Merge branch 'draft' of https://github.com/OHI-Science/gye into draft

commit 49db9edd52916a59a7bd376f807707d7c8f7c430
Author: Andrew Sajo <asajo@usb.ve>
Date:   Sat May 2 21:38:18 2015 -0430

    update rgn_area_inland1km and offshore3nm layers with local data

commit 0018a0da476a1b33c3b97c270680c7f8f0b905c7
Author: Andrew Sajo Castelli <talassio@users.noreply.github.com>
Date:   Thu Apr 30 18:44:16 2015 -0430

    Update README.md

commit 2d75a00e20f376de618452339695afbc5169191b
Author: Andrew Sajo Castelli <talassio@users.noreply.github.com>
Date:   Thu Apr 30 18:43:38 2015 -0430

    Update README.md

commit b57136fd8081bec7ca4c0f833efe55110407e719
Author: Andrew Sajo Castelli <talassio@users.noreply.github.com>
Date:   Thu Apr 30 18:42:22 2015 -0430

    Delete ~$tabla tendencia.xlsx

commit c0abf240f1dd5a8f79db2e03da7369b2ef7aff20
Author: Andrew Sajo Castelli <talassio@users.noreply.github.com>
Date:   Thu Apr 30 18:37:10 2015 -0430

    Update TODO.md

commit 61b2206745f34a917088744cee29e177b0de7fff
Author: Andrew Sajo <asajo@usb.ve>
Date:   Thu Apr 30 18:27:45 2015 -0430

    todos

commit 13dda4709dfe4bfd96133105afe8c91c600055c1
Author: Andrew Sajo <asajo@usb.ve>
Date:   Thu Apr 30 16:38:57 2015 -0430

    Layer CP updated w/ local data.

commit 0acab8355fa845a32a44d0a730cf92b39b8ad393
Author: Andrew Sajo <asajo@usb.ve>
Date:   Thu Apr 30 16:29:06 2015 -0430

    add right graph.

commit 2b87d2f49c3b885fcce6bd1f5f9e7ef657365ee9
Author: Andrew Sajo <asajo@usb.ve>
Date:   Thu Apr 30 16:27:17 2015 -0430

    delete bad graph

commit 1df599c278be2f17376185eaa973bffe356042cf
Author: Andrew Sajo Castelli <talassio@users.noreply.github.com>
Date:   Thu Apr 30 16:31:44 2015 -0430

    Update README.md

commit 1a49ab12e0d4f673fc9c16c53cc828b3fade1096
Author: Andrew Sajo Castelli <talassio@users.noreply.github.com>
Date:   Thu Apr 30 16:31:19 2015 -0430

    Delete lms.png

commit 22dde7e7aa9258f011aaa52048e2a69653a187a5
Author: Andrew Sajo <asajo@usb.ve>
Date:   Thu Apr 30 16:21:33 2015 -0430

    typo

commit 7df74041243ec65320efb4d6f5f6314511d3c02f
Author: Andrew Sajo <asajo@usb.ve>
Date:   Thu Apr 30 16:20:03 2015 -0430

    typo ... !

commit 864ad9105fcf9ab725e9ede71f32c7ca001d0b2e
Author: Andrew Sajo <asajo@usb.ve>
Date:   Thu Apr 30 16:17:45 2015 -0430

    typo fix

commit e49d3cd3393fa9b6b42e0a4e5b4061f0d4d1af44
Merge: a074ec1 c7d0cf2
Author: Andrew Sajo <asajo@usb.ve>
Date:   Thu Apr 30 16:14:32 2015 -0430

    Merge branch 'draft' of https://github.com/OHI-Science/gye into draft

commit a074ec18814c485b70ec69c1030b7e88f14447cd
Author: Andrew Sajo <asajo@usb.ve>
Date:   Thu Apr 30 16:14:21 2015 -0430

    README.md for hab_trend layer

commit b228df8d19cf86993d5b0a99fb9018798e6a2497
Author: Andrew Sajo <asajo@usb.ve>
Date:   Thu Apr 30 15:52:38 2015 -0430

    Added layers for CS
     - hab_extent
     - hab_health
     - hab_trend was already done in previous commits
     - cs_habitat_extent is a duplicate of hab_extent
    
    Important: ao_need layer updated: removed 2011-2013 extrapolation. last year is 2010. Updated goals.csv to use this last year and not 2013.