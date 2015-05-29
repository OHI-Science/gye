---
title:  "TASK LIST @talassio/@andres"
author: "AM Sajo Castelli"
date: "27/04/2015"
output: html_document
---
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
