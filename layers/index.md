---
layout: article
title: "Layers"
excerpt: "OHI layers for Golfo de Guayaquil"
share: false
ads: false
branch_scenario: published/region2015
toc: true
---

The following data layers are used in Ocean Health Index calculations for goal status, trend, pressures, and resilience. Values for {{ site.study_area }} were extracted from the global assessment and saved for each region to serve as a template as you gather higher-resolution data and indicators. Note that many values do not have a range because they were equally extracted from the global data layer.


## alien_species

Alien species

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | alien_species_gye2015.csv                                                   |
| value units       | resilience score                                                      |
| value range       | 0.68 to 0.68                               |
| global extraction | equal: global resilience data were applied equally to all regions. |

<p>The number and type of invasive and harmful invasive species in each marine ecoregion (Molnar et al. 2008). 
Updated with local information. @andres. 29/06/2015. Using the five criteria suggested by Halpern et al.  methodology with equal weight each.
Data sources:</p>

<ul>
<li>Molnar, J.L., Gamboa, R.L., Revenga C., Spalding, M. (2008). <strong>Assessing the global threat of invasive species to marine biodiversity</strong>. <em>Frontiers in Ecology and the Environment</em> 6(485). <a href="http://dx.doi.org/10.1890/070064">doi:10.1890/070064</a></li>
</ul>



## ao_access

Fisheries management effectiveness and opportunity

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | ao_access_gye2015.csv                                                   |
| value units       | value                                                      |
| value range       | 0.8912685 to 1                               |
| global extraction | equal: global management effectiveness scores were applied equally to all regions. |

<p>Data from Mora et al. (2009) in PLOS Biology. Estimates for provinces use figure S1 from Mora&#39;s work. To rescale, the highest score was used, in this case  El Oro. The opportunity for artisanal and recreational fishing based on local data: 27/04/2009, @andres Oportunidad de pesca artesanal (1).xlsx</p>



## ao_need

Purchasing power parity as a proxy for subsistence fishing need, by region

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | ao_need_gye2015.csv                                                   |
| value units       | value                                                      |
| value range       | 0.02439024 to 0.8471178                               |
| global extraction | equal: global purchasing power parity information was applied equally to all regions. |

<p>Updated with data from INEC. Census 1990, 2001 y 2010. @andres</p>

<p>Data files: Oportunidad de pesca artesanal (1).xlsx, Oportunidad de pesca artesanal-completo.xlsx y AO_need_ts.xlsx</p>



## ao_sao

Sustainability by region

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | ao_sao_gye2015.csv                                                   |
| value units       | value                                                      |
| value range       | 0.4752502 to 0.6902315                               |
| global extraction | equal: global purchasing power parity information was applied equally to all regions. |

<p>The opportunity for artisanal and recreational fishing based on local data @andres</p>

<p>Data files: Oportunidad de pesca artesanal (1).xlsx</p>



## cc_acid

Ocean acidification

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | cc_acid_gye2015.csv                                                   |
| value units       | pressure score                                                      |
| value range       | 0.9616443 to 1                               |
| global extraction | raster | equal:  |

<p>Modeled distribution of the aragonite saturation state (AAS) of the ocean in pre-industrial (~1870) and modern times (2000-2009) (Halpern et al. 2008).</p>

<p>Data sources:</p>

<ul>
<li>Updated with local information. @andres 1/6/2015. Using the maps in Halpern et al. (2008): A Global Map of Human Impact on Marine Ecosystems the  data for the three provinces in the Gulf of Guayaquil were made precise
, B.S., Walbridge S., Selkoe, K.A., Kappel, C.V., Micheli, F., D&#39;Agrosa, C., Bruno, J.F., Casey, K.S., Ebert, C., Fox, H.E., Fujita, R., Heinemann, D., Lenihan, H.S., Madin, E.M.P., Perry, M.T., Selig, E.R., Spalding, M., Steneck, R., Watson, R. (2008) <strong>A global map of human impact on marine ecosystems</strong>. <em>Science</em>, 3199(5865): 948-952. <a href="http://dx.doi.org/10.1126/science.1149345">doi:10.1126/science.1149345</a></li>
</ul>



## cc_slr

Sea level rise

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | cc_slr_gye2015.csv                                                   |
| value units       | pressure score                                                      |
| value range       | 0 to 0                               |
| global extraction | raster | equal:  |

<p>Modeled sea level rise (Nicholls and Cazenave 2010).</p>

<p>Data sources:</p>

<ul>
<li>Data from NOAA @andres 1/6/2015</li>
<li>Nicholls R.J. and Cazenave A. (2010). <strong>Sea-level rise and its impact on coastal zones</strong>. <em>Science</em> 328: 1517-1520. <a href="http://dx.doi.org/10.1126/science.1185782">doi:10.1126/science.1185782</a>. </li>
<li><a href="http://www.aviso.oceanobs.com/en/news/ocean-indicators/mean-sea-level/processing-corrections.html">AVISO Satellite Altimetry Data</a></li>
</ul>



## cc_sst

Sea surface temperature (SST) anomalies

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | cc_sst_gl2014.csv                                                   |
| value units       | pressure score                                                      |
| value range       | 0.05509149 to 0.05509149                               |
| global extraction | raster | equal:  |

<p>Modeled sea surface temperature (Halpern et al. 2008) based on temperature anomolies provided by GHRSST and the US National Oceanographic Data Center.</p>

<p>Data sources:</p>

<ul>
<li>Halpern, B.S., Walbridge S., Selkoe, K.A., Kappel, C.V., Micheli, F., D&#39;Agrosa, C., Bruno, J.F., Casey, K.S., Ebert, C., Fox, H.E., Fujita, R., Heinemann, D., Lenihan, H.S., Madin, E.M.P., Perry, M.T., Selig, E.R., Spalding, M., Steneck, R., Watson, R. (2008) <strong>A global map of human impact on marine ecosystems</strong>. <em>Science</em>, 3199(5865): 948-952. <a href="http://dx.doi.org/10.1126/science.1149345">doi:10.1126/science.1149345</a></li>
<li><a href="http://pathfinder.nodc.noaa.gov">AVHRR Pathfinder Version 5.0 SST data</a> </li>
<li>Casey, K.S., Brandon, T.B., Cornillon, P., and Evans, R. (2010). <strong>The Past, Present and Future of the AVHRR Pathfinder SST Program</strong>, <em>Oceanography from Space: Revisited</em>, eds. V. Barale, J.F.R. Gower, and L. Alberotanza, Springer. <a href="http://dx.doi.org/10.1007/978-90-481-8681-5_16">doi:10.1007/978-90-481-8681-5_16</a> </li>
</ul>



## cc_uv

UV radiation

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | cc_uv_gye2015.csv                                                   |
| value units       | pressure score                                                      |
| value range       | 0.8908412 to 0.9223017                               |
| global extraction | raster | equal:  |

<p>Modeled UV radiation (Halpern et al. 2008) based on Erythemal UV Irradiance data provided by GES DISC.</p>

<p>Data sources:</p>

<ul>
<li>Updated with local information. @andres 1/6/2015 Using the map &ldquo;Climate Change (UV)&rdquo; in  Halpern et al. (2008): A Global Map of Human Impact on Marine Ecosystems data for the  provinces in the Gulf of Guayaquil were made precise.</li>
<li>Halpern, B.S., Walbridge S., Selkoe, K.A., Kappel, C.V., Micheli, F., D&#39;Agrosa, C., Bruno, J.F., Casey, K.S., Ebert, C., Fox, H.E., Fujita, R., Heinemann, D., Lenihan, H.S., Madin, E.M.P., Perry, M.T., Selig, E.R., Spalding, M., Steneck, R., Watson, R. (2008) <strong>A global map of human impact on marine ecosystems</strong>. <em>Science</em>, 3199(5865): 948-952. <a href="http://dx.doi.org/10.1126/science.1149345">doi:10.1126/science.1149345</a></li>
<li><a href="http://disc.sci.gsfc.nasa.gov/data-holdings/PIP/erythemal_uv_irradiance.shtml">Goddard Earth Sciences Data and Information Services Center (GES DISC)</a></li>
</ul>



## cites

Resilience from commitment to CITES

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | cites_gl2014.csv                                                   |
| value units       | resilience score                                                      |
| value range       | 1 to 1                               |
| global extraction | equal: global resilience data were applied equally to all regions. |

<p>Convention on International Trade in Endangered Species of Wild Fauna and Flora (CITES) signatories.
It was verified that Ecuador signed this convention and has a score of 1 for the country.
Data sources:</p>

