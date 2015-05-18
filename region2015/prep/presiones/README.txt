# METADATA

cc_acid_gye2015_PV Ocean acidification: Modeled distribution of the aragonite saturation state (AAS) of the ocean in pre-industrial (~1870) and modern times (2000-2009) (Halpern et al. 2008).
Fuente: A Global Map of Human Impacts to Marine Ecosystems https://www.nceas.ucsb.edu/globalmarine/impacts, Halpern(2008).
Se ha considerado que para el desarrollo del presente componente es pertinente adoptar la metodolog�a que propone Halpern et al. 2008 en su estudio de �Un Mapa Global del Impacto Human en Ecosistemas Marinos�.
Punto de Referencia: El Oro (mayor score)
Pendiente: cambiar separador de columnas y comas

cc_uv_gye2015_PV
Modeled UV radiation (Halpern et al. 2008) based on Erythemal UV Irradiance data provided by GES DISC
Fuente: A Global Map of Human Impacts to Marine Ecosystems https://www.nceas.ucsb.edu/globalmarine/impacts, Halpern(2008).
Punto de Referencia: mayor nivel de contaminaci�n (0,80)
Pendiente: cambiar separador de columnas y comas

fp_art_hb_gye2015:  High bycatch caused by artisanal fishing
La presencia de explosi�n artesanal destructiva y veneno (cianuro), la pesca (Reefs at Risk Revisited).
Para esta capa se procedi� a revisar la informaci�n GIS sobre los mapas globales que acogen las variables recomendadas por Halpern (2012). 
Seg�n estos datos las provincias que acoge el Golfo de Guayaquil, no determinan datos que identifiquen artes de pesca destructivas,
por lo tanto las calificaciones para esta presi�n para las tres provincias son inexistentes.
Pendiente: Cambiar separador de comas y columnas.


fp_art_lb_gye2015
Low bycatch caused by artisanal fishing	
Siguiendo el modelo de la pesca artesanal de baja captura incidental de uso de pr�cticas no destructivos (Halpern et al., 2008), basado en las estad�sticas de pesca de la FAO.
De acuerdo a la informaci�n publicada por Halpern (2008) se sugiere el uso de la informaci�n de impactos humanos por actividad. 
En este portal se logr� acceder a la informaci�n sugerida por Halpern (2008) de acuerdo al impacto humano de pesca artesanal. 
A partir de los datos generados se utiliz� las medianas de los datos generados de acuerdo a las coordenas provinciales recomendadas por el �rea de estudio. 
Pendiente: Cambiar columnas de ; a ,

fp_com_hb_gl2014
High bycatch caused by commercial fishing
Siguiendo el modelo de pr�cticas de pesca destructivas comerciales menos por 2 tipos de artes diferentes (Halpern et al. 2008).
De acuerdo a la informaci�n publicada por el paper de Halpern (2008) se sugiere el uso de la informaci�n de impactos humanos por actividad. 
Sin embargo para pesca comercial bajo captura incidental baja no se tiene acceso a la informaci�n recomendada para manipulaci�n de la informaci�n
Por esta raz�n se recomienda utilizar la informaci�n presentada por la aplicaci�n con respecto a Ecuador a nivel provincial.

fp_com_lb_gl2014
Low bycatch caused by commercial fishing
Siguiendo el modelo de pr�cticas de pesca destructivas comerciales menos por 2 tipos de artes diferentes (Halpern et al. 2008).
De la misma manera, la informaci�n publicada por el paper de Halpern (2008) se sugiere el uso de la informaci�n de impactos humanos por actividad. 
Sin embargo para pesca comercial bajo captura incidental alta no se tiene acceso a la informaci�n recomendada para manipulaci�n de la informaci�n
Por esta raz�n se recomienda utilizar la informaci�n presentada por la aplicaci�n con respecto a Ecuador a nivel provincial.

