---
title:  "TASK LIST @talassio"
author: "AM Sajo Castelli"
date: "27/04/2015"
output: html_document
---
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

**Description:** Ahora en LSP, verás que hay un solo archivo (y para colmo le pusieron en el nombre espacios en blanco, no respetaron la convención que habíamos acordado, de llamarlo con el nombre de la capa y las iniciales del consultor, pero bueno). Ese archivo es lo único que se necesita, son dos capas que indican el incremento en km^2 de las áreas protegidas, una para las áreas 1 km tierra adentro (inland_1km) y 3millas náuticas costa afuera (offshore_3nm) y esos valores están mezclados en un solo archivo, entonces hay que separar los valores de uno y otro para crear las dos capas necesarias que se deben llamar:
`lsp_prot_area_inland1km_gye2015.csv` y  `lsp_prot_area_offshore3nm_gye2015.csv`

Ahora el archivo csv que está allí es un híbrido pues en lugar de , para separar los campos, tiene ; pero el punto decimal si es un punto y no una coma! Hoy cuando lo estaba revisando, no me fijé que Mario habia usado el punto decimal y lo cambié y aparecían más valores de los que eran, pero ya restauramos el archivo original, que tiene esa particularidad. Te lo cuento para que nada más cambies los ;

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