<ul>
<li><a href="http://www.cites.org/eng/disc/parties/chronolo.php">CITES List of Contracting Parties</a></li>
</ul>



## cp_habitat_extent_rank

Habitat extent * rank, per Coastal Protection habitats

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | cp_habitat_extent_rank_gye2015.csv                                                   |
| value units       | rank                                                      |
| value range       | 1.8269 to 6269.924                               |
| global extraction | equal: global pressures data were applied equally to all regions. |

<p>Habitat extent * habitat rank for Coastal Protection habitats: coral, mangrove offshore 1km, mangrove inland 1km, saltmarsh, seaice_shoreline and seagrass. Updated with local data. Duplicate from hab_extent_gye2015.csv layer. @andres. For each habitat considered in a goal, the habitat extension is multiplied by a rank that orders the habitats; since there is only one habitat in this goal the rank is 1 and the values are the same as hab_extent for mangrove.</p>



## cs_habitat_extent

Habitat extent * rank, per Carbon Storage habitats

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | cs_habitat_extent_gye2015.csv                                                   |
| value units       | km^2                                                      |
| value range       | 1.8269 to 6269.924                               |
| global extraction | area_offshore_3nm: global habitat extent was applied to each region after weighting by each region's offshore area to 3nm.  |

<p>Habitat extent * habitat rank for Carbon Storage habitats: mangrove, saltmarsh and seagrass. @andres: updated with local data. Src: pre-proc/CS/ For each habitat in this goal, the habitat extension is multiplied by a rank which orders the habitats; since there is only one habitat the rank is 1 and the values are tha same as in hab_extent for the total mangrove.</p>



## cw_coastalpopn_trend

Coastal human population as a proxy for trend in trash

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | cw_coastalpopn_trend_gye2015.csv                                                   |
| value units       | trend score                                                      |
| value range       | 1 to 1                               |
| global extraction | equal: global trends were applied equally to all regions. |

<p>Coastal population, defined as the total population inland of 25 miles.
@andres, 31/05/2015. Updated with local information, trend is adjusted via sd(x)/sd(y) Used time series of the coastal population from the source: Instituto Nacional de Estadisticas y Censos (INEC). Population trend computed using Halpern et al. global methodoly, implemented in R by the Information Management group of this project.</p>



## cw_fertilizer_trend

Fertilizer consumption as a proxy for trend in nutrient pollution

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | cw_fertilizer_trend_gye2015.csv                                                   |
| value units       | trend score                                                      |
| value range       | -0.01984815 to 1                               |
| global extraction | equal: global trends were applied equally to all regions. |

<p>Statistics on fertilizer consumption from the Food and Agricultural Organization (FAO). 
@andres, 31/05/2015. Updated with local information, trend is adjusted via sd(x)/sd(y). Time series of fertilizers used as indicator of nutrient contamination. Source:  FAO and INEC. Used method sugested by Halpern et al.  implemented in R and ejecuted over the data to compute the trend.
Data sources: Data from INEC</p>

<ul>
<li><a href="http://faostat3.fao.org/faostat-gateway/go/to/browse/R/*/E">FAO statistical database FAOSTAT</a>.</li>
</ul>



## cw_pathogen_trend

Trends in access to improved sanitation as a proxy for pathogen pollution trend

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | cw_pathogen_trend_gye2015.csv                                                   |
| value units       | trend score                                                      |
| value range       | -1 to -1                               |
| global extraction | equal: global trends were applied equally to all regions. |

<p>Trends in percent of population with access to improved sanitation facilities.
@andres, 31/05/2015. Updated with local information, trend is adjusted via sd(x)/sd(y)
Time series of  access to sanitary facilities as indicator of pathogens contamination from  INEC.  Used method suggested by Halpern et al.  implemented in R and ejecuted over the data to compute the trend.</p>



## cw_pesticide_trend

Pesticide consumption as a proxy for trend in chemical pollution

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | cw_pesticide_trend_gye2015.csv                                                   |
| value units       | trend score                                                      |
| value range       | -0.1609471 to 0.5705161                               |
| global extraction | equal: global trends were applied equally to all regions. |

<p>Statistics on pesticide consumption from the Food and Agricultural Organization (FAO). @andres 31/05/2015. 
Updated with local information: trend is adjusted via sd(x)/sd(y) Time series of  pesticides consumption  as indicator of chemical contamination. Used method suggested by Halpern et al.  implemented in R and ejecuted over the data to compute the trend. Data sources: </p>

<ul>
<li>INEC </li>
<li><a href="http://faostat3.fao.org/faostat-gateway/go/to/browse/R/*/E">FAO statistical database FAOSTAT</a>.</li>
</ul>



## fis_b_bmsy

B/Bmsy estimates obtained using the catch-MSY method

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | fis_b_bmsy_gye2015.csv                                                   |
| value units       | B / B_msy                                                      |
| value range       | 0.01563135 to 1.992167                               |
| global extraction | equal: global b_bmsy information was applied equally to all regions. |

<p>The ratio of population abundance compared to the abundance required to deliver maximum sustainable yield, obtained from the catch-MSY model (Martell &amp; Froese, 2013).
Updated with local data. @andres. 18/06/2015.
Data from INP and execution of Martin y Froese model implemented by researchers from UC Santa Barbara. Data sources:</p>

<ul>
<li>INP</li>
<li>Martell, S., &amp; Froese, R. (2013). <strong>A simple method for estimating MSY from catch and resilience</strong>. <em>Fish and Fisheries</em> 14(4): 504-514. <a href="https://dx/doi/org/10.1111/j.1467-2979.2012.00485.x">doi:10.1111/j.1467-2979.2012.00485.x</a></li>
</ul>



## fis_meancatch

Catch data for each Taxon/FAO/SAUP region averaged across years (1980-2011)

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | fis_meancatch_gye2015.csv                                                   |
| value units       | metric tons                                                      |
| value range       | 0 to 3185440                               |
| global extraction | equal: global mean catch information was applied equally to all regions. |

<p>Mean catch-per-taxon values within each FAO major fishing area.
Updated with local data from INP. @andres. 18/06/2015. Species existent in the Golfo de Guayaquil.
Data sources:</p>

<ul>
<li>INP</li>
<li><a href="http://www.fao.org/fishery/area/search/en">FAO Major Fishing Areas</a></li>
</ul>



## fis_proparea_saup2rgn

area of each saup/total OHI reporting region

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | fis_proparea_saup2rgn_gye2015.csv                                                   |
| value units       | proportion of area                                                      |
| value range       | 0.02167989 to 0.1261728                               |
| global extraction | area_offshore: global proportional area were applied to each region after weighting by each region's offshore area. |

<p>Lookup table of Sea Around Us Project regions to Ocean Health Index region identifiers.
Updated with local data. @andres. 18/06/2015. Data for country codes available in <a href="http://www.codeofcountry.com/country-codes">http://www.codeofcountry.com/country-codes</a>
Data sources:</p>

<ul>
<li><a href="http://www.seaaroundus.org">Sea Around Us Project (SAUP)</a></li>
</ul>



## fishing_v1

CBD survey: coastal fishing v1

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | fishing_v1_gye2015.csv                                                   |
| value units       | resilience score                                                      |
| value range       | 0.62 to 0.62                               |
| global extraction | equal: global resilience data were applied equally to all regions. |

<p>Survey responses by country to the Convention on Biological Diversity (CBD) Third National Report (2005) 
Updated with local information. @andres. 29/06/2015. Using the six criteria suggested by Halpern et al.  methodology with equal weight each.
Data sources:</p>

<ul>
<li><a href="http://www.cbd.int/reports/search/default.shtml">Convention on Biological Diversity (CBD)</a></li>
</ul>



## fishing_v1_eez

CBD survey: ocean fishing v1

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | fishing_v1_eez_gye2015.csv                                                   |
| value units       | resilience score                                                      |
| value range       | 0.17 to 0.17                               |
| global extraction | equal: global resilience data were applied equally to all regions. |

<p>Survey responses by country to the Convention on Biological Diversity (CBD) Third National Report (2005) 
Updated with local information. @andres. 29/06/2015. Using the six criteria suggested by Halpern et al.  methodology with equal weight each.
Data sources:</p>

<ul>
<li><a href="http://www.cbd.int/reports/search/default.shtml">Convention on Biological Diversity (CBD)</a></li>
</ul>



## fishing_v2_eez

CBD survey: ocean fishing v2

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | fishing_v2_eez_gye2015.csv                                                   |
| value units       | resilience score                                                      |
| value range       | 0.59 to 0.59                               |
| global extraction | equal: global resilience data were applied equally to all regions. |

