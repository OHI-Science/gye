---
title:  "TASK LIST @talassio/@andres"
author: "AM Sajo Castelli"
date: "27/04/2015"
output: html_document
---
# TSKM #1: Actualizacion de varias metas, presiones y resiliencias
![task:complete](https://img.shields.io/badge/task-complete-brightgreen.svg)


 1. `github/gye/region2015/prep/presiones`: `po_pathogens` y `po_trash`

inesperadamente también están cambiando en este momento la siguiente:
`hd_subtidal_hb` le van a poner a todo 0 (cero) (antes iban a usar la global, pero como en el Golfo no hay pesca con explosivos, se pone todo en cero.)

`fp_art_hb` que es una presión que también va todo en cero, asi que por fa, incluye esa en mi archivito, en el punto 1.

 2. `github/gye/region2015/prep/9_CW`:
`cw_fertilizer_trend_gye2015.csv`, `cw_pesticide_trend_gye2015.csv` , `cw_pathogen_trend_gye2015.csv` y `cw_coastalpopn_trend_gye2015.csv`.

todas tienen nuevos valores, son series de tiempo que se usan para calcular las respectivas tendencias, por lo tanto esas tendencias se deben volver a calcular.
 * Coastalpopn
 
![trend](https://github.com/OHI-Science/gye/blob/draft/region2015/pre-proc/CW_2/cw_coastalpopn_trend_gye2015.csv_El%20Oro.png)
![trend](https://github.com/OHI-Science/gye/blob/draft/region2015/pre-proc/CW_2/cw_coastalpopn_trend_gye2015.csv_Guayas.png)
![trend](https://github.com/OHI-Science/gye/blob/draft/region2015/pre-proc/CW_2/cw_coastalpopn_trend_gye2015.csv_Santa%20Elena.png)
 * Fertilizer

![trend](https://github.com/OHI-Science/gye/blob/draft/region2015/pre-proc/CW_2/cw_fertilizer_trend_gye2015.csvEl%20Oro.png)
![trend](https://github.com/OHI-Science/gye/blob/draft/region2015/pre-proc/CW_2/cw_fertilizer_trend_gye2015.csvGuayas.png)
![trend](https://github.com/OHI-Science/gye/blob/draft/region2015/pre-proc/CW_2/cw_fertilizer_trend_gye2015.csvSanta%20Elena.png)
 * Pesticide

![trend](https://github.com/OHI-Science/gye/blob/draft/region2015/pre-proc/CW_2/cw_pesticide_trend_gye2015.csv_El%20Oro.png)
![trend](https://github.com/OHI-Science/gye/blob/draft/region2015/pre-proc/CW_2/cw_pesticide_trend_gye2015.csv_Guayas.png)
![trend](https://github.com/OHI-Science/gye/blob/draft/region2015/pre-proc/CW_2/cw_pesticide_trend_gye2015.csv_Santa%20Elena.png)
 * Pathogen

![trend](https://github.com/OHI-Science/gye/blob/draft/region2015/pre-proc/CW_2/cw_pathogen_trend_gye2015.csv_El%20Oro.png)
![trend](https://github.com/OHI-Science/gye/blob/draft/region2015/pre-proc/CW_2/cw_pathogen_trend_gye2015.csv_Guayas.png)
![trend](https://github.com/OHI-Science/gye/blob/draft/region2015/pre-proc/CW_2/cw_pathogen_trend_gye2015.csv_Santa%20Elena.png)


 3. `github/gye/region2015/prep/8.1_ICO`: `ico_spp_extinction_status_gye2015_TG.csv`, `ico_spp_popn_trend_gye2015_TG.csv`.

 4. `github/gye/region2015/prep/6.1_LIV`: `le_vab.csv` y `le_workforcesize_adj.csv`

 5. `github/gye/region2015/prep/1.2_MAR`: `mar_coastalpopn_inland25km`: Se corrigieron unos valores para Santa Elena de población.

 6.  `github/gye/region2015/prep/1.1_FIS`: `fp_wildcaught_weight`

 7. Las capas de resiliencias están en github/gye/region2015/prep/resiliencia 
todas las capas en este directorio son nuevas, no se habían colocado datos locales en ellas. Ahora se hizo para 15  capas del total de 19 que están en la aplicación.

Son estas:

 1. `li_gci`
 2. `wgi_all`
 3. `fishing_v1`
 4. `fishing_v2`
 5. `fishing_v1_eez`
 6. `fishing_v2_eez`
 7. `fishing_v3_eez`
 8. `mariculture`
 9. `habitat`
 10. `habitat_combo`
 11. `habitat_combo_eez`
 12. `tourism`
 13. `water`
 14. `cites`
 15. `alien_species`

No se van a cambiar las otras 4 que son:
 1. `msi_gov`
 2. `li_sector_evenness`
 3. `species_diversity`
 4. `species_diversity_3nm`

# TSKB #6: Actualización de meta NP
![task:complete](https://img.shields.io/badge/task-complete-brightgreen.svg)

Esta actividad conlleva las siguientes tareas

 1. Modificar el archivo general de metas `goals.csv` para que el último año
    a tomar para la estimación de tendencias fuese 2014 y no 2011
 2. Recalculo y validación de los scores sociados a la meta NP
 3. Recalculo de la tabla comparativa

# TSKB #5: Meta NP
![task:complete](https://img.shields.io/badge/task-complete-brightgreen.svg)

Las actividades involucradas son:
 1. Validación y registro de las capas:
    * `np_blast_gye2015.csv`
    * `np_cyanide_gye2015.csv`
    * `np_harvest_product_weight_gye2015.csv`
    * `np_harvest_tonnes_gye2015.csv`
    * `np_harvest_tonnes_relative_gye2015.csv`
    * `np_harvest_usd_gye2015.csv`
    * `np_harvest_usd_relative_gye2015.csv`
 2. Recalculo y validación de los scores sociados a la meta NP
 3. Recalculo de la tabla comparativa

# TSKB #4: Depuración de dos capas de la meta MAR
![task:complete](https://img.shields.io/badge/task-complete-brightgreen.svg)

Dos capas presentaron problemas al momento de calcular los puntajes de `status` y `trend`
para las regiones 1 y 6. Esto conllevo a la depuración de la función `MAR()` y se identificó el
problema como datos faltantes en las capas `mar_harvest_tonnes_gye2015.csv` y 
`mar_sustainability_score_gye2015.csv`. Se acomodaron estas capas y se recalculó los
scores y la tabla comparativa.





# TSKB #3: Actualizar meta MAR
![task:complete](https://img.shields.io/badge/task-complete-brightgreen.svg)

Las actividades involucradas son:
 1. Validación y registro de las capas:
    * `mar_coastalpopn_inland25km_gye2015.csv`
    * `mar_harvest_species_gye2015.csv`
    * `mar_harvest_tonnes_gye2015.csv`
    * `mar_sustainability_score_gye2015.csv`
    * `mar_trend_years_gye2015.csv`
 2. Recalculo y validación de los scores sociados a la meta MAR
 3. Recalculo de la tabla comparativa 

# TSKB #2: Actualizar meta FIS
![task:complete](https://img.shields.io/badge/task-complete-brightgreen.svg)

Las actividades involucradas son:

 1. Validar, agregar y registrar las capas 
    `fis_b_bmsy`, `fis_proparea` y `fp_wildcaught_weight`.
 2. Validar el nuevo ajuste de modelo. 
 3. Recalcular la tabla comparativa de puntajes.

# TSKB #1: Completar y depurar capa `fis_meancatch`
![task:complete](https://img.shields.io/badge/task-complete-brightgreen.svg)

La tarea consiste en completar datos de años faltantes y asociar el código FAO al SAUP.

# TSK #09: Fix up HAB
![task:complete](https://img.shields.io/badge/task-complete-brightgreen.svg)

This task required the validation on layers and the correcto of line 1413 of `functions.R`.

Sub-meta Hábitats (HAB)
Las capas de datos correspondientes al Golfo de Guayaquil para esta sub-meta son las siguientes

 - `hab_extent_gye2015.csv`
 - `hab_health_gye2015.csv`
 - `hab_trend_gye2015.csv`
 - `hab_presence_gye2015.csv`
 
La capa hab_extent tiene los valores de área en km2 para cada tipo de hábitat:
 - mangrove
 - mangrove_offshore1km
 - mangrove_inland1km
 - rocky_reef
 - soft_bottom
 
La capa hab_health se interpreta como la condición actual para cada tipo de hábitat, y las
metodologías de cálculo varían según el tipo de hábitat. Se hizo el cálculo para manglar y para
fondos suaves utilizando las metodologias propuestas por Halpern et al. 2012. Para manglar se
calculó el porcentaje de pérdida del área del manglar utilizando como año de referencia los
datos de 1991. Para fondos suaves se utilizan como datos la densidad de pesca de arrastre
(captura por unidad de área) como una variable proxy para estimar la condición (status) de los
fondos suaves presentes en el golfo.
La capa hab_trend se calcula para manglar y fondos suaves. Para manglar se calcula a partir de
datos históricos de área de manglar y se estandariza esta tendencia entre -1 y 1. Para fondos
suaves se utilizan los datos de varios años del estado actual de este hábitat, a partir de los datos
históricos de densidad de pesca de arrastre.
La capa hab_presence es una variable Booleana que toma valores 0-1 dependiendo de si hay (1)
o no (0) presencia de algún tipo de hábitat en el Golfo.
Dado que se tienen datos de condición y tendencia para los hábitats de manglar y fondos suaves, solo se
evaluarían estos dos ecosistemas para el Golfo.
Modificaciones que hay que hacer en el código de R:


**En la línea 1413 definir los hábitat que se utilizarán para el Golfo (`mangrove` and `soft_bottom`).**


# TSK #08: SPP TREND and STATUS.
![task:complete](https://img.shields.io/badge/task-complete-brightgreen.svg)

 - Source: `10.2.1 Tabla _ spp.xlsx` @ sheets 1, 2, 3.
 - Code: `mk_spp_status.R`
 
Build status and trend layers. But first fixes typos on source xlsx and unites
information of sheets 1, 2 and 3. Groups by `habitat` and estimates scores:

## Status
```R
aceptables = complete.cases(FRAME$Estado.Peso)
X_SPP = FRAME[aceptables, ] %>% group_by(Tipo.Fondo) %>% do({
        data.frame(suma=sum(.$Estado.Peso), cantidad=nrow(.))
})  %>% join(Area, by='Tipo.Fondo') %>% mutate(cociente = 1 - suma / cantidad, Status = cociente * total.km2 / Total)
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

# TSK #07-062015: ICO_SPP layersupdate.
![task:complete](https://img.shields.io/badge/task-complete-brightgreen.svg)

Updated the layers

 1. `ico_spp_extinction_status_gye2015.csv` 
 2. `ico_spp_popn_trend_gye2015.csv`

# TSK #06-042015: LE goal update.
![task:complete](https://img.shields.io/badge/task-complete-brightgreen.svg)

Registered last `le_popn` layer with local data.

# TSK #05-042015: le_* layers update.
![task:complete](https://img.shields.io/badge/task-complete-brightgreen.svg)


The following layers where update and registered:

 1. `le_jobs_sector_year_gye2015.csv`
 2. `le_sector_weight_gye2015.csv` This layer must **not** have missing values, sector that does not have weight should have a "1"
 3. `le_unemployment_gye2015.csv`
 4. `le_vab_gye2015.csv`
 5. `le_wage_sector_year_gye2015.csv`
 6. `le_workforcesize_adj_gye2015.csv`

In `functions.R` the function `LIV_ECO` was modified to use `le_sector_weight_gye2015.csv` instead of hard-coded weights, also
**GDP** was `transmuted` to **VAB** (but variable names where not changed).

## Note on trend for LIV goal
Currently the LIV trend is NA (for global data is 0.56). Cause, see columns `jobs_adj` and `wage_usd` which are used for `lm`:
```R
Browse[1]> liv
    rgn_id year sector         jobs multiplier   jobs_mult  jobs_all pct_unemployed proportion_employed  employed    jobs_adj wage_usd
1        1 2009    aqf           NA       1.00          NA        NA             NA                  NA        NA          NA       NA
2        2 2009    aqf           NA       1.00          NA        NA             NA                  NA        NA          NA       NA
3        6 2009    aqf           NA       1.00          NA        NA             NA                  NA        NA          NA       NA
4        1 2009     cf  4841.000000       1.73  8374.93000        NA             NA                  NA        NA          NA       NA
5        2 2009     cf 17432.000000       1.73 30157.36000        NA             NA                  NA        NA          NA       NA
6        6 2009     cf  6747.000000       1.73 11672.31000        NA             NA                  NA        NA          NA       NA
7        1 2009    mar   449.000000       1.97   884.53000        NA             NA                  NA        NA          NA       NA
8        2 2009    mar  1125.000000       1.97  2216.25000        NA             NA                  NA        NA          NA       NA
9        6 2009    mar    21.000000       1.97    41.37000        NA             NA                  NA        NA          NA       NA
10       1 2009    mmw           NA       1.00          NA        NA             NA                  NA        NA          NA       NA
11       2 2009    mmw           NA       1.00          NA        NA             NA                  NA        NA          NA       NA
12       6 2009    mmw           NA       1.00          NA        NA             NA                  NA        NA          NA       NA
13       1 2009     sb     9.000000       1.88    16.92000        NA             NA                  NA        NA          NA       NA
14       2 2009     sb  1552.000000       1.88  2917.76000        NA             NA                  NA        NA          NA       NA
15       6 2009     sb    12.000000       1.88    22.56000        NA             NA                  NA        NA          NA       NA
16       1 2009     se    27.000000       1.00    27.00000        NA             NA                  NA        NA          NA       NA
17       2 2009     se    52.000000       1.00    52.00000        NA             NA                  NA        NA          NA       NA
18       6 2009     se    18.000000       1.00    18.00000        NA             NA                  NA        NA          NA       NA
19       1 2009   tour   684.000000       1.92  1313.28000        NA             NA                  NA        NA          NA       NA
20       2 2009   tour  4280.000000       1.92  8217.60000        NA             NA                  NA        NA          NA       NA
21       6 2009   tour   461.000000       1.92   885.12000        NA             NA                  NA        NA          NA       NA
22       1 2009   tran   136.000000       1.88   255.68000        NA             NA                  NA        NA          NA       NA
23       2 2009   tran   413.000000       1.88   776.44000        NA             NA                  NA        NA          NA       NA
24       6 2009   tran           NA       1.88          NA        NA             NA                  NA        NA          NA       NA
25       1 2009    wte           NA       1.00          NA        NA             NA                  NA        NA          NA       NA
26       2 2009    wte           NA       1.00          NA        NA             NA                  NA        NA          NA       NA
27       6 2009    wte           NA       1.00          NA        NA             NA                  NA        NA          NA       NA
28       1 2010    aqf           NA       1.00          NA  410988.0       7.140466           0.9285953  381641.5          NA       NA
29       2 2010    aqf           NA       1.00          NA 2693314.0       7.140466           0.9285953 2500998.8          NA       NA
30       6 2010    aqf           NA       1.00          NA  191389.0       7.140466           0.9285953  177722.9          NA       NA
31       1 2010     cf  5391.000000       1.73  9326.43000  410988.0       7.140466           0.9285953  381641.5  8660.47939      539
32       2 2010     cf 19415.000000       1.73 33587.95000 2693314.0       7.140466           0.9285953 2500998.8 31189.61368      539
33       6 2010     cf  7514.000000       1.73 12999.22000  191389.0       7.140466           0.9285953  177722.9 12071.01505      539
34       1 2010    mar   500.000000       1.97   985.00000  410988.0       7.140466           0.9285953  381641.5   914.66640      539
35       2 2010    mar  1253.000000       1.97  2468.41000 2693314.0       7.140466           0.9285953 2500998.8  2292.15401      539
36       6 2010    mar    23.000000       1.97    45.31000  191389.0       7.140466           0.9285953  177722.9    42.07465      539
37       1 2010    mmw           NA       1.00          NA  410988.0       7.140466           0.9285953  381641.5          NA       NA
38       2 2010    mmw           NA       1.00          NA 2693314.0       7.140466           0.9285953 2500998.8          NA       NA
39       6 2010    mmw           NA       1.00          NA  191389.0       7.140466           0.9285953  177722.9          NA       NA
40       1 2010     sb    10.000000       1.88    18.80000  410988.0       7.140466           0.9285953  381641.5    17.45759      539
41       2 2010     sb  1728.000000       1.88  3248.64000 2693314.0       7.140466           0.9285953 2500998.8  3016.67195      539
42       6 2010     sb    13.000000       1.88    24.44000  191389.0       7.140466           0.9285953  177722.9    22.69487      539
43       1 2010     se    30.000000       1.00    30.00000  410988.0       7.140466           0.9285953  381641.5    27.85786      539
44       2 2010     se    58.000000       1.00    58.00000 2693314.0       7.140466           0.9285953 2500998.8    53.85853      539
45       6 2010     se    20.000000       1.00    20.00000  191389.0       7.140466           0.9285953  177722.9    18.57191      539
46       1 2010   tour   762.000000       1.92  1463.04000  410988.0       7.140466           0.9285953  381641.5  1358.57212      539
47       2 2010   tour  4767.000000       1.92  9152.64000 2693314.0       7.140466           0.9285953 2500998.8  8499.09881      539
48       6 2010   tour   513.000000       1.92   984.96000  191389.0       7.140466           0.9285953  177722.9   914.62926      539
49       1 2010   tran   151.000000       1.88   283.88000  410988.0       7.140466           0.9285953  381641.5   263.60964      539
50       2 2010   tran   460.000000       1.88   864.80000 2693314.0       7.140466           0.9285953 2500998.8   803.04925      539
51       6 2010   tran           NA       1.88          NA  191389.0       7.140466           0.9285953  177722.9          NA       NA
52       1 2010    wte           NA       1.00          NA  410988.0       7.140466           0.9285953  381641.5          NA       NA
53       2 2010    wte           NA       1.00          NA 2693314.0       7.140466           0.9285953 2500998.8          NA       NA
54       6 2010    wte           NA       1.00          NA  191389.0       7.140466           0.9285953  177722.9          NA       NA
55       1 2011    aqf           NA       1.00          NA  417635.3             NA                  NA        NA          NA       NA
56       2 2011    aqf           NA       1.00          NA 2732915.4             NA                  NA        NA          NA       NA
57       6 2011    aqf           NA       1.00          NA  196066.8             NA                  NA        NA          NA       NA
58       1 2011     cf  5941.605163       1.73 10278.97693  417635.3             NA                  NA        NA          NA      561
59       2 2011     cf 21397.934380       1.73 37018.42648 2732915.4             NA                  NA        NA          NA      561
60       6 2011     cf  8281.435948       1.73 14326.88419  196066.8             NA                  NA        NA          NA      561
61       1 2011    mar   551.067071       1.97  1085.60213  417635.3             NA                  NA        NA          NA      561
62       2 2011    mar  1380.974081       1.97  
.... cropped ....
```

# TSK #04-052015: hab_trend layer update.
![task:complete](https://img.shields.io/badge/task-complete-brightgreen.svg)

The layer `hab_trend_gye2015` is updated. Now includes the trends of mangrove and soft_bottom.

Notes on implementation:

 1. mangrove class trend is calculated in `hab_trend` with database `tabla tendencia.xlsx` 
    and is truncated +/- 1. Code used is `mklayer.R`
 2. soft_bottom class tren is calculated in `hab_trend_2` with database `Respaldos Habitat destruction subtidal soft bottom-1.xlsx`
    and sheet `final`. it is also truncated +/- 1. Code used is `mklayer2.R`
 3. The final step in `mklayer2.R` is to grab `hab_trend/hab_trend_gye2015.csv` which only contains mangrove trends and
    bind it with soft_bottom trends to produce the final layer `hab_trend/hab_trend_gye2015.csv`.


# TSK #03-052015: TR function update.
![task:complete](https://img.shields.io/badge/task-complete-brightgreen.svg)

Overhaul of `TR()` function:

## Equation
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

  # get regions
  rgns = layers$data[[conf$config$layer_region_labels]] %>%
    select(rgn_id, rgn_label = label)

  # merge layers and calculate score
  d = layers$data[['tr_visitors_local']] %>%
    select(rgn_id, year, Ti=count) %>%
    arrange(rgn_id, year) %>%
    merge(
      layers$data[['tr_visitors_inter']] %>%
        select(rgn_id, year, Te=count) %>%
        arrange(rgn_id, year), all=T) %>%
    merge(
      layers$data[['tr_percent_local']] %>%
        select(rgn_id, Ri=percent) %>%
        mutate(Ri = Ri/100),
      by=c('rgn_id'), all=T) %>%
    merge(
      layers$data[['tr_percent_inter']] %>%
        select(rgn_id, Re=percent) %>%
        mutate(Re = Re/100),
      by=c('rgn_id'), all=T) %>%
    merge(
      layers$data[['tr_target_local']] %>%
        select(rgn_id, Pi=count),
        by=c('rgn_id'), all=T) %>%
    merge(
      layers$data[['tr_target_inter']] %>%
        select(rgn_id, Pe=count),
      by=c('rgn_id'), all=T) %>%
    merge(
      layers$data[['tr_sustainability']] %>%
        select(rgn_id, S_score=score),
      by=c('rgn_id'), all=T)  %>%
    mutate(
      TRi = Ti * Ri,
      TRe = Te * Re,
      I =  TRi / Pi,
      E = TRe / Pe,
      S     = (S_score - 1) / 5,
      Xtr   = 0.5 * (I + E) * S ) %>%
    merge(rgns, by='rgn_id') %>%
    select(rgn_id, rgn_label, year, I, E, S, Xtr, TRi, TRe)
```
## Trend
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
  d_t = d %>% filter(year %in% (year_max - 5) : year_max) %>% select(rgn_id, year, I, E) %>% group_by(rgn_id) %>%
    do( mod.local = lm(I ~ year, data = .),
        mod.inter = lm(E ~ year, data = .)) %>% do(data.frame(rgn_id=.$rgn_id, dimension='trends', score.local=coef(.$mod.local)[['year']], score.inter=coef(.$mod.inter)[['year']])) %>%
    mutate(dimension='trend', score=median(t(cbind(score.local, score.inter)))) %>%
    mutate(score=max(min(score, 1), -1)) %>% select(rgn_id, dimension, score)
  # mutate(score=max(min(score*5, 1), -1)) %>% select(rgn_id, dimension, score) <-- why?
  # Answer: the *5 is NOT needed here because this formula
  #       does NOT use [S = (S_score - 1) / 5] nor [Xtr]
```

## Status
```r
# get status (as last year's value given by year_max)
  d_s = d %>% filter(Xtr, year==year_max) %>% mutate(dimension='status', Xtr=100*Xtr) %>% select(rgn_id, dimension, score=Xtr)
  # > print(d_s) %%% Example:
  # rgn_id dimension     score
  # 1      1    status  99.99963
  # 2      2    status 100.00000
  # 3      6    status 100.00000
```

Nota: `goals.csv` was update to reflect new declaration: `TR = function(layers, year_max=NA)`. 

# TSK #02-052015: Roll-back TR layers names.
![task:complete](https://img.shields.io/badge/task-complete-brightgreen.svg)


In order to complete this task, the following steps were taken:
 1. Updated functions.R at lines <https://github.com/OHI-Science/gye/blob/draft/region2015/conf/functions.R#L848> to
 <https://github.com/OHI-Science/gye/blob/draft/region2015/conf/functions.R#L920> with the formula
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
 2. Renamed `tr_visitors_int` layer  to  `tr_visitors_local`

 3. Renamed `tr_percent_int` layer to `tr_percent_local`

 4. Renamed `tr_visitors_ext` layer to `tr_visitors_inter`

 5. Renamed `tr_percent_ext` layer to `tr_percent_inter`
 
 6. Function header was rolled-back to
 `TR = function(layers, year_max=NA, debug=FALSE, pct_ref=90)`
 
 7. File `conf/goals.csv` (<https://github.com/OHI-Science/gye/blob/draft/region2015/conf/goals.csv#L9>) was 
 rolled-back to: 
```r
TR(layers, year_max=2014)
```
 8. Add layers `tr_target_local` and `tr_target_inter` to layers
 
 9. `calculated_scores.R` and `compare_scores.R` were run and pusshed to repo.



# TSK #01-052015: Update TR score formula and associated layers.

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
 8. `calculated_scores.R` and `compare_scores.R` were run and pusshed to repo.

## Notes

 1. Sustainability layer used is the gl2014 and in `TR()` it is still used as
```r
S     = (S_score - 1) / 5,
```
 2. Trend is *NOT* calculated separatly: Internal tourism _vs._ External tourism trends, but
    is estimated using the `Xtr` score. **This differs from what discussed by conference call.**
 





# TSK5:Goal CP Coastal Protection
![task:complete](https://img.shields.io/badge/task-complete-brightgreen.svg)

Add `cp_habitat_extent_rank_gye2015` layer. Duplicate from `hab_extent`.

# TSK4:Goal CS Carbon Storage
![task:complete](https://img.shields.io/badge/task-complete-brightgreen.svg)

 (1) `hab_extent`: La capa de datos correcta es:
https://github.com/OHI-Science/gye/blob/draft/region2015/prep/4_CS/hab_extent_gye2015_TG.csv

 (2) `hab_health`: La capa de datos correcta es:
https://github.com/OHI-Science/gye/blob/draft/region2015/prep/4_CS/hab_health_gye2015_TG.csv

 (3) `hab_trend`: La caoa de datos correcta es:
https://github.com/OHI-Science/gye/blob/draft/region2015/pre-proc/hab_trend/hab_trend_gye2015.csv.

 (4) Por favor agregar un ReadMe para explicar muy brevemente como se calculó esta capa y/o documentar el código:
https://github.com/OHI-Science/gye/blob/draft/region2015/pre-proc/hab_trend/mklayer.R

 (5) `cs_habitat_extent`: Igual que `hab_extent`

# TSK3:SP Sence Place Goal

## LSP GOAL layers 1km and 3nm
![task:complete](https://img.shields.io/badge/task-complete-brightgreen.svg)
**folder:** `SP/`.

**Fuente:** `AMCPs 3MN Y 1 KM INCREMENTO.csv` Archivo de LSP están en 8.2_LSP en prep

**Description:**  En LSP hay un solo archivo, llamado AMCPs 3MN Y 1 KM INCREMENTO.csv (con espacios en blanco).
Ese archivo es lo único que se necesita, son dos capas que indican el incremento en km^2 de las áreas protegidas, una para las áreas 1 km tierra adentro (inland_1km) y 3millas náuticas costa afuera (offshore_3nm) y esos valores están mezclados en un solo archivo, entonces hay que separar los valores de uno y otro para crear las dos capas necesarias que se deben llamar:
`lsp_prot_area_inland1km_gye2015.csv` y  `lsp_prot_area_offshore3nm_gye2015.csv`

Ahora el archivo csv que está allí es un híbrido pues en lugar de , para separar los campos, tiene ; pero el punto decimal si es un punto y no una coma.


**Objetivo:**
Construir los layers
**lsp_prot_area_inland1km_gye2015.csv**  y  **lsp_prot_area_offshore3nm_gye2015.csv**
y actualizar layers.csv para usar información local.




## ICO GOAL: build lsp_prot_area_inland1km_gye2015.csv  and  lsp_prot_area_offshore3nm_gye2015.csv layers
![task:complete](https://img.shields.io/badge/task-complete-brightgreen.svg)
folder: `SP/`.

Fuente: `ico_spp_popn_trend_gye2015_TG.csv` Los dos archivos de ICO están en el directorio 8.1_ICO de prep

Objetivo: 
Arreglar el layer `ico_spp_popn_trend_gye2015.csv`, y copiar este y `ico_spp_extinction_status_gye2015.csv` para `layers/`
y actualizar layers.csv para usar información local.




# TSK2:Build hab_trend layer
![task:complete](https://img.shields.io/badge/task-complete-brightgreen.svg)

folder: `hab_trend/`.

Objetivo: 
Construir el layer
**hab_trend**
con información local. 
Fuente:  `tabla tendencia.xlsx@[Guaya|El Oro]`.

# TSK1:Make local layers ao_*

## Construcción de layers para target AO
![task:complete](https://img.shields.io/badge/subtask-complete-brightgreen.svg)

folder: `AO/`.

Objetivo: 
Construir los layers
**ao_need**, **ao_access** y **ao_sao**
con información local. 
Fuente: `Oportunidad de pesca artesanal (1).xlsx@Base`, 
`Oportunidad de pesca artesanal-completo.xlsx@Base`, `AO_need_ts.xlsx@Sheet1`.

## Score AO update
![subtask:complete](https://img.shields.io/badge/subtask-complete-brightgreen.svg)

Scores contrast table

|     |               |                 | GYE2015  | GL2014 |
|-----|---------------|-----------------|----------|--------|
|**goal** |   **dimension**   |     **region_id**   |    **score** |  **score** |
|AO   |   future      |   0   |    53.85  | 64.58 |
|AO   |   future      |   1   |    52.14  | 64.61 |
|AO   |   future      |   2   |    51.17  | 64.55 |
|AO   |   future      |   6   |    75.19  | 64.62 |
|AO   |   pressures   |    1  |     35.1  |  35.1 |
|AO   |   pressures   |    2  |     35.43 |  35.43 |
|AO   |   pressures   |    6  |     35.08 |  35.08 |
|AO   |   resilience  |    1  |     62.46 |  62.46 |
|AO   |   resilience  |    2  |     62.46 |  62.46 |
|AO   |   resilience  |    6  |     62.46 |  62.46 |
|AO   |   score       |   0   |    51.58  | 61.84 |
|AO   |   score       |   1   |    49.98  | 61.86 |
|AO   |   score       |   2   |    49.03  | 61.83 |
|AO   |   score       |   6   |    71.76  | 61.86 |
|AO   |   status      |   0   |    49.31  | 59.11 |
|AO   |   status      |   1   |    47.82  | 59.11 |
|AO   |   status      |   2   |    46.89  | 59.11 |
|AO   |   status      |   6   |    68.32  | 59.11 |
|AO   |   trend       |   1   |    0      | 0 |
|AO   |   trend       |   2   |    0      | 0 |
|AO   |   trend       |   6   |    0.02   | 0 |

## Layer ao_access (reemplaza)
![subtask:complete](https://img.shields.io/badge/subtask-complete-brightgreen.svg)

`ao_access_loc2009.csv` reemplaza `ao_access_gl2014.csv`.
Las variables presentes son `rgn_id` y `value` tal como en la versión global.

## Layer ao_need (reemplaza)
![subtask:complete](https://img.shields.io/badge/subtask-complete-brightgreen.svg)

Fuente: usa `Oportunidad de pesca artesanal-completo.xlsx@Base`, `AO_need_ts.xlsx@Sheet1` 
y dato de correo @lelys
`ao_need_gye2015.csv` reemplaza `ao_need_gl2014.csv`.
Las variables presentes son `rgn_id`, `year` y `value` tal como en la versión global.
Serie de tiempo de 2001 hasta 2010, con modelo de tendencia de 1990, 2001, 2010.

Ajuste de los modelos de tendencia para la variable ao_need:

![modelos de tendencia](https://github.com/OHI-Science/gye/blob/draft/region2015/pre-proc/AO/lm.png)

## Layer ao_sao (nuevo)
![subtask:complete](https://img.shields.io/badge/subtask-complete-brightgreen.svg)

`ao_sao_gye2015.csv` nueva capa.
Las variables presentes son `rgn_id` y `value`.

## Registro de estas nuevas capas en layers.csv (actualización)
![subtask:complete](https://img.shields.io/badge/subtask-complete-brightgreen.svg)
En el archivo `layers.csv`:
Se actualizaron 2 entredas: líneas 2 y 3 AO.
Se agregó 1 nueva entrada: línea 4 AO.

As per:

The first columns (targets, layer, name, description, fld_value, units, filename) contain information that will be updated by your team as you incorporate your own data and edits; all other columns are generated later by the Toolbox as it confirms data formatting and content.

Solo se modificaron las primeras 7 columnas.

## Actualizar `functions.R`
![subtask:complete](https://img.shields.io/badge/subtask-complete-brightgreen.svg)

Sustituir la constante `Sustainability=1.0` por el layer `Sustainability <- ao_sao`



## Push to `OHI-Science/gye`
![subtask:complete](https://img.shields.io/badge/subtask-complete-brightgreen.svg)
