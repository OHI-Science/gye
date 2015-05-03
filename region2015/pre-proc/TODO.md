---
title: "Fix RGN layers"
author: "AM Sajo Castelli"
date: "30/04/2015"
output: html_document
---
#TSK1: Actualizar

**actualizar** `rgn_area_inland1km` 

**actualizar** `rgn_area_offshore3nm`

Correo: las millas náuticas por región son

Area km2 | Hectares | Region 
---------|---|---|
771.78 | 77178.17 | El Oro 
2187.63 | 218763.38 | Guayas 
361.11 | 36110.71 | Santa Elena

El área en del km costa dentro corresponde a

Area km2|  Hectares  |  Region
--------|------------|----------------
119.25  |  11925.12  |  Islas del Golfo 
103.98  |  10398.15  |  Jambeli         
135.66  |  13565.54  |  Puna            
236.39  |  23639.02  |  Guayas          
65.67   |  6567.33   |  Santa Elena     
74.67   |  7467.27   |  El Oro          

#TSK2: Reproyectar
**reproyectar sobre datos globales** `lsp_prot_area_offshore3nm` 

**reproyectar sobre datos globales** `lsp_prot_area_inland1km`