<p>Survey responses by country to the Convention on Biological Diversity (CBD) Third National Report (2005) 
Updated with local information. @andres. 29/06/2015. Using the six criteria suggested by Halpern et al.  methodology with equal weight each.
Data sources:</p>

<ul>
<li><a href="http://www.cbd.int/reports/search/default.shtml">Convention on Biological Diversity (CBD)</a></li>
</ul>



## fishing_v3

CBD survey: coastal fishing v3

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | fishing_v3_gye2015.csv                                                   |
| value units       | resilience score                                                      |
| value range       | 0.65 to 0.65                               |
| global extraction | equal: global resilience data were applied equally to all regions. |

<p>Survey responses by country to the Convention on Biological Diversity (CBD) Third National Report (2005) 
Updated with local information. @andres. 29/06/2015. Using the six criteria suggested by Halpern et al.  methodology with equal weight each.
Data sources:</p>

<ul>
<li><a href="http://www.cbd.int/reports/search/default.shtml">Convention on Biological Diversity (CBD)</a></li>
</ul>



## fishing_v3_eez

CBD survey: ocean fishing v3

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | fishing_v3_eez_gye2015.csv                                                   |
| value units       | resilience score                                                      |
| value range       | 0.17 to 0.17                               |
| global extraction | equal: global resilience data were applied equally to all regions. |

<p>Survey responses by country to the Convention on Biological Diversity (CBD) Third National Report (2005) 
Updated with local information. @andres. 29/06/2015. Using the six criteria suggested by Halpern et al.  methodology with equal weight each.
Data sources:</p>

<ul>
<li><a href="http://www.cbd.int/reports/search/default.shtml">Convention on Biological Diversity (CBD)</a></li>
</ul>



## fp_art_hb

High bycatch caused by artisanal fishing 

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | fp_art_hb_gye2015.csv                                                   |
| value units       | pressure score                                                      |
| value range       | 0 to 0                               |
| global extraction | equal: global pressures data were applied equally to all regions. |

<p>The presence of destructive artisanal blast and poison (cyanide) fishing (Reefs at Risk Revisited).
Updated with local information. @andres, 29/06/2015 Using the maps in the same source used in the country study, the data for the Golfo de Guayaquil was obtained. The source was:  Halpern et al. (2008): A Global Map of Human Impact on Marine Ecosystems
Data sources:</p>

<ul>
<li><a href="http://www.wri.org/publication/reefs-at-risk-revisited">Reefs at Risk Revisited</a> </li>
</ul>



## fp_art_lb

Low bycatch caused by artisanal fishing 

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | fp_art_lb_gye2015.csv                                                   |
| value units       | pressure score                                                      |
| value range       | 0.09 to 0.16                               |
| global extraction | equal: global pressures data were applied equally to all regions. |

<p>Modeled low bycatch artisanal fishing using non-destructive practices (Halpern et al. 2008) based on FAO fisheries statistics.</p>

<p>Data sources:</p>

