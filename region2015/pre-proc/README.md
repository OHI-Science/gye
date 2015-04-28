---
title:  "TSK1:Make local layers ao_*"
author: "AM Sajo Castelli"
date: "27/04/2015"
output: html_document
---
# Construcción de layers para target AO
![task:incomplete](https://img.shields.io/badge/task-incomplete-red.svg)

folder: `AO/`.

Objetivo: 
Construir los layes
**ao_need**, **ao_access** y **ao_sao**
con información local. 
Fuente: `Oportunidad de pesca artesanal (1).xlsx@Base`, 
`Oportunidad de pesca artesanal-completo.xlsx@Base`, `AO_need_ts.xlsx@Sheet1`.

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
![subtask:incomplete](https://img.shields.io/badge/subtask-incomplete-red.svg)

Sustituir la constante `Sustainability=1.0` por el layer `Sustainability <- ao_sao`
