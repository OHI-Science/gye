po_trash: trash pollution.
Capa de datos: contaminación por basura.

1. Institución recolectora original (cuál institución hizo la recolección de los datos de su fuente).
•	Instituto Nacional de Estadísticas y Censos (INEC).
•	Ministerio del Ambiente (MAE).
•	Comisión Permanente del Pacífico Sur (CPPS).


2. Institución que provee los datos a este Proyecto (si es distinta de la recolectora).
•	Sistema de Indicadores Sociales del Ecuador http://www.siise.gob.ec/siiseweb/
•	Ministerio del Ambiente http://www.ambiente.gob.ec/programa-pngids-ecuador/
•	Comisión Permanente del Pacífico Sur http://cpps.dyndns.info/cpps-docs-web/planaccion/biblioteca/pordinario/003.Basura%20Marina%20en%20la%20Region%20del%20Pacifico%20Sudeste.pdf


3. Citas detalladas de la fuente, si se trata de uno o más artículos científicos.
a)	Instituto Nacional de Estadísticas y Censos (INEC), Censos de Población y Vivienda (CPV).
•	2010: Sección IV, parte b, pregunta 1
b)	Instituto Nacional de Estadísticas y Censos (INEC), Encuesta Nacional de Empleo, Desempleo y Subempleo (ENEMDU).
•	Sección I, pregunta 13.
c)	Ministerio del Ambiente (MAE).
•	Programa Nacional para la Gestión Integral de Desechos Sólidos (PNGIDS), sección 4.3 Estrategias, literal a Categorización y priorización de los GADs.
d)	Comisión Permanente del Pacífico Sur (CPPS).
•	Informe “Basura marina en la región del Pacífico Sudeste” Tabla No. 5 “Generación per     cápita y composición de los residuos sólidos en los países de la región”


4. Método de captura de los datos. Si fue un Estudio realizado para obtener esos datos, si se hizo utilizando algún instrumento de medición, cuál método se aplicó, si se utilizó una encuesta o formulario para recogerlos, etc.
Para el cálculo de esta capa se empleó	la fórmula presentada en el informe de “Basura Marina en la Región del Pacífico Sudeste” realizado por la CPPS del año 2007:
BM=[ (Pi×TPi×0.365×NRi×MPi) ]×T
Donde,
	• BM, Potencial basura marina de fuentes terrestres (toneladas métricas año-1).
	• Pi, Población del municipio i que tiene frente al mar, estuario o golfo (número de habitantes).
	• TPi, Tasa de producción de basura en el Municipio i (kilogramos.persona-1.día-1).
	• 0.365 Coeficiente para transformar los resultados en toneladas año-1.
	• NRi, Fracción de la población que no tiene cobertura de los servicios de recolección y disposición de basuras en el Municipio i.
	• MPi, Fracción de materiales persistentes de la basura del Municipio i (i.e., plásticos, vidrio y metales).
	• T, Fracción de basuras persistentes que podrían llegar a los estuarios y al océano, se estima   entre 0.1 y 0.3.
La tasa de producción de basura en el Municipio i (TPi) fue obtenida del Programa Nacional para la Gestión Integral de Desechos Sólidos – PNGIDS ECUADOR (http://www.ambiente.gob.ec/programa-pngids-ecuador/) sección 4.3 Estrategias, literal a Categorización  y priorización de los GADs, en la que literalmente expone lo siguiente:
“Los parámetros de clasificación de los GADs responden a criterios de población así se clasifican en: Grandes con una población que va desde 300001 a 5000000 de habitantes (2.26 % de los GADs); Medianos con una población de 50001 a 300000 habitantes (23.08% de los GADs); Pequeños con una población de 15001 a 50000 habitantes (41.18% de los GADs); y Micros con una población menor a 15000 habitantes (33.48% de los GADs)…” 
La fracción de materiales persistentes de la basura del Municipio (MPi) fue obtenida de la suma de los porcentajes de composición de los residuos metálicos (0.70%), vidrios (3.70%) y plásticos (4.50%) presentados en la Tabla No. 5 “Generación per cápita y composición de los residuos sólidos en los países de la región” del informe “Basura Marina en la Región del Pacífico Sudeste” emitido por la Comisión permanente del Pacífico Sur en el año 2007.
Así también la Comisión permanente del Pacífico Sur en el informe “Basura Marina en la Región del Pacífico Sudeste” indica que la fracción de basuras persistentes que podrían llegar a los estuarios y al océano (T) consta entre el 10% y el 30%. 


5. Período de tiempo que cubren los datos (año desde y año hasta). O enumeración de años si no son consecutivos.
	• INEC: 2010.
	• MAE: 2010.
	• CPPS: 2007.


6. Unidad en la cual vienen los valores.
lb/km.día.


7. Significado o explicación de qué significan los valores.
Los resultados representan la estimación de la posible basura que llega al océano fue dividido para la longitud total de la línea de costa de cada región. 


8. Observación o comentario sobre los datos.
1) Sobre la variable:
	Para el análisis de la contaminación por basura en el Golfo de Guayaquil se ha considerado que la fracción de basuras persistentes que podrían llegar es de 10%.
2) Sobre el uso de la capa po_trash:
	Esta capa fue empleada como Estado, Tendencia y Presión para la meta de Aguas Limpias y como Presión para las demás metas.
	Esta capa es una de las cuatro variables que ayudan en el cálculo de Estado de la meta Aguas Limpias, la cual es denominada como “d”; donde d = 1 – (contribución de basura marina).
	


9. Significado y explicación de las columnas que se incluyen en el archivo
Los datos de la primera columna indican el nombre de cada región, que en el caso de la evaluación del ISO del Golfo de Guayaquil corresponde a la provincia respectiva.
La segunda columna presenta el total obtenido a nivel provincial entre la suma de basura generada por las parroquias del Golfo de Guayas con frente costero diariamente. Estos valores se obtuvieron a partir de la fórmula presentada en el informe de “Basura Marina en la Región del Pacífico Sudeste” realizado por la CPPS del año 2007.
La tercera columna contiene el Punto de Referencia, el cual se determinó siguiendo la metodología de Halpern. Los datos de cada región fue re escalada al máximo valor registrado más un 10%  (15.61 + 10% valor predominante en la provincia del Guayas) como el valor máximo registrado a nivel parroquial, en este caso fue de 0.39721 localizado en la provincia del Guayas.
La cuarta columna presenta el puntaje de Estado correspondiente a cada región, el cual es el resultado de la re escalación de los promedios de cada provincia con el valor máximo registrado. 
La quinta columna presente el puntaje de Presión de cada región, el cual es el resultado de la operación matemática 1 – d.
Región/Provincia	Basura(lb/km.día)	Punto referencia	Estado		Presión
El Oro			 7.62610		17.17419		0.55596		0.44404
Guayas			15.61290		17.17419		0.09091		0.90909
Santa Elena		 9.22032		17.17419		0.46313		0.53687