<ul>
<li>Updated with local information. @andres 1/6/2015 Same global source: Sea Around Us Project  (<a href="http://www.seaaroundus.org/">http://www.seaaroundus.org/</a>) was used to determine the precise data for Golfo de Guayaquil</li>
<li>Halpern, B.S., Walbridge S., Selkoe, K.A., Kappel, C.V., Micheli, F., D&#39;Agrosa, C., Bruno, J.F., Casey, K.S., Ebert, C., Fox, H.E., Fujita, R., Heinemann, D., Lenihan, H.S., Madin, E.M.P., Perry, M.T., Selig, E.R., Spalding, M., Steneck, R., Watson, R. (2008) <strong>A global map of human impact on marine ecosystems</strong>. <em>Science</em>, 3199(5865): 948-952. <a href="http://dx.doi.org/10.1126/science.1149345">doi:10.1126/science.1149345</a></li>
<li><a href="http://www.fao.org/fishery/statistics/global-capture-production/en">FAO fisheries statistics</a></li>
</ul>



## fp_com_hb

High bycatch caused by commercial fishing 

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | fp_com_hb_gl2014.csv                                                   |
| value units       | pressure score                                                      |
| value range       | 0.02438849 to 0.02438849                               |
| global extraction | equal: global pressures data were applied equally to all regions. |

<p>Modeled destructive commercial fishing practices by 5 different gear types (Halpern et al. 2008).</p>

<p>Data sources:</p>

<ul>
<li>Halpern, B.S., Walbridge S., Selkoe, K.A., Kappel, C.V., Micheli, F., D&#39;Agrosa, C., Bruno, J.F., Casey, K.S., Ebert, C., Fox, H.E., Fujita, R., Heinemann, D., Lenihan, H.S., Madin, E.M.P., Perry, M.T., Selig, E.R., Spalding, M., Steneck, R., Watson, R. (2008) <strong>A global map of human impact on marine ecosystems</strong>. <em>Science</em>, 3199(5865): 948-952. <a href="http://dx.doi.org/10.1126/science.1149345">doi:10.1126/science.1149345</a></li>
</ul>



## fp_com_lb

Low bycatch caused by commercial fishing 

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | fp_com_lb_gl2014.csv                                                   |
| value units       | pressure score                                                      |
| value range       | 0.08939474 to 0.08939474                               |
| global extraction | equal: global pressures data were applied equally to all regions. |

<p>Modeled least destructive commercial fishing practices by 2 different gear types (Halpern et al. 2008).</p>

<p>Data sources:</p>

<ul>
<li>Halpern, B.S., Walbridge S., Selkoe, K.A., Kappel, C.V., Micheli, F., D&#39;Agrosa, C., Bruno, J.F., Casey, K.S., Ebert, C., Fox, H.E., Fujita, R., Heinemann, D., Lenihan, H.S., Madin, E.M.P., Perry, M.T., Selig, E.R., Spalding, M., Steneck, R., Watson, R. (2008) <strong>A global map of human impact on marine ecosystems</strong>. <em>Science</em>, 3199(5865): 948-952. <a href="http://dx.doi.org/10.1126/science.1149345">doi:10.1126/science.1149345</a></li>
</ul>



## fp_targetharvest

Targeted harvest of cetaceans and sea turtles

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | fp_targetharvest_gl2014.csv                                                   |
| value units       | pressure score                                                      |
| value range       | 0 to 0                               |
| global extraction | equal: global pressures data were applied equally to all regions. |

<p>Targeted harvest of cetaceans and marine turtles, from FAO fisheries data.</p>

<p>Data sources:</p>

<ul>
<li><a href="http://www.fao.org/fishery/statistics/global-capture-production/en">FAO fisheries statistics</a></li>
</ul>



## fp_wildcaught_weight

Fisheries weighting factor

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | fp_wildcaught_weight_gye2015.csv                                                   |
| value units       | value                                                      |
| value range       | 0.47 to 0.49                               |
| global extraction | equal: global weights were applied equally to all regions.  |

<p>Proportion of wild caught fisheries yield to mariculture yield, based on FAO fisheries statistics.
Updated with local data from INP. @andres. 18/06/2015.
Data sources:</p>

<ul>
<li>INP</li>
<li><a href="http://www.fao.org/fishery/statistics/global-capture-production/en">FAO fisheries statistics</a></li>
</ul>



## hab_extent

Habitat extent

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | hab_extent_gye2015.csv                                                   |
| value units       | km^2                                                      |
| value range       | 1.8269 to 6269.924                               |
| global extraction | raster | area_offshore:  |

<p>Modeled combined habitat extent. @andres: updated with local data. Files: pre-proc/CS/ Data Sources: Instituto Geografico Militar (IGM), Cartografia Basica.
Instituto Oceanografico de la Armada (INOCAR), Cartas Nauticas, Linea de Batimetria IOA.
Secretaria Tecnica del Mar, area de estudio.
INEC, Division Politica.
CLIRSEN - Centro de Levantamientos Integrados de Recursos Naturales, Ministerio del Medio Ambiente,
Instituto Nazca de Investigaciones Marinas</p>



## hab_health

Habitat health

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | hab_health_gye2015.csv                                                   |
| value units       | value                                                      |
| value range       | 0.6706 to 0.95                               |
| global extraction | equal: global habitat health was applied equally to all regions.  |

<p>Data Sources: Instituto Geografico Militar (IGM), Cartografia Basica.
Instituto Oceanografico de la Armada (INOCAR), Cartas Nauticas, Linea de Batimetria IOA.
Secretaria Tecnica del Mar, INEC, Division Politica.
CLIRSEN.</p>



## hab_presence

Habitat presence

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | hab_presence_gye2015.csv                                                   |
| value units       | boolean                                                      |
| value range       | 0 to 1                               |
| global extraction | equal: global pressures data were applied equally to all regions. |

<p>Modeled combined habitat presence. Using Local information. @andres 1/6/2015 with data from Ministerio del Medio Ambiente e Instituto Nazca de Investigaciones Marinas</p>



## hab_trend

Habitat health trend

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | hab_trend_gye2015.csv                                                   |
| value units       | trend score                                                      |
| value range       | -1 to -1                               |
| global extraction | equal: global trends were applied equally to all regions. |

<p>Modeled combined habitat health trend. Update local data @andres source: hab-trend/tabla tendencias.xlsx + soft_bottom, trend is adjusted via sd(x)/sd(y)</p>



## habitat

CBD survey: habitat

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | habitat_gye2015.csv                                                   |
| value units       | resilience score                                                      |
| value range       | 0.875 to 0.875                               |
| global extraction | equal: global resilience data were applied equally to all regions. |

<p>Survey responses by country to the Convention on Biological Diversity (CBD) Third National Report (2005) 
Updated with local information. @andres. 29/06/2015. Using the four criteria suggested by Halpern et al.  methodology with equal weight each.
Data sources:</p>

<ul>
<li><a href="http://www.cbd.int/reports/search/default.shtml">Convention on Biological Diversity (CBD)</a></li>
</ul>



## habitat_combo

CBD survey: coastal habitat

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | habitat_combo_gye2015.csv                                                   |
| value units       | resilience score                                                      |
| value range       | 0.76 to 0.76                               |
| global extraction | equal: global resilience data were applied equally to all regions. |

<p>Survey responses by country to the Convention on Biological Diversity (CBD) Third National Report (2005) 
Updated with local information. @andres. 29/06/2015. Using the five criteria suggested by Halpern et al.  methodology with equal weight each.
Data sources:</p>

<ul>
<li><a href="http://www.cbd.int/reports/search/default.shtml">Convention on Biological Diversity (CBD)</a></li>
</ul>



## habitat_combo_eez

CBD survey: ocean habitat

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | habitat_combo_eez_gye2015.csv                                                   |
| value units       | resilience score                                                      |
| value range       | 0.2 to 0.2                               |
| global extraction | equal: global resilience data were applied equally to all regions. |

<p>Survey responses by country to the Convention on Biological Diversity (CBD) Third National Report (2005) 
Updated with local information. @andres. 29/06/2015. Using the four criteria suggested by Halpern et al.  methodology with equal weight each.
Data sources:</p>

<ul>
<li><a href="http://www.cbd.int/reports/search/default.shtml">Convention on Biological Diversity (CBD)</a></li>
</ul>



## hd_intertidal

Coastal population density as a proxy for intertidal habitat destruction

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | hd_intertidal_gye2015.csv                                                   |
| value units       | pressure score                                                      |
| value range       | 0.04946628 to 0.1062223                               |
| global extraction | population_inland25km: global intertidal pressures were applied to each region after weighting by each region's coastal population. |

<p>Coastal population, defined as the total population inland of 10 miles, extracted from Gridded Population of the World (GPW) Population Density Grid Future Estimates.</p>

<p>Data sources:</p>

<ul>
<li>Updated with local information. @andres 1/6/2015 INEC <a href="http://www.ecuadorencifras.gob.ec/">http://www.ecuadorencifras.gob.ec/</a>  La Libertad was included, the justification for this is in the README file for this data layer</li>
<li>Center for International Earth Science Information Network (CIESIN)/Columbia University </li>
<li>CIESIN &amp; CIAT (Center for International Earth Science Information Network (CIESIN)/Columbia University, &amp; Centro Internacional de Agricultura Tropical (CIAT)) (2005). <strong>Gridded Population of the World, Version 3 (GPWv3): Population Density Grid, Future Estimates</strong>. Palisades, NY. <a href="http://sedac.ciesin.columbia.edu/data/set/gpw-v3-population-density-future-estimates">NASA Socioeconomic Data and Applications Center (SEDAC)</a></li>
</ul>



## hd_subtidal_hb

High bycatch artisanal fishing practices as a proxy for subtidal hard bottom habitat destruction

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | hd_subtidal_hb_gye2015.csv                                                   |
| value units       | pressure score                                                      |
| value range       | 0 to 0                               |
| global extraction | equal: global pressures data were applied equally to all regions. |

<p>The presence of destructive artisanal blast and poison (cyanide) fishing (Reefs at Risk Revisited).
Updated with local information. @andres 29/06/2015 The Gulf data was obtained from a global data source: World Re\
sources Institute (<a href="http://www.wri.org/publication/reefs-risk-revisited">http://www.wri.org/publication/reefs-risk-revisited</a>) same used in the study from ohi-science.org for Ecuador.</p>

<p>Data sources:</p>

<ul>
<li><a href="http://www.wri.org/publication/reefs-at-risk-revisited">Reefs at Risk Revisited</a> </li>
</ul>



## hd_subtidal_sb

High bycatch commercial fishing practices as a proxy for subtidal soft bottom habitat destruction

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | hd_subtidal_sb_gye2015.csv                                                   |
| value units       | pressure score                                                      |
| value range       | 0.6695538 to 0.7637526                               |
| global extraction | equal: global pressures data were applied equally to all regions. |

<p>Spatially distributed commercial catch data by fishing gear type, developed by Sea Around Us Project.</p>

<p>Data sources:</p>

<ul>
<li> Updated with local information. @andres 1/6/2015 Data from Instituto Nacional de Pesca (INP)</li>
<li><a href="http://www.seaaroundus.org/">Sea Around Us Project (SAUP)</a></li>
</ul>



## ico_spp_extinction_status

IUCN extinction risk category for iconic species

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | ico_spp_extinction_status_gye2015.csv                                                   |
| value units       | category                                                      |
| value range       | NA to NA                               |
| global extraction | equal: global status was applied equally to all regions.  |

<p>Updated with local layer. @andres 28/04/2015 Data from IUCN with iconic species of the Golfo de Guayaquil. Three (3) species from the global study were eliminated and 13 new ones were  included.</p>



## ico_spp_popn_trend

IUCN population trend as a proxy for iconic species trend

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | ico_spp_popn_trend_gye2015.csv                                                   |
| value units       | trend score                                                      |
| value range       | NA to NA                               |
| global extraction | equal: global trends were applied equally to all regions. |

<p>Updated with local data. @andres 28/04/2015.  Data from IUCN for species existent in the Gulf</p>



## le_jobs_sector_year

Jobs

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | le_jobs_sector_year_gye2015.csv                                                   |
| value units       | jobs                                                      |
| value range       | 9 to 21980.51                               |
| global extraction | equal: global trends were applied equally to each region.  |

<p>Gapfilled. Updated with local data @andres, 04/06/2015  Nine economic  sectors  appropiate for the Golfo de Guayaquil. Data sources:   (INEC) <a href="http://www.ecuadorencifras.gob.ec/empleo-marzo-2015/">http://www.ecuadorencifras.gob.ec/empleo-marzo-2015/</a></p>



## le_popn

Total population by subregion

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | le_popn_gye2015.csv                                                   |
| value units       | count                                                      |
| value range       | 318247 to 4024929                               |
| global extraction | equal:  |

<p>Population data. Updated with local data. @andres 04/05/2015  Source: INEC  <a href="http://www.ecuadorencifras.gob.ec/proyecciones-poblacionales/">http://www.ecuadorencifras.gob.ec/proyecciones-poblacionales/</a></p>



## le_sector_weight

Jobs weighting

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | le_sector_weight_gye2015.csv                                                   |
| value units       | value                                                      |
| value range       | 1 to 1.97                               |
| global extraction | equal:  |

<p>Jobs weighted by sector. Using local information. @andres 1/6/2015 Nine economic  sectors  appropiate for the Golfo de Guayaquil. Sectorial  Multiplier given by Halpern et al. in their article from 2012</p>



## le_unemployment

Unemployment

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | le_unemployment_gl2014.csv                                                   |
| value units       | percent unemployed                                                      |
| value range       | 6.065547 to 10.34244                               |
| global extraction | equal: global unemployment percentages were applied equally to each region.  |

<p>Gapfilled. Updated with local data @andres, 04/06/2015. INEC <a href="http://www.ecuadorencifras.gob.ec/empleo-encuesta-nacional-de-empleo-desempleo-y-subempleo-enemdu/">http://www.ecuadorencifras.gob.ec/empleo-encuesta-nacional-de-empleo-desempleo-y-subempleo-enemdu/</a></p>



## le_vab

VAB

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | le_vab_gye2015.csv                                                   |
| value units       | 2010 USD                                                      |
| value range       | 86451173 to 2007522352                               |
| global extraction | population_inland25km: global GDP data were applied to each region after weighting by each region's coastal population. |

<p>New layer.  Substitutes layer le_gdp. The vab is an equivalent measure which captures regional economies importance to  discriminate by province. The gdp is more appropriate to describe the national economy. Updated with local data @andres, 04/06/2015 GDP pases to VAB</p>



## le_wage_sector_year

Wages

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | le_wage_sector_year_gye2015.csv                                                   |
| value units       | 2010 USD                                                      |
| value range       | 539 to 637                               |
| global extraction | equal: global wages were applied equally to each region.  |

<p>gapfilled. Updated with local data @andres, 04/06/2015.  Nine economic  sectors  appropiate for the Golfo de Guayaquil, INEC <a href="http://www.ecuadorencifras.gob.ec/base-censo-2010/">http://www.ecuadorencifras.gob.ec/base-censo-2010/</a></p>



## le_workforcesize_adj

Modeled Livelihoods & Economies data

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | le_workforcesize_adj_gye2015.csv                                                   |
| value units       | jobs                                                      |
| value range       | 64923 to 1140158                               |
| global extraction | population_inland25km: global workforce data were applied to each region after weighting by each region's coastal population. |

<p>Adjusted workforce size. Updated with local data @andres, 04/06/2015. INEC - Estimate from the Population Census of 2010</p>



## li_gci

GCI: competitiveness in achieving sustained economic prosperity

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | li_gci_gye2015.csv                                                   |
| value units       | resilience score                                                      |
| value range       | 0.4716312 to 0.4716312                               |
| global extraction | equal: global resilience data were applied equally to all regions. |

<p>Global Competitiveness Index (GCI) scores from the World Economic Forum.
Updated @andres. 29/06/2015. National Data up to date for the 2013-2014 period from the World Economic Forum.
Data sources:</p>

<ul>
<li><a href="http://www.weforum.org/issues/global-competitiveness">World Economic Forum</a></li>
</ul>



## li_sector_evenness

Sector evenness as a measure of economic diversity

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | li_sector_evenness_gl2014.csv                                                   |
| value units       | resilience score                                                      |
| value range       | 0.7686367 to 0.7686367                               |
| global extraction | equal: global resilience data were applied equally to all regions. |

<p>Shannon&#39;s Diversity Index calculated sector evenness based on the total number of sectors and the proportion of jobs belonging to any sector.</p>



## lsp_prot_area_inland1km

Coastal protected areas inland 1km

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | lsp_prot_area_inland1km_gye2015.csv                                                   |
| value units       | km^2                                                      |
| value range       | 0 to 37.86                               |
| global extraction | raster | area_inland1km:  |

<p>Coastal protected areas inland to 1km. Updated with local data. @andres, 28/04/2015 source: AMCPs 3MN Y 1 KM INCREMENTO_UTF8.xlsx Ministerio del Ambiente and Fundacion Natura. All areas considered are within the  SNAP.</p>



## lsp_prot_area_offshore3nm

Coastal marine protected areas offshore 3nm

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | lsp_prot_area_offshore3nm_gye2015.csv                                                   |
| value units       | km^2                                                      |
| value range       | 0 to 126.12                               |
| global extraction | raster | area_offshore3nm:  |

<p>Coastal protected areas offshore to 3nm.  Updated with local data. @andres, 28/04/2015 file: AMCPs 3MN Y 1 KM INCREMENTO_UTF8.xlsx Ministerio del Ambiente y Fundacion Natura. All areas considered are within SNAP.</p>



## mar_coastalpopn_inland25km

Coastal population inland 25 kilometers

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | mar_coastalpopn_inland25km_gye2015.csv                                                   |
| value units       | people                                                      |
| value range       | 191389 to 2850365                               |
| global extraction | raster: spatial data was extracted for each region.  |

<p>Coastal population, defined as the total population inland of 25 kilometers.
Updated with local data. @andres. 19/06/2015.
Data sources:</p>

<p>INEC <a href="http://www.ecuadorencifras.gob.ec/proyecciones-poblacionales/">http://www.ecuadorencifras.gob.ec/proyecciones-poblacionales/</a></p>



## mar_harvest_species

Mariculture species harvested

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | mar_harvest_species_gye2015.csv                                                   |
| value units       | species name                                                      |
| value range       | NA to NA                               |
| global extraction | equal: global mariculture species were applied equally to each region. |

<p>Lookup table for mariculture: species Latin names and species code. (FAO) <a href="http://www.fao.org/fishery/collection/asfis/es">http://www.fao.org/fishery/collection/asfis/es</a>
Updated with local data. @andres. 19/06/2015. Codes for the species existent in Golfo de Guayaquil,  tilapia has no FAO code.
Data sources:</p>

<ul>
<li><a href="http://www.fao.org/fishery/statistics/global-aquaculture-production/en">FAO global aquaculture production</a></li>
</ul>



## mar_harvest_tonnes

Mariculture harvest

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | mar_harvest_tonnes_gye2015.csv                                                   |
| value units       | tons                                                      |
| value range       | 0 to 196854.2                               |
| global extraction | area_offshore_3nm: global mariculture harvest (tonnes) data were applied to each region after weighting by each region's offshore area to 3nm.  |

<p>Mariculture harvest.
Updated with local data. @andres. 19/06/2015. Data sources: Data from Camara Nacional de Acuacultura (CNA). Subsecretaria de Acuacultura</p>



## mar_sustainability_score

Mariculture sustainability score

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | mar_sustainability_score_gye2015.csv                                                   |
| value units       | sustainability                                                      |
| value range       | 0 to 0.775                               |
| global extraction | equal: global mariculture sustainability scores were applied equally to each region. |

<p>Mariculture sustainability and mariculture regulations indicated by the Mariculture Sustainability Index (MSI). 
Updated with local data. @andres. 19/06/2015.
Data sources:</p>

<ul>
<li>Trujillo P. (2008). <strong>Using a mariculture sustainability index to rank countries<d5><d4><eb><a2>Ղ<d5>_Ղ<eb><8e> performances</strong>. In: A comparative assessment of biodiversity, fisheries and aquaculture in 53 countries<d5><d4><eb><a2>Ղ<d5><em>Ղ<eb><8e> Exclusive Economic Zones, Alder J, Pauly D, editors. _Fisheries Centre Research Report</em>, vol. 16(7) p. 28<d5><d4><eb><a2>Ղ<d5>_ՂՐ56.</li>
</ul>



## mar_trend_years

Mariculture years used for trend

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | mar_trend_years_gye2015.csv                                                   |
| value units       | year string                                                      |
| value range       | NA to NA                               |
| global extraction | equal: global trends were applied equally to each region. |

<p>Mariculture years used for trend. Updated to use local data range. @andres. 19/06/2015.</p>



## mariculture

CBD survey: mariculture

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | mariculture_gye2015.csv                                                   |
| value units       | resilience score                                                      |
| value range       | 0.9166667 to 0.9166667                               |
| global extraction | equal: global resilience data were applied equally to all regions. |

<p>Survey responses by country to the Convention on Biological Diversity (CBD) Third National Report (2005) 
Updated with local information. @andres. 29/06/2015 Using the four criteria suggested by Halpern et al. Methodology with the equal weight each.
Data sources:</p>

<ul>
<li><a href="http://www.cbd.int/reports/search/default.shtml">Convention on Biological Diversity (CBD)</a></li>
</ul>



## msi_gov

 MSI sustainability and regulations

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | msi_gov_gye2015.csv                                                   |
| value units       | resilience score                                                      |
| value range       | 0.8208333 to 0.8208333                               |
| global extraction | equal: global resilience data were applied equally to all regions. |

<p>Mariculture practice assessment criteria from the Mariculture Sustainability Index (MSI). 
Updated with local information. @andres. 29/06/2015. Using the four criteria suggested by Halpern et al. Methodology with the equal weight each.
Data sources:</p>

<ul>
<li>Trujillo P. (2008). <strong>Using a mariculture sustainability index to rank countries<d5><d4><eb><a2>Ղ<d5>_Ղ<eb><8e> performances</strong>. In: A comparative assessment of biodiversity, fisheries and aquaculture in 53 countries<d5><d4><eb><a2>Ղ<d5><em>Ղ<eb><8e> Exclusive Economic Zones, Alder J, Pauly D, editors. _Fisheries Centre Research Report</em>, vol. 16(7) p. 28<d5><d4><eb><a2>Ղ<d5>_ՂՐ56.</li>
</ul>



## np_blast

Areas of observed blast (dynamite) fishing

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | np_blast_gye2015.csv                                                   |
| value units       | pressure score                                                      |
| value range       | 0 to 0                               |
| global extraction | equal: global scores were applied equally to each region.  |

<p>The presence of destructive artisanal blast fishing (Reefs at Risk Revisited).
Updated with local data. @andres, 20/06/2015.
Data sources:</p>

<ul>
<li><a href="http://www.wri.org/publication/reefs-at-risk-revisited">Reefs at Risk Revisited</a> Burke et al. (2011). Map 3.1 - Global Observations of Blast and Poison Fishing.  P<f6>g. 27, usando el mapa 3.1</li>
</ul>



## np_cyanide

Areas of observed poison fishing

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | np_cyanide_gye2015.csv                                                   |
| value units       | pressure score                                                      |
| value range       | 0 to 0                               |
| global extraction | equal: global scores were applied equally to each region.  |

<p>The presence of destructive artisanal poison (cyanide) fishing (Reefs at Risk Revisited).
Updated with local data. @andres, 20/06/2015.
Data sources:</p>

<ul>
<li><a href="www.wri.org/publication/reefs-at-risk-revisited">Reefs at Risk Revisited</a> Burke et al. (2011). Map 3.1 - Global Observations of Blast and Poison Fishing.  Page 27, using map 3.1</li>
</ul>



## np_harvest_product_weight

Ratio of product peak harvest value (in 2010 USD) divided by sum of all product peak harvest values, per region

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | np_harvest_product_weight_gye2015.csv                                                   |
| value units       | score                                                      |
| value range       | 1.951e-06 to 0.9776204                               |
| global extraction | equal: global weights were applied equally to each region.  |

<p>Ratio of harvest of of six marine products (coral, fish oil, seaweed and plants, shells, sponges, ornamental fish) from FAO.
Updated with local data. @andres, 20/06/2015.
Data sources:</p>

<ul>
<li><a href="http://www.fao.org/fishery/statistics/global-capture-production/en">FAO fisheries statistics</a></li>
</ul>



## np_harvest_tonnes

Harvest yield of marine natural products, smoothed

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | np_harvest_tonnes_gye2015.csv                                                   |
| value units       | metric tonnes                                                      |
| value range       | 0 to 17390                               |
| global extraction | area_offshore_3nm: global harvest (tonnes) was applied to each region after weighting by each region's offshore area to 3nm.  |

<p>Yield in metric tonnes of six marine products (coral, fish oil, seaweed and plants, shells, sponges, ornamental fish) from FAO.
Updated with local data. @andres, 20/06/2015.
Data sources:</p>

<ul>
<li><a href="http://www.fao.org/fishery/statistics/global-capture-production/en">FAO fisheries statistics</a></li>
</ul>



## np_harvest_tonnes_relative

Harvest ratio to peak yeild of marine natural products

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | np_harvest_tonnes_relative_gye2015.csv                                                   |
| value units       | score                                                      |
| value range       | 0 to 1                               |
| global extraction | equal: global scores were applied equally to each region.  |

<p>Ratio to max yield (tonnes) of product peak for six marine products (coral, fish oil, seaweed and plants, shells, sponges, ornamental fish) from FAO.
Updated with local data. @andres, 20/06/2015.
Data sources:</p>

<ul>
<li><a href="http://www.fao.org/fishery/statistics/global-capture-production/en">FAO fisheries statistics</a></li>
</ul>



## np_harvest_usd

Harvest value of marine natural products, smoothed

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | np_harvest_usd_gye2015.csv                                                   |
| value units       | 2010 USD                                                      |
| value range       | 0 to 35081000                               |
| global extraction | equal: global harvest (usd), used as a weighting score, was applied equally to all regions.  |

<p>Value in 2010 US dollars of six marine products (coral, fish oil, seaweed and plants, shells, sponges, ornamental fish) from FAO. Estimate based on US dollar prices of 2010. Since Ecuador is a signatory of CITES coral exportation is forbidden.
Updated with local data. @andres, 20/06/2015.
Data sources:</p>

<ul>
<li><a href="http://www.fao.org/fishery/statistics/global-capture-production/en">FAO fisheries statistics</a></li>
</ul>



## np_harvest_usd_relative

Harvest ratio to peak value of marine natural products

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | np_harvest_usd_relative_gye2015.csv                                                   |
| value units       | score                                                      |
| value range       | 0 to 1                               |
| global extraction | equal: global scores were applied equally to each region.  |

<p>Ratio to max value (2010 USD) of product peak of six marine products (coral, fish oil, seaweed and plants, shells, sponges, ornamental fish) from FAO.
Updated with local data. @andres, 20/06/2015.
Data sources:</p>

<ul>
<li><a href="http://www.fao.org/fishery/statistics/global-capture-production/en">FAO fisheries statistics</a></li>
</ul>



## po_chemicals

Ocean-based chemical pollution

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | po_chemicals_gye2015.csv                                                   |
| value units       | pressure score                                                      |
| value range       | 0.003390492 to 0.08560687                               |
| global extraction | raster: spatial data was extracted for each region.  |

<p>Modeled ocean-based chemical pollution from commercial shipping traffic and ports and harbors (Halpern et al. 2008).</p>

<p>Data sources:</p>

<ul>
<li>Updated with local information. @andres 1/6/2015</li>
<li>Halpern, B.S., Walbridge S., Selkoe, K.A., Kappel, C.V., Micheli, F., D&#39;Agrosa, C., Bruno, J.F., Casey, K.S., Ebert, C., Fox, H.E., Fujita, R., Heinemann, D., Lenihan, H.S., Madin, E.M.P., Perry, M.T., Selig, E.R., Spalding, M., Steneck, R., Watson, R. (2008) <strong>A global map of human impact on marine ecosystems</strong>. <em>Science</em>, 3199(5865): 948-952. <a href="http://dx.doi.org/10.1126/science.1149345">doi:10.1126/science.1149345</a></li>
</ul>



## po_chemicals_3nm

Land-based chemical pollution

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | po_chemicals_3nm_gye2015.csv                                                   |
| value units       | pressure score                                                      |
| value range       | 0.257125 to 0.6520367                               |
| global extraction | raster | equal:  |

<p>Modeled land-based organic pollution at 1km2 resolution (Halpern et al. 2008).</p>

<p>Data sources:</p>

<ul>
<li>Updated @andres 1/6/2015 Using the data from the maps from Halpern et al. (2008): A Global Map of Human Impact on Marine Ecosystems we were able to obtain the data for the provinces of Golfo de Guayaquil</li>
<li>Halpern, B.S., Walbridge S., Selkoe, K.A., Kappel, C.V., Micheli, F., D&#39;Agrosa, C., Bruno, J.F., Casey, K.S., Ebert, C., Fox, H.E., Fujita, R., Heinemann, D., Lenihan, H.S., Madin, E.M.P., Perry, M.T., Selig, E.R., Spalding, M., Steneck, R., Watson, R. (2008) <strong>A global map of human impact on marine ecosystems</strong>. <em>Science</em>, 3199(5865): 948-952. <a href="http://dx.doi.org/10.1126/science.1149345">doi:10.1126/science.1149345</a></li>
</ul>



## po_nutrients

Ocean nutrient pollution

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | po_nutrients_gye2015.csv                                                   |
| value units       | pressure score                                                      |
| value range       | 0.08772676 to 0.1595624                               |
| global extraction | raster: spatial data was extracted for each region.  |

<p>Modeled ocean nutrient pollution (Halpern et al. 2008).</p>

<p>Data sources:</p>

<ul>
<li>Updated with local information. @andres 1/6/2015</li>
<li>Halpern, B.S., Walbridge S., Selkoe, K.A., Kappel, C.V., Micheli, F., D&#39;Agrosa, C., Bruno, J.F., Casey, K.S., Ebert, C., Fox, H.E., Fujita, R., Heinemann, D., Lenihan, H.S., Madin, E.M.P., Perry, M.T., Selig, E.R., Spalding, M., Steneck, R., Watson, R. (2008) <strong>A global map of human impact on marine ecosystems</strong>. <em>Science</em>, 3199(5865): 948-952. <a href="http://dx.doi.org/10.1126/science.1149345">doi:10.1126/science.1149345</a></li>
</ul>



## po_nutrients_3nm

Coastal nutrient pollution

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | po_nutrients_3nm_gye2015.csv                                                   |
| value units       | pressure score                                                      |
| value range       | 0.136963 to 0.4853501                               |
| global extraction | raster | equal:  |

<p>Modeled coastal nutrient pollution (Halpern et al. 2008).</p>

<p>Data sources:</p>

<ul>
<li>Updated  @andres 1/6/2015 Using the data from the maps from the paper of Halpern et al. (2008): A Global Map of Human Impact on Marine Ecosystems we were able to obtain the data for the provinces of Golfo de Guayaquil</li>
<li>Halpern, B.S., Walbridge S., Selkoe, K.A., Kappel, C.V., Micheli, F., D&#39;Agrosa, C., Bruno, J.F., Casey, K.S., Ebert, C., Fox, H.E., Fujita, R., Heinemann, D., Lenihan, H.S., Madin, E.M.P., Perry, M.T., Selig, E.R., Spalding, M., Steneck, R., Watson, R. (2008) <strong>A global map of human impact on marine ecosystems</strong>. <em>Science</em>, 3199(5865): 948-952. <a href="http://dx.doi.org/10.1126/science.1149345">doi:10.1126/science.1149345</a></li>
</ul>



## po_pathogens

Access to improved sanitation as a proxy for pathogen pollution

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | po_pathogens_gye2015.csv                                                   |
| value units       | pressure score                                                      |
| value range       | 0.089855 to 0.1064947                               |
| global extraction | raster: spatial data was extracted for each region.  |

<p>Percent of population with access to improved sanitation facilities. 
When used as a pressure it is computed as 1-po_pathogens this is used to determine the status of the Clean Waters Goal
Data sources:</p>

<ul>
<li>Updated with local information. @andres 1/6/2015 Sistema de Indicadores Sociales del Ecuador (SIISE) <a href="http://www.siise.gob.ec/siiseweb/">http://www.siise.gob.ec/siiseweb/</a> Instituto Nacional de Estadisticas y Censos (INEC) and Direccion de Informacion Cartografica Estadistica (DICE) <a href="http://www.inec.gob.ec/estadisticas/">http://www.inec.gob.ec/estadisticas/</a></li>
</ul>



## po_trash

Trash pollution

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | po_trash_gye2015.csv                                                   |
| value units       | pressure score                                                      |
| value range       | 0.4440443 to 0.9090909                               |
| global extraction | equal: global pressures data were applied equally to all regions. |

<p>Density of trash from coastal land and sea (Ocean Conservancy). 
When used as a  pressure the value is obtained from calculating 1-po_trash used to determine the status of the Clean Waters goal.</p>

<ul>
<li>Updated with local information. @andres 1/6/2015
from the following institutions: Instituto Nacional de Estadisticas y Censos (INEC). Ministerio del Ambiente (MAE). Comision Permanente del Pacifico Sur (CPPS).</li>
</ul>



## rgn_area

Region area of total EEZ ocean

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | rgn_area_sc2014-area.csv                                                   |
| value units       | km^2                                                      |
| value range       | 2643.545 to 15384.93                               |
| global extraction | raster: spatial data was extracted for each region. |

<p>Area of Ocean Health Index regions based on exclusive economic zones (VLIZ 2012). </p>

<p>Data sources:</p>

<ul>
<li><a href="http://www.marineregions.org/">VLIZ Maritime Boundaries Geodatabase, version 7</a></li>
</ul>



## rgn_area_inland1km

Region area 1 km inland

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | rgn_area_inland1km_gye2015.csv                                                   |
| value units       | km^2                                                      |
| value range       | 361.11 to 2187.63                               |
| global extraction | raster: spatial data was extracted for each region. |

<p>inland area 1 km from shore. @andres: updated with local data. 03/05/2015</p>



## rgn_area_offshore3nm

Region area offshore 3nm

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | rgn_area_offshore3nm_gye2015.csv                                                   |
| value units       | km^2                                                      |
| value range       | 65.67 to 236.39                               |
| global extraction | raster: spatial data was extracted for each region. |

<p>Area of Ocean Health Index regions to 3nm (VLIZ 2012). @andres: updated with local data.</p>

<p>Data sources:</p>

<ul>
<li><a href="http://www.marineregions.org/">VLIZ Maritime Boundaries Geodatabase, version 7</a></li>
</ul>



## rgn_georegion_labels

Georegion labels per region, at 3 georegion levels

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | rgn_georegion_labels_gl2014.csv                                                   |
| value units       | label                                                      |
| value range       | NA to NA                               |
| global extraction | raster: spatial data was extracted for each region. |

<p>Lookup table of Ocean Health Index regions and UN georegion names at 3 georegion levels.</p>

<p>Data sources:</p>

<ul>
<li><a href="http://unstats.un.org/unsd/methods/m49/m49regin.htm">UN geographical region and composition</a></li>
</ul>



## rgn_georegions

Georegion ids per region, at 3 georegion levels

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | rgn_georegions_gl2014.csv                                                   |
| value units       | georegion id                                                      |
| value range       | 1 to 419                               |
| global extraction | raster: spatial data was extracted for each region. |

<p>Lookup table of Ocean Health Index regions and UN georegion identifiers at 3 georegion levels.</p>

<p>Data sources:</p>

<ul>
<li><a href="http://unstats.un.org/unsd/methods/m49/m49regin.htm">UN geographical region and composition</a></li>
</ul>



## rgn_global

regions used in global analysis for Nature 2012, subset of regions_labels by type=eez and not deleted or disputed 

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | rgn_global_gl2014.csv                                                   |
| value units       | label                                                      |
| value range       | NA to NA                               |
| global extraction | raster: spatial data was extracted for each region. |

<p>Regions used in global analysis for Nature 2012, subset of regions_labels by type=eez and not deleted or disputed. </p>



## rgn_labels

regions by type (eez, subocean, unclaimed) and label

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | rgn_labels.csv                                                   |
| value units       | label                                                      |
| value range       | NA to NA                               |
| global extraction | raster: spatial data was extracted for each region. |

<p>Ocean Health Index regions by type (eez, subocean, unclaimed) and label</p>



## sp_alien

Alien species

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | sp_alien_gye2015.csv                                                   |
| value units       | pressure score                                                      |
| value range       | 0.06079027 to 0.06079027                               |
| global extraction | equal: global pressures data were applied equally to all regions. |

<p>The number and type of invasive and harmful invasive species in each marine ecoregion (Molnar et al. 2008). </p>

<p>Data sources:</p>

<ul>
<li>Updated with local information. @andres 1/6/2015 from IUCN/SSC Invasive Species Specialist Group (ISSG) and papers by: Molnar et al. and Gladys Torres, &ldquo;Estrategias preventivas a especies invasoras acuaticas en el Interior del Golfo de Guayaquil en el 2011. Center for Operational Oceanographic Products and Services.</li>
<li>Molnar, J.L., Gamboa, R.L., Revenga C., Spalding, M. (2008). <strong>Assessing the global threat of invasive species to marine biodiversity</strong>. <em>Frontiers in Ecology and the Environment</em> 6(485). <a href="http://dx.doi.org/10.1890/070064">doi:10.1890/070064</a></li>
</ul>



## sp_genetic

Introduced species as a proxy for genetic escapes 

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | sp_genetic_gye2015.csv                                                   |
| value units       | pressure score                                                      |
| value range       | 0 to 0.99                               |
| global extraction | equal: global pressures data were applied equally to all regions. |

<p>Statistics on native or introduced species from the Mariculture Sustainibility Index (MSI). </p>

<p>Data sources:</p>

<ul>
<li>Updated with local information. @andres 1/6/2015 Data for the provinces in the Gulf of Guayaquil were obtained from the same  global source: Trujillo P. (2008)</li>
<li>Trujillo P. (2008). <strong>Using a mariculture sustainability index to rank countries<d5><d4><eb><a2>Ղ<d5>_Ղ<eb><8e> performances</strong>. In: A comparative assessment of biodiversity, fisheries and aquaculture in 53 countries<d5><d4><eb><a2>Ղ<d5><em>Ղ<eb><8e> Exclusive Economic Zones, Alder J, Pauly D, editors. _Fisheries Centre Research Report</em>, vol. 16(7) p. 28<d5><d4><eb><a2>Ղ<d5>_ՂՐ56.</li>
</ul>



## species_diversity

Ocean ecological integrity

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | species_diversity_gl2014.csv                                                   |
| value units       | resilience score                                                      |
| value range       | 0.8245337 to 0.8245337                               |
| global extraction | equal: global resilience data were applied equally to all regions. |

<p>Marine species diversity as a proxy for ecological integrity: ocean (IUCN).</p>

<p>Data sources:</p>

<ul>
<li><a href="http://www.iucnredlist.org/technical-documents/classification-schemes/threats-classification-scheme">International Union for Conservation of Nature (IUCN)</a></li>
</ul>



## species_diversity_3nm

Coastal ecological integrity

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | species_diversity_3nm_gl2014.csv                                                   |
| value units       | resilience score                                                      |
| value range       | 0.9117152 to 0.9117152                               |
| global extraction | equal: global resilience data were applied equally to all regions. |

<p>Marine species diversity as a proxy for ecological integrity: coastal (IUCN).</p>

<p>Data sources:</p>

<ul>
<li><a href="http://www.iucnredlist.org/technical-documents/classification-schemes/threats-classification-scheme">International Union for Conservation of Nature (IUCN)</a></li>
</ul>



## spp_status

Species lists and IUCN threat categories as a proxy for iconic species status

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | spp_status_gye2015.csv                                                   |
| value units       | status score                                                      |
| value range       | 0.9650558 to 0.9650558                               |
| global extraction | equal: global scores were applied equally to each region.  |

<p>International Union for Conservation of Nature (IUCN) Red List threat categories with aggregated species lists and 112 other specific sources.
Updated with local data. Layer is still not regionalized. @andres 13/06/2015.
Data sources:</p>

<ul>
<li><a href="http://www.iucnredlist.org/technical-documents/classification-schemes/threats-classification-scheme">International Union for Conservation of Nature (IUCN)</a></li>
</ul>



## spp_trend

Species lists and IUCN threat categories as a proxy for iconic species trend

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | spp_trend_gye2015.csv                                                   |
| value units       | trend score                                                      |
| value range       | -0.1942 to -0.1942                               |
| global extraction | equal: global trends were applied equally to each region.  |

<p>International Union for Conservation of Nature (IUCN) Red List threat categories with aggregated species lists and 112 other specific sources.
Updated with local data. Layer is still not regionalized. @andres 13/06/2015.
Data sources:</p>

<ul>
<li><a href="http://www.iucnredlist.org/technical-documents/classification-schemes/threats-classification-scheme">International Union for Conservation of Nature (IUCN)</a></li>
</ul>



## ss_wgi

Weakness of governance indicated with the WGI

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | ss_wgi_gl2014.csv                                                   |
| value units       | pressure score                                                      |
| value range       | 0.6432828 to 0.6432828                               |
| global extraction | equal: global pressures data were applied equally to all regions. |

<p>Inverse of World Governance Indicators (WGI) six combined scores. This layer is related to the resilience data layer called wgi_all. It is obtained by computing 1-wgi_all.</p>

<p>Data sources:</p>

<ul>
<li><a href="http://info.worldbank.org/governance/wgi/index.asp">Worldwide Governance Indicators (WGI)</a></li>
</ul>



## tourism

CBD survey: tourism

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | tourism_gye2015.csv                                                   |
| value units       | resilience score                                                      |
| value range       | 0.6875 to 0.6875                               |
| global extraction | equal: global resilience data were applied equally to all regions. |

<p>Survey responses by country to the Convention on Biological Diversity (CBD) Third National Report (2005) 
Updated with local information. @andres. 29/06/2015.
Data sources:</p>

<ul>
<li><a href="http://www.cbd.int/reports/search/default.shtml">Convention on Biological Diversity (CBD)</a></li>
</ul>



## tr_jobs_total

Total labor force

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | tr_jobs_total_sc2014-popn-inland25km.csv                                                   |
| value units       | jobs                                                      |
| value range       | 262260.1 to 6051600                               |
| global extraction | population_inland25km: global total labor force data were applied to each region after weighting by each region's coastal population. |

<p>Total labor force (number of people 15 years old and older who can supply labor for the production of goods and services) from World Bank assessments.</p>

<p>Data sources:</p>

<ul>
<li><a href="http://data.worldbank.org/indicator/SL.TLF.TOTL.IN">The World Bank</a></li>
</ul>



## tr_jobs_tourism

Direct employment in tourism

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | tr_jobs_tourism_sc2014-popn-inland25km.csv                                                   |
| value units       | jobs                                                      |
| value range       | 3203.098 to 97074.74                               |
| global extraction | population_inland25km: global tourism employee data were applied to each region after weighting by each region's coastal population. |

<p>Direct employment in tourism (WTTC).</p>

<p>Data sources:</p>

<ul>
<li><a href="http://www.wttc.org/research/economic-data-search-tool/">World Travel and Tourism Council (WTTC)</a></li>
</ul>



## tr_percent_inter

fraction of tourist census per region (alien, external)

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | tr_percent_inter_gye2015.csv                                                   |
| value units       | percent                                                      |
| value range       | 7.3 to 47.5                               |
| global extraction | :  |

<p>Percent of international tourists in each region. New Layer, Data from Ministerio de Turismo</p>



## tr_percent_local

fraction of tourist census per region (local, internal)

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | tr_percent_local_gye2015.csv                                                   |
| value units       | percent                                                      |
| value range       | 2.1 to 16.5                               |
| global extraction | :  |

<p>Percent of local tourists in each region. New layer, Data from INEC</p>



## tr_sustainability

Sustainability index

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | tr_sustainability_gl2014.csv                                                   |
| value units       | score                                                      |
| value range       | 3.93 to 3.93                               |
| global extraction | equal : global scores were applied equally to each region.  |

<p>Tourism Competitiveness Index (TTCI) from the World Economic Forum</p>



## tr_target_inter

Alien tourist target for 2019

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | tr_target_inter_gye2015.csv                                                   |
| value units       | people                                                      |
| value range       | 158673 to 1032458                               |
| global extraction | :  |

<p>Projected cound based on country total by % of each region. New layer, Data from Plan Integral de Marketing Turistico (PIMTE) 2014</p>



## tr_target_local

Local tourist target for 2019

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | tr_target_local_gye2015.csv                                                   |
| value units       | people                                                      |
| value range       | 117888 to 926259                               |
| global extraction | :  |

<p>Projected cound based on country total by % of each region. New layer, data from Plan Integral de Marketing Turistico (PIMTE) 2014</p>



## tr_unemployment

Percent unemployment

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | tr_unemployment_gl2014.csv                                                   |
| value units       | percent unemployed                                                      |
| value range       | 4.1 to 14                               |
| global extraction | equal: global unemployment percentages were applied equally to each region.  |

<p>Percent unemployment (The World Bank).</p>

<p>Data sources:</p>

<ul>
<li><a href="http://data.worldbank.org/indicator/SL.UEM.TOTL.ZS">The World Bank</a></li>
</ul>



## tr_visitors_inter

International tourist census up until 2014

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | tr_visitors_inter_gye2015.csv                                                   |
| value units       | people                                                      |
| value range       | 968499 to 1557006                               |
| global extraction | :  |

<p>Tourist census from alien country. New layer, Data from Ministerio de Turismo</p>



## tr_visitors_local

Local tourist census up until 2014

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | tr_visitors_local_gye2015.csv                                                   |
| value units       | people                                                      |
| value range       | 4872615 to 5056227                               |
| global extraction | :  |

<p>Tourist census from same country. New layer, Data from Coordinaciones Zonales of the  Ministerio de Turismo</p>



## water

CBD survey: water

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | water_gye2015.csv                                                   |
| value units       | resilience score                                                      |
| value range       | 0.6875 to 0.6875                               |
| global extraction | equal: global resilience data were applied equally to all regions. |

<p>Survey responses by country to the Convention on Biological Diversity (CBD) Third National Report (2005) 
Updated with local information. @andres. 29/06/2015. 
Using the four criteria suggested by Halpern et al. Methodology with the equal weight each.
Data sources:</p>

<ul>
<li><a href="http://www.cbd.int/reports/search/default.shtml">Convention on Biological Diversity (CBD)</a></li>
</ul>



## wgi_all

Strength of governance indicated with the WGI

| metadata          | value                                                                |
|-------------------|----------------------------------------------------------------------|
| filename          | wgi_all_gye2015.csv                                                   |
| value units       | resilience score                                                      |
| value range       | 0.3843053 to 0.3843053                               |
| global extraction | equal: global resilience data were applied equally to all regions. |

<p>World Governance Indicators (WGI) six combined scores.
Updated with local information. @andres. 29/06/2015. National data updated to 2013 with data from the World Bank.
Data sources:</p>

<ul>
<li><a href="http://info.worldbank.org/governance/wgi/index.asp">Worldwide Governance Indicators (WGI)</a></li>
</ul>



