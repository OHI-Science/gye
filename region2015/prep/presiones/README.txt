# METADATA

cc_acid_gye2015_PV Ocean acidification: Modeled distribution of the aragonite saturation state (AAS) of the ocean in pre-industrial (~1870) and modern times (2000-2009) (Halpern et al. 2008).
Fuente: A Global Map of Human Impacts to Marine Ecosystems https://www.nceas.ucsb.edu/globalmarine/impacts, Halpern(2008).
Se ha considerado que para el desarrollo del presente componente es pertinente adoptar la metodología que propone Halpern et al. 2008 en su estudio de “Un Mapa Global del Impacto Human en Ecosistemas Marinos”.
Punto de Referencia: El Oro (mayor score)
Pendiente: cambiar separador de columnas y comas

cc_uv_gye2015_PV
Modeled UV radiation (Halpern et al. 2008) based on Erythemal UV Irradiance data provided by GES DISC
Fuente: A Global Map of Human Impacts to Marine Ecosystems https://www.nceas.ucsb.edu/globalmarine/impacts, Halpern(2008).
Punto de Referencia: mayor nivel de contaminación (0,80)
Pendiente: cambiar separador de columnas y comas

fp_art_hb_gye2015:  High bycatch caused by artisanal fishing
La presencia de explosión artesanal destructiva y veneno (cianuro), la pesca (Reefs at Risk Revisited).
Para esta capa se procedió a revisar la información GIS sobre los mapas globales que acogen las variables recomendadas por Halpern (2012). 
Según estos datos las provincias que acoge el Golfo de Guayaquil, no determinan datos que identifiquen artes de pesca destructivas,
por lo tanto las calificaciones para esta presión para las tres provincias son inexistentes.
Pendiente: Cambiar separador de comas y columnas.


fp_art_lb_gye2015
Low bycatch caused by artisanal fishing	
Siguiendo el modelo de la pesca artesanal de baja captura incidental de uso de prácticas no destructivos (Halpern et al., 2008), basado en las estadísticas de pesca de la FAO.
De acuerdo a la información publicada por Halpern (2008) se sugiere el uso de la información de impactos humanos por actividad. 
En este portal se logró acceder a la información sugerida por Halpern (2008) de acuerdo al impacto humano de pesca artesanal. 
A partir de los datos generados se utilizó las medianas de los datos generados de acuerdo a las coordenas provinciales recomendadas por el área de estudio. 
Pendiente: Cambiar columnas de ; a ,

fp_com_hb_gl2014
High bycatch caused by commercial fishing
Siguiendo el modelo de prácticas de pesca destructivas comerciales menos por 2 tipos de artes diferentes (Halpern et al. 2008).
De acuerdo a la información publicada por el paper de Halpern (2008) se sugiere el uso de la información de impactos humanos por actividad. 
Sin embargo para pesca comercial bajo captura incidental baja no se tiene acceso a la información recomendada para manipulación de la información
Por esta razón se recomienda utilizar la información presentada por la aplicación con respecto a Ecuador a nivel provincial.

fp_com_lb_gl2014
Low bycatch caused by commercial fishing
Siguiendo el modelo de prácticas de pesca destructivas comerciales menos por 2 tipos de artes diferentes (Halpern et al. 2008).
De la misma manera, la información publicada por el paper de Halpern (2008) se sugiere el uso de la información de impactos humanos por actividad. 
Sin embargo para pesca comercial bajo captura incidental alta no se tiene acceso a la información recomendada para manipulación de la información
Por esta razón se recomienda utilizar la información presentada por la aplicación con respecto a Ecuador a nivel provincial.

fp_targetharvest_gl2014
Targeted harvest of cetaceans and sea turtles
Cosecha selectiva de cetáceos y tortugas marinas, a partir de datos de la pesca de la FAO.
Como se puede visualizar la información sugerida por Halpern corresponde a las estadísticas publicadas por la FAO, 
la misma que no publica datos históricos para la cosecha selectiva de estas especies en Ecuador, 
por lo tanto la decisión tomada es utilizar la misma información facilitada para el modelo global de Ecuador en la que se observa calificaciones vacías para esta presión en las provincias del país.

