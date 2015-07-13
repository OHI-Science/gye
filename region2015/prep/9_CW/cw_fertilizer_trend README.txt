cw_fertilizer_trend: fertilizer consumption as a proxy for trend in nutrient pollution.
Capa de datos: consumo de fertilizantes como un indicador de la tendencia de la contaminación por nutrientes.

1. Institución recolectora original (cuál institución hizo la recolección de los datos de su fuente).
	• Organización de las Naciones Unidas para la Alimentación y la Agricultura (FAO).
	• Instituto Nacional de Estadística y Censos (INEC).


2. Institución que provee los datos a este Proyecto (si es distinta de la recolectora).
	• Organización de las Naciones Unidas para la Alimentación y la Agricultura División de Estadística (FAOSTAT) http://faostat.fao.org/site/575/DesktopDefault.aspx?PageID=575#ancor
	• Instituto Nacional de Estadística y Censos (INEC) - Estadísticas Agropecuarias http://www.ecuadorencifras.gob.ec/estadisticas-agropecuarias-2/

 
3. Citas detalladas de la fuente, si se trata de uno o más artículos científicos.
	• Organización de las Naciones Unidas para la Alimentación y la Agricultura División de Estadística (FAOSTAT). http://faostat.fao.org/site/677/default.aspx#ancor.
	• Instituto Nacional de Estadística y Censos (INEC). 2011. Encuesta de superficie y producción agropecuaria continua. http://www.inec.gob.ec/espac_publicaciones/espac-2011/INFORME_EJECUTIVO%202011.pdf


4. Método de captura de los datos. Si fue un Estudio realizado para obtener esos datos, si se hizo utilizando algún instrumento de medición, cuál método se aplicó, si se utilizó una encuesta o formulario para recogerlos, etc.
Los datos para el cálculo de la tendencia en el consumo de fertilizantes son provenientes de la FAO, quienes miden las entregas reales por parte de los fabricantes o cantidad real de fertilizantes consumidos por un país para la producción de la agricultura. Estos datos son obtenidos a través de  resultados de la encuesta de la FAO: Cuestionario Recursos de Fertilizantes (http://www.fao.org/economic/ess/ess-agri/ess-resource-meth/en/).
Los datos que la FAO proporciona son reportados a nivel nacional, por ello se realizó una ponderación a cada una de las provincias que conforman el Golfo de Guayaquil, considerando la participación nacional de cada una de las regiones según su superficie agropecuaria, los datos para la ejecución de esta ponderación fueron tomados de la presentación Principales Resultados del 2013 de la Encuesta de Superficie y producción Agropecuaria Continua que ejecuta el INEC (http://www.inec.gob.ec/espac_publicaciones/espac-2011/INFORME_EJECUTIVO%202011.pdf).
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
Toneladas métricas de nutrientes por Km2.


7. Significado o explicación de qué significan los valores.
Los datos representan la tendencia de la cantidad de fertilizantes consumida en la producción agrícola, como un aproximado de la tendencia de la contaminación por nutrientes.
Provincia        2002           2003         	2004          2005		2006		2007		2008		2009		2010
El Oro	      	 2.63870	 2.61034	 2.41185	 2.20012	 2.42148	 2.33157	 3.55585	 2.90725	 3.00207
Guayas	        16.66530	15.62168	17.79716	14.76441	16.78674	16.41408	20.34079	20.32593	20.71127
Santa Elena  	 0.64951	 0.64565	 0.5934		 0.51307	 0.34635	 0.31936	 0.85923	 0.53248	 0.64633


8. Observación o comentario sobre los datos.
Los datos proporcionados por la FAO son a nivel nacional, por lo que se ponderaron los datos considerando superficie cosechada en cada una de las provincias.


9. Significado y explicación de las columnas que se incluyen en el archivo
Los datos de la primera columna indican el nombre de cada región, que en el caso de la evaluación del ISO del Golfo de Guayaquil corresponde a la provincia respectiva. 
La segunda columna es un valor re escalado y se procedió de la siguiente manera: i) Se obtuvieron los datos de consumo de fertilizantes del Ecuador. ii) Basados en el reporte de Principales Resultados del 2013 de la Encuesta de Superficie y Producción Agropecuaria Continua que ejecuta el INEC, se calculó el porcentaje de áreas cosechas de cada provincia en relación al área total cosechada nacional, con este valor se ponderó el porcentaje de consumo de fertilizantes por provincia. iii) Se calculó la tendencia del consumo de fertilizantes. 
La tercera columna presenta los valores de tendencia calculadas en base de las respectivas pendientes.
Región/Provincia	Pendiente	Tendencia 
El Oro			 0.0794		1
Guayas			 0.6172		1
Santa Elena		-0.0002	       -0.019848146135102
		
