po_trash: trash pollution.
Capa de datos: contaminaci�n por basura.

1. Instituci�n recolectora original (cu�l instituci�n hizo la recolecci�n de los datos de su fuente).
�	Instituto Nacional de Estad�sticas y Censos (INEC).
�	Ministerio del Ambiente (MAE).
�	Comisi�n Permanente del Pac�fico Sur (CPPS).


2. Instituci�n que provee los datos a este Proyecto (si es distinta de la recolectora).
�	Sistema de Indicadores Sociales del Ecuador http://www.siise.gob.ec/siiseweb/
�	Ministerio del Ambiente http://www.ambiente.gob.ec/programa-pngids-ecuador/
�	Comisi�n Permanente del Pac�fico Sur http://cpps.dyndns.info/cpps-docs-web/planaccion/biblioteca/pordinario/003.Basura%20Marina%20en%20la%20Region%20del%20Pacifico%20Sudeste.pdf


3. Citas detalladas de la fuente, si se trata de uno o m�s art�culos cient�ficos.
a)	Instituto Nacional de Estad�sticas y Censos (INEC), Censos de Poblaci�n y Vivienda (CPV).
�	2010: Secci�n IV, parte b, pregunta 1
b)	Instituto Nacional de Estad�sticas y Censos (INEC), Encuesta Nacional de Empleo, Desempleo y Subempleo (ENEMDU).
�	Secci�n I, pregunta 13.
c)	Ministerio del Ambiente (MAE).
�	Programa Nacional para la Gesti�n Integral de Desechos S�lidos (PNGIDS), secci�n 4.3 Estrategias, literal a Categorizaci�n y priorizaci�n de los GADs.
d)	Comisi�n Permanente del Pac�fico Sur (CPPS).
�	Informe �Basura marina en la regi�n del Pac�fico Sudeste� Tabla No. 5 �Generaci�n per     c�pita y composici�n de los residuos s�lidos en los pa�ses de la regi�n�


4. M�todo de captura de los datos. Si fue un Estudio realizado para obtener esos datos, si se hizo utilizando alg�n instrumento de medici�n, cu�l m�todo se aplic�, si se utiliz� una encuesta o formulario para recogerlos, etc.
Para el c�lculo de esta capa se emple�	la f�rmula presentada en el informe de �Basura Marina en la Regi�n del Pac�fico Sudeste� realizado por la CPPS del a�o 2007:
BM=[ (Pi�TPi�0.365�NRi�MPi) ]�T
Donde,
	� BM, Potencial basura marina de fuentes terrestres (toneladas m�tricas a�o-1).
	� Pi, Poblaci�n del municipio i que tiene frente al mar, estuario o golfo (n�mero de habitantes).
	� TPi, Tasa de producci�n de basura en el Municipio i (kilogramos.persona-1.d�a-1).
	� 0.365 Coeficiente para transformar los resultados en toneladas a�o-1.
	� NRi, Fracci�n de la poblaci�n que no tiene cobertura de los servicios de recolecci�n y disposici�n de basuras en el Municipio i.
	� MPi, Fracci�n de materiales persistentes de la basura del Municipio i (i.e., pl�sticos, vidrio y metales).
	� T, Fracci�n de basuras persistentes que podr�an llegar a los estuarios y al oc�ano, se estima   entre 0.1 y 0.3.
