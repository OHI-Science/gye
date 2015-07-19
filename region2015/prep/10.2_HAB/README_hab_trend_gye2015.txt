capa: hab_trend

1. Instituci�n recolectora original (cu�l instituci�n que hizo la recolecci�n de los datos de su fuente).
Instituto Geogr�fico Militar (IGM), Cartograf�a B�sica.

Instituto Oceanogr�fico de la Armada (INOCAR), Cartas N�uticas, L�nea de Batimetr�a IOA.

Secretaria T�cnica del Mar, �rea de estudio.

Instituto Nacional de Estad�sticas y Censos (INEC), Divisi�n Pol�tica. 

CLIRSEN - Centro de Levantamientos Integrados de Recursos Naturales (entidad p�blica que en el a�o 2012 fue absorbida por el Instituto Espacial Ecuatoriano, IEE)

2. Instituci�n que provee los datos a este proyecto (si es distinta de la recolectora).
Consulsua - Bi�tica

3. Citas detalladas de la fuente, si se trata de uno o m�s art�culos cient�ficos.
�Centro de Levantamientos Integrados de Recursos Naturales por Sensores Remotos (CLIRSEN) (1969). Actualizaci�n del Estudio Multitemporal de Manglares, Camaroneras y �reas Salinas en la Costa continental Ecuatoriana al a�o 1969. Quito: CLIRSEN.
�Centro de Levantamientos Integrados de Recursos Naturales por Sensores Remotos (CLIRSEN) (1984).
�Centro de Levantamientos Integrados de Recursos Naturales por Sensores Remotos (CLIRSEN) (1987).
�Centro de Levantamientos Integrados de Recursos Naturales por Sensores Remotos (CLIRSEN). (1991). Estudio multitemporal de manglares, camaroneras y �reas de salinas de la costa ecuatoriana mediante el empleo de la informaci�n de sensores remotos. Memoria T�cnica. Convenio de cooperaci�n t�cnica entre la DIGMER, PMRC, SRP y el CLIRSEN. 
�Centro de Levantamientos Integrados de Recursos Naturales por Sensores Remotos (CLIRSEN). (1995). Estudio multitemporal de manglares, camaroneras y �reas de salinas de la costa ecuatoriana, actualizado a 1995. Convenio de cooperaci�n t�cnica entre el INEFAN y el CLIRSEN. 
�Centro de Levantamientos Integrados de Recursos Naturales por Sensores Remotos (CLIRSEN). (1999). Estudio multitemporal de manglares, camaroneras y �reas de salinas de la costa ecuatoriana mediante el empleo de la informaci�n de sensores remotos. Memoria T�cnica. Convenio de cooperaci�n t�cnica entre el CLIRSEN y el PROYECTO PATRA (Proyecto de Asistencia T�cnica para la Gesti�n Ambiental). 
�Centro de Levantamientos Integrados de Recursos Naturales por Sensores Remotos (CLIRSEN). (2006). Actualizaci�n del Estudio Multitemporal de Manglares, Camaroneras y �reas Salinas en la Costa Continental Ecuatoriana. Convenio de cooperaci�n t�cnica entre el CLIRSEN y el PROGRAMA DE MANEJO DE RECURSOS COSTEROS (PMRC). 

4. M�todo de captura de los datos. Si fue un estudio realizado para obtener esos datos, si se hizo utilizando alg�n instrumento de medici�n, cual m�todo se aplic�, si se utiliz� una encuesta o formulario para recogerlos, etc
CLIRSEN, 1969: Fotograf�as a�reas pancrom�ticas 1961-1966-1967-1969. Apoyo de la cartograf�a b�sica del IGM.Nivel de estudio: semidetalle.
CLIRSEN, 1984: Im�genes por radar (noviembre 1982), fotografias a�reas pancrom�ticas (1982/1983), fotograf�as a�reas infrarrojo b/n (1984). Apoyo de la cartograf�a b�sica del Instituto Geogr�fico Militar vuelos de reconocimiento y trabajo de campo (noviembre-1984).
CLIRSEN, 1987: Fotograf�as a�reas pancrom�ticas 1986 y 1987. Imagenes LANDSAT (F/C) 1986-1987. Apoyo de la cartograf�a b�sica del Instituto Geogr�fico Militar, vuelos de reconocimiento y trabajos de campo.
CLIRSEN, 1991: Im�genes del sat�lite LANDSAT de 1990 y 1991 as� como en la cartograf�a b�sica del IGM, vuelos de reconocimiento y trabajos de campo de febrero y abril de 1991
CLIRSEN,1995: Im�genes SPOT y LANDSAT 1994-1995. Mapas de manglares, camaroneras y �reas salinas  CLIRSEN 1991. Procesamiento digital de im�genes y sistemas de informaci�n geogr�fica. Apoyo de la cartograf�a b�sica del Instituto Geogr�fico Militar y trabajos de campo 1996.
CLIRSEN, 2006: Cartograf�a b�sica del Instituto Geogr�fico Militar a escala 1:25.000 y 1:50.000. An�lisis digital e interpretaci�n visual de im�genes de sat�lite LANDSAT de Mayo-2007 (sector Golfo de Guayaquil). Ikonos de Marzo-2006  (sector Chanduy) , Ikonos de abril-2003 (sector Playas), Ikonos de abril-2003 (sector Chanduy). Cartograf�a tem�tica escala 1:25.000 de Manglares, camaroneras y �reas salinas al a�o 1999. Comprobaci�n de campo - noviembre 2007.

En esta capa de datos la tendencia se calcula de manglar en base a los datos de cobertura de manglar en km2,

El c�lculo se hace utilizand el programa en R makelayer3.R

Toda esta informaci�n est� en el link:

https://github.com/OHI-Science/gye/tree/draft/region2015/pre-proc/hab_trend_3


Para el c�lculo de la tendencia se sigue la metodolog�a descrita por Halpern et al 2012:

La tendencia se estima como la pendiente de la recta entre la variable a�os como variable independiente, y la variable cobertura o cualquier otra variable que se utilice como variable proxy o auxiliar como variable dependiente. Este valor se transforma a un valor entre -1 y 1, lo cu�l equivale a calcular el coeficiente de correlaci�n de Pearson entre la variable dependiente y la variable independiente.
Luego este valor se multiplica por 5 para estimar el cambio total de la variable en los �ltimos cinco a�os o en los a�os m�s recientes disponibles. 
Si el valor resultante es menor que -1, el valor de la tendencia ser� -1. Si el valor resultante es mayor que 1, el valor de la tendencia ser� 1. Es decir, la tendencia siempre toma valores en el intervalo [-1,1].


5. Per�odo de tiempo que cubren los datos (a�o, mes, d�a desde y a�o, mes, d�a hasta).
A�os 1969, 1984,1987,1991,1995,1999 y 2006

6. Unidad en la cual vienen los valores.
Km2

7. Significado, explicaci�n de c�mo se deben interpretar los valores.
Los datos representan la tendencia del h�bitat manglar en las provincias del Golfo de Guayaquil.

8. Observaci�n o comentario adicional sobre los datos.
N.A

9. Significado y explicaci�n de las columnas que se incluir�n en el archivo, si son diferentes de las que se especifican en OHI-ecu o si la capa de datos es nueva, creada para este estudio regional. 
En la primera columna de la capa de datos est�n los identificadores de cada regi�n. En la segunda columna est� la categor�a que en este caso corresponde a manglar. En la tercera columna est�n los valores de tendencia de manglar. La regi�n 6, Santa Elena, no tiene datos porque carece de manglar.