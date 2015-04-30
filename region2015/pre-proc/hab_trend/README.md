---
title:  "hab_trend layer"
author: "AM Sajo Castelli"
date: "30/04/2015"
output: html_document
---
# hab_trend layer

The layer is essentially build with `mklayer.R`. 
Steps
`for rgn_id in c('El Oro', 'Guayas') do`

 (1) load `tabla tendencia.xlsx`@`rgn_id` sheet
 (2) fit trend model: `Total ~ years`, this is 
 
 $Total = \beta_0 + \beta_1 years$
 
 (3) trunkate $\beta_1$ in [-1, +1] and store in

 | rgn_id | habitat  | trend              |
 |--------|----------|--------------------|
 | 1      | mangrove | trunkate($\beta_1$)|

`end`


Output of the cycle is

rgn_id | habitat | trend
-------|---------|-----
1 | mangrove | -1
2 | mangrove | -1
6 | mangrove | `NA`*

*: `NA` is given by missing sheet name `tabla tendencia.xlsx`. This is the cause of
`NA` for goals regarding HAB, CP, CS for region 6. **It is advised to procure the data**.

The following two graphs show the tendencies for El Oro and Guayas.

![tendencies](https://github.com/OHI-Science/gye/blob/draft/region2015/pre-proc/hab_trend/lms12.png)

