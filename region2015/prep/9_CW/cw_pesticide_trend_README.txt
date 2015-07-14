cw_pesticide_trend: pesticide consumption as a proxy for trend in chemical pollution.
Capa de datos: consumo de pesticidas como un indicador de la tendencia de la contaminación química.


1. Institución recolectora original (cuál institución hizo la recolección de los datos de su fuente).
	• Organización de las Naciones Unidas para la Alimentación y la Agricultura (FAO).
	• Instituto Nacional de Estadística y Censos (INEC).


2. Institución que provee los datos a este Proyecto (si es distinta de la recolectora).
	• Organización de las Naciones Unidas para la Alimentación y la Agricultura División de Estadística (FAOSTAT) http://faostat3.fao.org/browse/E/EP/E
	• Instituto Nacional de Estadística y Censos (INEC) - Estadísticas Agropecuarias http://www.ecuadorencifras.gob.ec/estadisticas-agropecuarias-2/


3. Citas detalladas de la fuente, si se trata de uno o más artículos científicos.
	• Organización de las Naciones Unidas para la Alimentación y la Agricultura División de Estadística (FAOSTAT) http://faostat3.fao.org/browse/E/EP/E
	• Instituto Nacional de Estadística y Censos (INEC). 2011. Encuesta de superficie y producción agropecuaria continua. http://www.inec.gob.ec/espac_publicaciones/espac-2011/INFORME_EJECUTIVO%202011.pdf


4. Método de captura de los datos. Si fue un Estudio realizado para obtener esos datos, si se hizo utilizando algún instrumento de medición, cuál método se aplicó, si se utilizó una encuesta o formulario para recogerlos, etc.
Los datos para el cálculo de la tendencia en el consumo de plaguicidas son provenientes de la FAO. Todos los distintos plaguicidas recogidos en la información de la FAO se suman para obtener el consumo total de plaguicidas. El consumo total de plaguicidas se divide por la superficie de tierras arables y cultivos permanentes para obtener el uso total de plaguicidas.
Los plaguicidas incluyen insecticidas, herbicidas, fungicidas y otros productos como por ejemplo los reguladores de crecimiento.
La FAO presenta información desde el año 1990 al 2010, estos datos son a nivel nacional, luego se ponderaron las tres provincias que conforman el Golfo de Guayaquil con información de las áreas cosechadas, presentadas en el Informe Encuesta de Superficie y Producción Agropecuaria Continua del año 2011 del INEC. Para ser coincidentes con el rango de los datos se procedió a seleccionar los datos de los años desde 2002 al 2010.
Luego se realizó una regresión lineal con los datos obtenidos en los años 2002-2010.
Las fórmulas para el cálculo de las tendencias fueron las siguientes:
La pendiente es igual a:
	m= r * SD(y)/SD(x).
	r es el coeficiente de correlación que está entre -1 y 1. Para llevar la pendiente a [-1, 1].
Se hace:
m* SD(x)/SD(y), donde m es el coeficiente b1, SD(x) es la desviación estándar de los años utilizados y SD(y) es la desviación estándar de la variable proxy y cualquiera que se use.


5. Período de tiempo que cubren los datos (año desde y año hasta). O enumeración de años si no son consecutivos.
	• FAO 2002-2010.
	• INEC 2002-2010.


6. Unidad en la cual vienen los valores.
Toneladas de ingredientes activos por km2.


7. Significado o explicación de qué significan los valores.
Los datos representan la tendencia de la cantidad de plaguicidas aplicados a cultivos y semillas agrícolas, como un aproximado de la tendencia de la contaminación química.
Región		2002		2003		2004		2005		2006		2007		2008		2009		2010
El Oro		0.0259		0.6673		0.5298		0.3481		0.1525		0.2792		0.3502		0.1856		0.5968
Guayas		0.1637		3.9938		3.9097		2.3359		1.0569		1.9658		2.0032		1.2978		4.1174 
Santa Elena	0.0064		0.1651		0.1304		0.0812		0.0218		0.0382		0.0846		0.0340		0.1285



8. Observación o comentario sobre los datos.
Las cifras se expresan en toneladas métricas de ingredientes activos. Sin embargo, debido a los diferentes métodos de recolección y de difusión, algunos datos están expresados en uso de productos formulados, importaciones, ventas o distribución para aplicación a los cultivos y semillas agrícolas. Estos casos están detallados en las notas sobre los países. Par saber más: http://faostat.fao.org/DesktopDefault.aspx?PageID=424&lang=es#ancor. Para el caso particular de Ecuador la FAO indica que los datos se refieren a las importaciones y están expresados en ingredientes activos.
Los datos proporcionados por la FAO son a nivel nacional, por lo que se ponderaron los datos considerando superficie cosechada en cada una de las provincias.


9. Significado y explicación de las columnas que se incluyen en el archivo
Los datos de la primera columna indican el nombre de cada región, que en el caso de la evaluación del ISO del Golfo de Guayaquil corresponde a la provincia respectiva. 
La segunda columna es un valor re escalado y se procedió de la siguiente manera: i) Se obtuvieron los datos de consumo de pesticidas del Ecuador. ii) Basados en el reporte de Principales Resultados del 2013 de la Encuesta de Superficie y Producción Agropecuaria Continua que ejecuta el INEC, se calculó el porcentaje de áreas cosechadas de cada provincia en relación al área total cosechada nacional, con este valor se ponderó el porcentaje de consumo de pesticidas por provincia. iii) Se calculó la tendencia del consumo de plaguicidas. 
La tercera columna presenta los valores de tendencia calculadas en base de las respectivas pendientes.
Región/Provincia	Pendiente	Tendencia 
El Oro			 0.0068		 0.435319245932905
Guayas			 0.0591		 0.570516135366316
Santa Elena		-0.0007		-0.16094707095949


