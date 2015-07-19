capa: hab_trend

1. Institución recolectora original (cuál institución que hizo la recolección de los datos de su fuente).
Instituto Geográfico Militar (IGM), Cartografía Básica.

Instituto Oceanográfico de la Armada (INOCAR), Cartas Náuticas, Línea de Batimetría IOA.

Secretaria Técnica del Mar, Área de estudio.

Instituto Nacional de Estadísticas y Censos (INEC), División Política. 

CLIRSEN - Centro de Levantamientos Integrados de Recursos Naturales (entidad pública que en el año 2012 fue absorbida por el Instituto Espacial Ecuatoriano, IEE)

2. Institución que provee los datos a este proyecto (si es distinta de la recolectora).
Consulsua - Biótica

3. Citas detalladas de la fuente, si se trata de uno o más artículos científicos.
•Centro de Levantamientos Integrados de Recursos Naturales por Sensores Remotos (CLIRSEN) (1969). Actualización del Estudio Multitemporal de Manglares, Camaroneras y Áreas Salinas en la Costa continental Ecuatoriana al año 1969. Quito: CLIRSEN.
•Centro de Levantamientos Integrados de Recursos Naturales por Sensores Remotos (CLIRSEN) (1984).
•Centro de Levantamientos Integrados de Recursos Naturales por Sensores Remotos (CLIRSEN) (1987).
•Centro de Levantamientos Integrados de Recursos Naturales por Sensores Remotos (CLIRSEN). (1991). Estudio multitemporal de manglares, camaroneras y áreas de salinas de la costa ecuatoriana mediante el empleo de la información de sensores remotos. Memoria Técnica. Convenio de cooperación técnica entre la DIGMER, PMRC, SRP y el CLIRSEN. 
•Centro de Levantamientos Integrados de Recursos Naturales por Sensores Remotos (CLIRSEN). (1995). Estudio multitemporal de manglares, camaroneras y áreas de salinas de la costa ecuatoriana, actualizado a 1995. Convenio de cooperación técnica entre el INEFAN y el CLIRSEN. 
•Centro de Levantamientos Integrados de Recursos Naturales por Sensores Remotos (CLIRSEN). (1999). Estudio multitemporal de manglares, camaroneras y áreas de salinas de la costa ecuatoriana mediante el empleo de la información de sensores remotos. Memoria Técnica. Convenio de cooperación técnica entre el CLIRSEN y el PROYECTO PATRA (Proyecto de Asistencia Técnica para la Gestión Ambiental). 
•Centro de Levantamientos Integrados de Recursos Naturales por Sensores Remotos (CLIRSEN). (2006). Actualización del Estudio Multitemporal de Manglares, Camaroneras y Áreas Salinas en la Costa Continental Ecuatoriana. Convenio de cooperación técnica entre el CLIRSEN y el PROGRAMA DE MANEJO DE RECURSOS COSTEROS (PMRC). 

4. Método de captura de los datos. Si fue un estudio realizado para obtener esos datos, si se hizo utilizando algún instrumento de medición, cual método se aplicó, si se utilizó una encuesta o formulario para recogerlos, etc
CLIRSEN, 1969: Fotografías aéreas pancromáticas 1961-1966-1967-1969. Apoyo de la cartografía básica del IGM.Nivel de estudio: semidetalle.
CLIRSEN, 1984: Imágenes por radar (noviembre 1982), fotografias aéreas pancromáticas (1982/1983), fotografías aéreas infrarrojo b/n (1984). Apoyo de la cartografía básica del Instituto Geográfico Militar vuelos de reconocimiento y trabajo de campo (noviembre-1984).
CLIRSEN, 1987: Fotografías aéreas pancromáticas 1986 y 1987. Imagenes LANDSAT (F/C) 1986-1987. Apoyo de la cartografía básica del Instituto Geográfico Militar, vuelos de reconocimiento y trabajos de campo.
CLIRSEN, 1991: Imágenes del satélite LANDSAT de 1990 y 1991 así como en la cartografía básica del IGM, vuelos de reconocimiento y trabajos de campo de febrero y abril de 1991
CLIRSEN,1995: Imágenes SPOT y LANDSAT 1994-1995. Mapas de manglares, camaroneras y áreas salinas  CLIRSEN 1991. Procesamiento digital de imágenes y sistemas de información geográfica. Apoyo de la cartografía básica del Instituto Geográfico Militar y trabajos de campo 1996.
CLIRSEN, 2006: Cartografía básica del Instituto Geográfico Militar a escala 1:25.000 y 1:50.000. Análisis digital e interpretación visual de imágenes de satélite LANDSAT de Mayo-2007 (sector Golfo de Guayaquil). Ikonos de Marzo-2006  (sector Chanduy) , Ikonos de abril-2003 (sector Playas), Ikonos de abril-2003 (sector Chanduy). Cartografía temática escala 1:25.000 de Manglares, camaroneras y áreas salinas al año 1999. Comprobación de campo - noviembre 2007.

En esta capa de datos la tendencia se calcula de manglar en base a los datos de cobertura de manglar en km2,

El cálculo se hace utilizand el programa en R makelayer3.R

Toda esta información está en el link:

https://github.com/OHI-Science/gye/tree/draft/region2015/pre-proc/hab_trend_3


Para el cálculo de la tendencia se sigue la metodología descrita por Halpern et al 2012:

La tendencia se estima como la pendiente de la recta entre la variable años como variable independiente, y la variable cobertura o cualquier otra variable que se utilice como variable proxy o auxiliar como variable dependiente. Este valor se transforma a un valor entre -1 y 1, lo cuál equivale a calcular el coeficiente de correlación de Pearson entre la variable dependiente y la variable independiente.
Luego este valor se multiplica por 5 para estimar el cambio total de la variable en los últimos cinco años o en los años más recientes disponibles. 
Si el valor resultante es menor que -1, el valor de la tendencia será -1. Si el valor resultante es mayor que 1, el valor de la tendencia será 1. Es decir, la tendencia siempre toma valores en el intervalo [-1,1].


5. Período de tiempo que cubren los datos (año, mes, día desde y año, mes, día hasta).
Años 1969, 1984,1987,1991,1995,1999 y 2006

6. Unidad en la cual vienen los valores.
Km2

7. Significado, explicación de cómo se deben interpretar los valores.
Los datos representan la tendencia del hábitat manglar en las provincias del Golfo de Guayaquil.

8. Observación o comentario adicional sobre los datos.
N.A

9. Significado y explicación de las columnas que se incluirán en el archivo, si son diferentes de las que se especifican en OHI-ecu o si la capa de datos es nueva, creada para este estudio regional. 
En la primera columna de la capa de datos están los identificadores de cada región. En la segunda columna está la categoría que en este caso corresponde a manglar. En la tercera columna están los valores de tendencia de manglar. La región 6, Santa Elena, no tiene datos porque carece de manglar.