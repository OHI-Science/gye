cw_pesticide_trend: pesticide consumption as a proxy for trend in chemical pollution.
Capa de datos: consumo de pesticidas como un indicador de la tendencia de la contaminaci�n qu�mica.


1. Instituci�n recolectora original (cu�l instituci�n hizo la recolecci�n de los datos de su fuente).
	� Organizaci�n de las Naciones Unidas para la Alimentaci�n y la Agricultura (FAO).
	� Instituto Nacional de Estad�stica y Censos (INEC).


2. Instituci�n que provee los datos a este Proyecto (si es distinta de la recolectora).
	� Organizaci�n de las Naciones Unidas para la Alimentaci�n y la Agricultura Divisi�n de Estad�stica (FAOSTAT) http://faostat3.fao.org/browse/E/EP/E
	� Instituto Nacional de Estad�stica y Censos (INEC) - Estad�sticas Agropecuarias http://www.ecuadorencifras.gob.ec/estadisticas-agropecuarias-2/


3. Citas detalladas de la fuente, si se trata de uno o m�s art�culos cient�ficos.
	� Organizaci�n de las Naciones Unidas para la Alimentaci�n y la Agricultura Divisi�n de Estad�stica (FAOSTAT) http://faostat3.fao.org/browse/E/EP/E
	� Instituto Nacional de Estad�stica y Censos (INEC). 2011. Encuesta de superficie y producci�n agropecuaria continua. http://www.inec.gob.ec/espac_publicaciones/espac-2011/INFORME_EJECUTIVO%202011.pdf


4. M�todo de captura de los datos. Si fue un Estudio realizado para obtener esos datos, si se hizo utilizando alg�n instrumento de medici�n, cu�l m�todo se aplic�, si se utiliz� una encuesta o formulario para recogerlos, etc.
Los datos para el c�lculo de la tendencia en el consumo de plaguicidas son provenientes de la FAO. Todos los distintos plaguicidas recogidos en la informaci�n de la FAO se suman para obtener el consumo total de plaguicidas. El consumo total de plaguicidas se divide por la superficie de tierras arables y cultivos permanentes para obtener el uso total de plaguicidas.
Los plaguicidas incluyen insecticidas, herbicidas, fungicidas y otros productos como por ejemplo los reguladores de crecimiento.
La FAO presenta informaci�n desde el a�o 1990 al 2010, estos datos son a nivel nacional, luego se ponderaron las tres provincias que conforman el Golfo de Guayaquil con informaci�n de las �reas cosechadas, presentadas en el Informe Encuesta de Superficie y Producci�n Agropecuaria Continua del a�o 2011 del INEC. Para ser coincidentes con el rango de los datos se procedi� a seleccionar los datos de los a�os desde 2002 al 2010.
Luego se realiz� una regresi�n lineal con los datos obtenidos en los a�os 2002-2010.
Las f�rmulas para el c�lculo de las tendencias fueron las siguientes:
La pendiente es igual a:
	m= r * SD(y)/SD(x).
	r es el coeficiente de correlaci�n que est� entre -1 y 1. Para llevar la pendiente a [-1, 1].
Se hace:
m* SD(x)/SD(y), donde m es el coeficiente b1, SD(x) es la desviaci�n est�ndar de los a�os utilizados y SD(y) es la desviaci�n est�ndar de la variable proxy y cualquiera que se use.


5. Per�odo de tiempo que cubren los datos (a�o desde y a�o hasta). O enumeraci�n de a�os si no son consecutivos.
	� FAO 2002-2010.
	� INEC 2002-2010.


6. Unidad en la cual vienen los valores.
Toneladas de ingredientes activos por km2.


7. Significado o explicaci�n de qu� significan los valores.
Los datos representan la tendencia de la cantidad de plaguicidas aplicados a cultivos y semillas agr�colas, como un aproximado de la tendencia de la contaminaci�n qu�mica.
Regi�n		2002		2003		2004		2005		2006		2007		2008		2009		2010
El Oro		0.0259		0.6673		0.5298		0.3481		0.1525		0.2792		0.3502		0.1856		0.5968
Guayas		0.1637		3.9938		3.9097		2.3359		1.0569		1.9658		2.0032		1.2978		4.1174 
Santa Elena	0.0064		0.1651		0.1304		0.0812		0.0218		0.0382		0.0846		0.0340		0.1285



8. Observaci�n o comentario sobre los datos.
Las cifras se expresan en toneladas m�tricas de ingredientes activos. Sin embargo, debido a los diferentes m�todos de recolecci�n y de difusi�n, algunos datos est�n expresados en uso de productos formulados, importaciones, ventas o distribuci�n para aplicaci�n a los cultivos y semillas agr�colas. Estos casos est�n detallados en las notas sobre los pa�ses. Par saber m�s: http://faostat.fao.org/DesktopDefault.aspx?PageID=424&lang=es#ancor. Para el caso particular de Ecuador la FAO indica que los datos se refieren a las importaciones y est�n expresados en ingredientes activos.
Los datos proporcionados por la FAO son a nivel nacional, por lo que se ponderaron los datos considerando superficie cosechada en cada una de las provincias.


9. Significado y explicaci�n de las columnas que se incluyen en el archivo
Los datos de la primera columna indican el nombre de cada regi�n, que en el caso de la evaluaci�n del ISO del Golfo de Guayaquil corresponde a la provincia respectiva. 
La segunda columna es un valor re escalado y se procedi� de la siguiente manera: i) Se obtuvieron los datos de consumo de pesticidas del Ecuador. ii) Basados en el reporte de Principales Resultados del 2013 de la Encuesta de Superficie y Producci�n Agropecuaria Continua que ejecuta el INEC, se calcul� el porcentaje de �reas cosechadas de cada provincia en relaci�n al �rea total cosechada nacional, con este valor se ponder� el porcentaje de consumo de pesticidas por provincia. iii) Se calcul� la tendencia del consumo de plaguicidas. 
La tercera columna presenta los valores de tendencia calculadas en base de las respectivas pendientes.
Regi�n/Provincia	Pendiente	Tendencia 
El Oro			 0.0068		 0.435319245932905
Guayas			 0.0591		 0.570516135366316
Santa Elena		-0.0007		-0.16094707095949