La tasa de producci�n de basura en el Municipio i (TPi) fue obtenida del Programa Nacional para la Gesti�n Integral de Desechos S�lidos � PNGIDS ECUADOR (http://www.ambiente.gob.ec/programa-pngids-ecuador/) secci�n 4.3 Estrategias, literal a Categorizaci�n  y priorizaci�n de los GADs, en la que literalmente expone lo siguiente:
�Los par�metros de clasificaci�n de los GADs responden a criterios de poblaci�n as� se clasifican en: Grandes con una poblaci�n que va desde 300001 a 5000000 de habitantes (2.26 % de los GADs); Medianos con una poblaci�n de 50001 a 300000 habitantes (23.08% de los GADs); Peque�os con una poblaci�n de 15001 a 50000 habitantes (41.18% de los GADs); y Micros con una poblaci�n menor a 15000 habitantes (33.48% de los GADs)�� 
La fracci�n de materiales persistentes de la basura del Municipio (MPi) fue obtenida de la suma de los porcentajes de composici�n de los residuos met�licos (0.70%), vidrios (3.70%) y pl�sticos (4.50%) presentados en la Tabla No. 5 �Generaci�n per c�pita y composici�n de los residuos s�lidos en los pa�ses de la regi�n� del informe �Basura Marina en la Regi�n del Pac�fico Sudeste� emitido por la Comisi�n permanente del Pac�fico Sur en el a�o 2007.
As� tambi�n la Comisi�n permanente del Pac�fico Sur en el informe �Basura Marina en la Regi�n del Pac�fico Sudeste� indica que la fracci�n de basuras persistentes que podr�an llegar a los estuarios y al oc�ano (T) consta entre el 10% y el 30%. 


5. Per�odo de tiempo que cubren los datos (a�o desde y a�o hasta). O enumeraci�n de a�os si no son consecutivos.
	� INEC: 2010.
	� MAE: 2010.
	� CPPS: 2007.


6. Unidad en la cual vienen los valores.
lb/km.d�a.


7. Significado o explicaci�n de qu� significan los valores.
Los resultados representan la estimaci�n de la posible basura que llega al oc�ano fue dividido para la longitud total de la l�nea de costa de cada regi�n. 


8. Observaci�n o comentario sobre los datos.
1) Sobre la variable:
	Para el an�lisis de la contaminaci�n por basura en el Golfo de Guayaquil se ha considerado que la fracci�n de basuras persistentes que podr�an llegar es de 10%.
2) Sobre el uso de la capa po_trash:
	Esta capa fue empleada como Estado, Tendencia y Presi�n para la meta de Aguas Limpias y como Presi�n para las dem�s metas.
	Esta capa es una de las cuatro variables que ayudan en el c�lculo de Estado de la meta Aguas Limpias, la cual es denominada como �d�; donde d = 1 � (contribuci�n de basura marina).
	


9. Significado y explicaci�n de las columnas que se incluyen en el archivo
Los datos de la primera columna indican el nombre de cada regi�n, que en el caso de la evaluaci�n del ISO del Golfo de Guayaquil corresponde a la provincia respectiva.
La segunda columna presenta el total obtenido a nivel provincial entre la suma de basura generada por las parroquias del Golfo de Guayas con frente costero diariamente. Estos valores se obtuvieron a partir de la f�rmula presentada en el informe de �Basura Marina en la Regi�n del Pac�fico Sudeste� realizado por la CPPS del a�o 2007.
La tercera columna contiene el Punto de Referencia, el cual se determin� siguiendo la metodolog�a de Halpern. Los datos de cada regi�n fue re escalada al m�ximo valor registrado m�s un 10%  (15.61 + 10% valor predominante en la provincia del Guayas) como el valor m�ximo registrado a nivel parroquial, en este caso fue de 0.39721 localizado en la provincia del Guayas.
La cuarta columna presenta el puntaje de Estado correspondiente a cada regi�n, el cual es el resultado de la re escalaci�n de los promedios de cada provincia con el valor m�ximo registrado. 
La quinta columna presente el puntaje de Presi�n de cada regi�n, el cual es el resultado de la operaci�n matem�tica 1 � d.
Regi�n/Provincia	Basura(lb/km.d�a)	Punto referencia	Estado		Presi�n
El Oro			 7.62610		17.17419		0.55596		0.44404
Guayas			15.61290		17.17419		0.09091		0.90909
Santa Elena		 9.22032		17.17419		0.46313		0.53687
