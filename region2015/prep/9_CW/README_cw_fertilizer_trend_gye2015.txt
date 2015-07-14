cw_fertilizer_trend: fertilizer consumption as a proxy for trend in nutrient pollution.
Capa de datos: consumo de fertilizantes como un indicador de la tendencia de la contaminaci�n por nutrientes.

1. Instituci�n recolectora original (cu�l instituci�n hizo la recolecci�n de los datos de su fuente).
	� Organizaci�n de las Naciones Unidas para la Alimentaci�n y la Agricultura (FAO).
	� Instituto Nacional de Estad�stica y Censos (INEC).


2. Instituci�n que provee los datos a este Proyecto (si es distinta de la recolectora).
	� Organizaci�n de las Naciones Unidas para la Alimentaci�n y la Agricultura Divisi�n de Estad�stica (FAOSTAT) http://faostat.fao.org/site/575/DesktopDefault.aspx?PageID=575#ancor
	� Instituto Nacional de Estad�stica y Censos (INEC) - Estad�sticas Agropecuarias http://www.ecuadorencifras.gob.ec/estadisticas-agropecuarias-2/

 
3. Citas detalladas de la fuente, si se trata de uno o m�s art�culos cient�ficos.
	� Organizaci�n de las Naciones Unidas para la Alimentaci�n y la Agricultura Divisi�n de Estad�stica (FAOSTAT). http://faostat.fao.org/site/677/default.aspx#ancor.
	� Instituto Nacional de Estad�stica y Censos (INEC). 2011. Encuesta de superficie y producci�n agropecuaria continua. http://www.inec.gob.ec/espac_publicaciones/espac-2011/INFORME_EJECUTIVO%202011.pdf


4. M�todo de captura de los datos. Si fue un Estudio realizado para obtener esos datos, si se hizo utilizando alg�n instrumento de medici�n, cu�l m�todo se aplic�, si se utiliz� una encuesta o formulario para recogerlos, etc.
Los datos para el c�lculo de la tendencia en el consumo de fertilizantes son provenientes de la FAO, quienes miden las entregas reales por parte de los fabricantes o cantidad real de fertilizantes consumidos por un pa�s para la producci�n de la agricultura. Estos datos son obtenidos a trav�s de  resultados de la encuesta de la FAO: Cuestionario Recursos de Fertilizantes (http://www.fao.org/economic/ess/ess-agri/ess-resource-meth/en/).
Los datos que la FAO proporciona son reportados a nivel nacional, por ello se realiz� una ponderaci�n a cada una de las provincias que conforman el Golfo de Guayaquil, considerando la participaci�n nacional de cada una de las regiones seg�n su superficie agropecuaria, los datos para la ejecuci�n de esta ponderaci�n fueron tomados de la presentaci�n Principales Resultados del 2013 de la Encuesta de Superficie y producci�n Agropecuaria Continua que ejecuta el INEC (http://www.inec.gob.ec/espac_publicaciones/espac-2011/INFORME_EJECUTIVO%202011.pdf).
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
Toneladas m�tricas de nutrientes por Km2.


7. Significado o explicaci�n de qu� significan los valores.
Los datos representan la tendencia de la cantidad de fertilizantes consumida en la producci�n agr�cola, como un aproximado de la tendencia de la contaminaci�n por nutrientes.
Provincia        2002           2003         	2004          2005		2006		2007		2008		2009		2010
El Oro	      	 2.63870	 2.61034	 2.41185	 2.20012	 2.42148	 2.33157	 3.55585	 2.90725	 3.00207
Guayas	        16.66530	15.62168	17.79716	14.76441	16.78674	16.41408	20.34079	20.32593	20.71127
Santa Elena  	 0.64951	 0.64565	 0.5934		 0.51307	 0.34635	 0.31936	 0.85923	 0.53248	 0.64633


8. Observaci�n o comentario sobre los datos.
Los datos proporcionados por la FAO son a nivel nacional, por lo que se ponderaron los datos considerando superficie cosechada en cada una de las provincias.


9. Significado y explicaci�n de las columnas que se incluyen en el archivo
Los datos de la primera columna indican el nombre de cada regi�n, que en el caso de la evaluaci�n del ISO del Golfo de Guayaquil corresponde a la provincia respectiva. 
La segunda columna es un valor re escalado y se procedi� de la siguiente manera: i) Se obtuvieron los datos de consumo de fertilizantes del Ecuador. ii) Basados en el reporte de Principales Resultados del 2013 de la Encuesta de Superficie y Producci�n Agropecuaria Continua que ejecuta el INEC, se calcul� el porcentaje de �reas cosechas de cada provincia en relaci�n al �rea total cosechada nacional, con este valor se ponder� el porcentaje de consumo de fertilizantes por provincia. iii) Se calcul� la tendencia del consumo de fertilizantes. 
La tercera columna presenta los valores de tendencia calculadas en base de las respectivas pendientes.
Regi�n/Provincia	Pendiente	Tendencia 
El Oro			 0.0794		1
Guayas			 0.6172		1
Santa Elena		-0.0002	       -0.019848146135102
		