hd_subtidal_hb_gye2015: High bycatch artisanal fishing practices as a proxy for subtidal hard bottom habitat destruction. Las prácticas de pesca artesanal de alta captura incidental como un proxy para la destrucción de hábitats de fondo duro submareal
Se procedió a revisar la información GIS sobre los mapas globales que acogen las variables recomendads por Halpern (2012). Según estos datos las provincias del Golfo de Guayaquil, 
no poseen datos que identifiquen artes de pesca destructivas, por lo tanto las calificaciones para esta presión en las tres provincias son inexistentes.	
Pendiente: confirmar capa

hd_subtidal_sb_gye2015
Fuente: Instituto Nacional de Pesca (INP)
•	Arrastrera camaronera (industrial)	2000-2013
•	Camarón pomada (industrial) 2005-2014
•	Camarón pomada/red bolso 2010-2013
Unidad: Toneladas
De acuerdo a Halpern (2012) la captura total arrastrera identificada a través de las diferentes capturas de camarón escogidas a través de la información del INP fue dividida por el área total de hábitat de fondos suaves para producir una medida de la intensidad de arrastre por unidad de área.
Debido a que estos datos fueron muy sesgados, se aplicó log (X + 1) para transformarlos y luego reajustarlos al valor máximo de todas las posibilidades anuales. Entonces el estado se calculó como uno menos la densidad reajustada de capturas en el último año disponible, este valor representa el estado. 
Luego se definió la mediana de la densidad reajustada en todos los años, cualquier valor mayor que la mediana se fijó = 1,0. La puntuación de la presión es uno menos este valor mediano-reescalado.
Los valores son tomados para realizar una densidad con respecto al área de fondos suaves por provincias y luego desarrollar la metodología que especifica Halpern (2012) con respecto a esta capa.


po_chemicals Ocean-based chemical pollution
Fuente: Halpern 2008
Pendiente: cambiar separador de comas y columnas.

po_chemicals_3nm  Land-based chemical pollution
Fuente: Halpern 2008
Pendiente: cambiar separador de comas y columnas.

po_nutrients_gye2015
Fuente: Halpern 2008
Pendiente: cambiar separador de comas y columnas.

po_nutrients_3nm_gye2015
Fuente: Halpern 2008
Pendiente: cambiar separador de comas y columnas.

po_pathogens_gye2015
Fuente:MEDIOS DE ELIMINACIÓN DE EXCRETAS(MEE) Censo de Población y Vivienda - INECAÑO: 2010
La información están a nivel parroquial con frente costero, área rural, y el valor es el porcentaje de viviendas con medios a eliminación de excretas relativo al punto de referencia que es 95%
Pendiente: Pendiente: cambiar separador de comas y columnas.

sp_genetic: Genetic escapes
Los datos provienen del Índice de Sostenibilidad Maricultura (MSI) de Trujillo (2008). En el análisis de MSI especies nativas reciben el puntaje más alto (10), mientras que el extranjero
e introdujo especies reciben el más bajo (1) en la premisa de posibles impactos a la biodiversidad local si estas especies iban a escapar. Esta información es presentada por países.
Para desagregar el indicador a nivel provincial se tomó la información de la FAO a través de SEA Around US Project con respecto a la presencia de Oreochromis (tilapia) en las provincias del país,
después de revisar esta información se concluye que solo existe presencia de esta especie en la provincia del Guayas en relación al Golfo de Guayaquil. De esta manera, los datos presentados a nivel nacional por el artículo científico de Trujillo (2008)
son utilizados solo para la provincia del Guayas reeescalados a un rango de 0 a 1. Para las otras dos provincias del Golfo se coloca 0 como valor para esta capa al no existir presencia de la especie en estas regiones.

ss_wgi_gl2014
Weakness of governance indicated with the WGI	
Al no existir una medición similar a nivel provincial que recoja la información recomendad por Halpern (2012) se decide utilizar la información global provincial de Ecuador levantada para el cálculo de ISO en el país.	