fp_targetharvest_gl2014
Targeted harvest of cetaceans and sea turtles
Cosecha selectiva de cet�ceos y tortugas marinas, a partir de datos de la pesca de la FAO.
Como se puede visualizar la informaci�n sugerida por Halpern corresponde a las estad�sticas publicadas por la FAO, 
la misma que no publica datos hist�ricos para la cosecha selectiva de estas especies en Ecuador, 
por lo tanto la decisi�n tomada es utilizar la misma informaci�n facilitada para el modelo global de Ecuador en la que se observa calificaciones vac�as para esta presi�n en las provincias del pa�s.

hd_subtidal_hb_gye2015: High bycatch artisanal fishing practices as a proxy for subtidal hard bottom habitat destruction. Las pr�cticas de pesca artesanal de alta captura incidental como un proxy para la destrucci�n de h�bitats de fondo duro submareal
Se procedi� a revisar la informaci�n GIS sobre los mapas globales que acogen las variables recomendads por Halpern (2012). Seg�n estos datos las provincias del Golfo de Guayaquil, 
no poseen datos que identifiquen artes de pesca destructivas, por lo tanto las calificaciones para esta presi�n en las tres provincias son inexistentes.	
Pendiente: confirmar capa

hd_subtidal_sb_gye2015
Fuente: Instituto Nacional de Pesca (INP)
�	Arrastrera camaronera (industrial)	2000-2013
�	Camar�n pomada (industrial) 2005-2014
�	Camar�n pomada/red bolso 2010-2013
Unidad: Toneladas
De acuerdo a Halpern (2012) la captura total arrastrera identificada a trav�s de las diferentes capturas de camar�n escogidas a trav�s de la informaci�n del INP fue dividida por el �rea total de h�bitat de fondos suaves para producir una medida de la intensidad de arrastre por unidad de �rea.
Debido a que estos datos fueron muy sesgados, se aplic� log (X + 1) para transformarlos y luego reajustarlos al valor m�ximo de todas las posibilidades anuales. Entonces el estado se calcul� como uno menos la densidad reajustada de capturas en el �ltimo a�o disponible, este valor representa el estado. 
Luego se defini� la mediana de la densidad reajustada en todos los a�os, cualquier valor mayor que la mediana se fij� = 1,0. La puntuaci�n de la presi�n es uno menos este valor mediano-reescalado.
Los valores son tomados para realizar una densidad con respecto al �rea de fondos suaves por provincias y luego desarrollar la metodolog�a que especifica Halpern (2012) con respecto a esta capa.


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
Fuente:MEDIOS DE ELIMINACI�N DE EXCRETAS(MEE) Censo de Poblaci�n y Vivienda - INECA�O: 2010
La informaci�n est�n a nivel parroquial con frente costero, �rea rural, y el valor es el porcentaje de viviendas con medios a eliminaci�n de excretas relativo al punto de referencia que es 95%
Pendiente: Pendiente: cambiar separador de comas y columnas.

sp_genetic: Genetic escapes
Los datos provienen del �ndice de Sostenibilidad Maricultura (MSI) de Trujillo (2008). En el an�lisis de MSI especies nativas reciben el puntaje m�s alto (10), mientras que el extranjero
e introdujo especies reciben el m�s bajo (1) en la premisa de posibles impactos a la biodiversidad local si estas especies iban a escapar. Esta informaci�n es presentada por pa�ses.
Para desagregar el indicador a nivel provincial se tom� la informaci�n de la FAO a trav�s de SEA Around US Project con respecto a la presencia de Oreochromis (tilapia) en las provincias del pa�s,
despu�s de revisar esta informaci�n se concluye que solo existe presencia de esta especie en la provincia del Guayas en relaci�n al Golfo de Guayaquil. De esta manera, los datos presentados a nivel nacional por el art�culo cient�fico de Trujillo (2008)
son utilizados solo para la provincia del Guayas reeescalados a un rango de 0 a 1. Para las otras dos provincias del Golfo se coloca 0 como valor para esta capa al no existir presencia de la especie en estas regiones.

ss_wgi_gl2014
Weakness of governance indicated with the WGI	
Al no existir una medici�n similar a nivel provincial que recoja la informaci�n recomendad por Halpern (2012) se decide utilizar la informaci�n global provincial de Ecuador levantada para el c�lculo de ISO en el pa�s.	

