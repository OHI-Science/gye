---
title:  "Make local layers ao_*"
author: "AM Sajo Castelli"
date: "27/04/2015"
output: html_document
---
# 27/04/2015 Construcción de layers (folder `AO/`)
![task:incomplete](https://img.shields.io/badge/task-incomplete-red.svg)

Se construyen los layes
**ao_need**, **ao_access** y **ao_sao**
con información local. 
Fuente: `Oportunidad de pesca artesanal (1).xlsx@Base`

## Layer ao_access (reemplaza)
![subtask:complete](https://img.shields.io/badge/subtask-complete-brightgreen.svg)

`ao_access_loc2009.csv` reemplaza `ao_access_gl2014.csv`.
Las variables presentes son `rgn_id` y `value` tal como en la versión global.

## Layer ao_need (reemplaza)
![status:pending](https://img.shields.io/badge/status-pending-blue.svg)
![subtask:incomplete](https://img.shields.io/badge/subtask-incomplete-red.svg)

**ES UNA SERIE DE TIEMPO, DONDE SACAR LOS DATOS**
`ao_need_loc2010.csv` reemplaza `ao_need_gl2014.csv`.
Las variables presentes son `rgn_id`, `year` y `value` tal como en la versión global.

## Layer ao_sao (nuevo)
![status:pending](https://img.shields.io/badge/status-pending-blue.svg)
![subtask:incomplete](https://img.shields.io/badge/subtask-incomplete-red.svg)

**PREGUNTAR SI ES UNA SERIE DE TIEMPO, DE SER ASI, DONDE SACAR LOS DATOS**
`ao_sao_loc2010.csv` nueva capa.
Las variables presentes son `rgn_id`, `year` y `value`. `year` solo contiene 2010 y esto
hace que la tendencia sea `NA` y en consecuencia algunos scores salen `NA`.

## Registro de estas nuevas capas en layers.csv (actualización)
![subtask:complete](https://img.shields.io/badge/subtask-complete-brightgreen.svg)

En el archivo `layers.csv`:
Se actualizaron 2 entredas: líneas 2 y 3 AO.
Se agregó 1 nueva entrada: línea 4 AO.

As per:

The first columns (targets, layer, name, description, fld_value, units, filename) contain information that will be updated by your team as you incorporate your own data and edits; all other columns are generated later by the Toolbox as it confirms data formatting and content.

Solo se modificaron las primeras 7 columnas.

## Actualizar `functions.R`
![subtask:incomplete](https://img.shields.io/badge/subtask-incomplete-red.svg)

Sustituir la constante `Sustainability=1.0` por el layer `Sustainability <- ao_sao`
