fis_b_bmsy: M�ximo rendimiento sostenible

1. Instituci�n recolectora original (cu�l instituci�n hizo la recolecci�n de los datos de su fuente).
Pesca: Instituto Nacional de Pesca (INP)

2. Instituci�n que provee los datos a este proyecto (si es distinta de la recolectora).
Asociaci�n Consulsua-Bi�tica

3. Citas detalladas de la fuente, si se trata de uno o m�s art�culos cient�ficos.
Estos valores de obtienen a partir del modelo de captura-MSY (M�ximo Rendimiento Sostenible) de Martin, S. y Froese , R.(2013): A simple method for estimating MSY from catch and resilience, Fish and Fisheries, Volume 14, Issue 4, pages 504�514, December 2013

4. M�todo de captura de los datos. Si fue un estudio realizado para obtener esos datos, si se hizo utilizando alg�n instrumento de medici�n, cu�l m�todo se aplic�, si se utiliz� una encuesta o formulario para recogerlos, etc.
El c�digo original en lenguaje R para este c�lculo se encuentra disponible en el sitio Web:
 http://www.?shbase.de/rfroese/
Este trabajo presenta un m�todo para el c�lculo del M�ximo Rendimiento Sostenible (MSY) a partir de los datos de captura y resiliencia de distintas especies. Para la aplicaci�n de la metodolog�a es necesario disponer de una serie de tiempo de capturas para cada especie analizada. El modelo estima los par�metros k (capacidad de carga) y r (tasa m�xima de crecimiento) para un determinado stock en un ecosistema dado.
Una versi�n actualizada de la metodolog�a est� disponible de los investigadores del National Center for Ecological Analysis and Synthesis (NCEAS) de la Universidad de California en Santa B�rbara. A partir de esta metodolog�a se dispone de un c�digo en lenguaje R, provistos por las investigadoras Katie Longo y Melanie Frazier el cual fue utilizado para el c�lculo de esta capa de datos.

5. Per�odo de tiempo que cubren los datos (a�o desde y a�o hasta). O enumeraci�n de a�os si no son consecutivos.
1945-2014 (depende de la especie)

6. Unidad en la cual vienen los valores.
Puntuaci�n

7. Significado o explicaci�n de qu� significan los valores.
La capa de datos fis_b_bmsy es el cociente entre la abundancia de la poblaci�n comparada con la abundancia requerida para la producci�n del M�ximo Rendimiento Sostenible. 

8. Observaci�n o comentario sobre los datos.
Antes del desarrollo del c�lculo se tuvo que generar un archivo de entrada en base a los datos de captura. Los datos son presentados como una distribuci�n a priori menos restrictiva o  relaxed restrictiva (relaxed priors). Esta metodolog�a se aplica cuando hay valores muy bajo o muy altos de b_bmsy. 
El modelo esta predeterminado para no realizar el c�lculo de m�ximo rendimiento sostenible para todas las especies.

9. Significado y explicaci�n de las columnas que se incluyen en el archivos, solo si son diferentes de las que se especifican en la aplicaci�n OHI-ecu o si la capa de datos es nueva, creada ad hoc para este estudio regional.�
Los valores de m�ximo rendimiento sostenible para el Golfo de Guayaquil oscilan entre 0,0156 (abundancia requerida mayor a la producci�n del m�ximo rendimiento sostenible) y 1,9921 (abundancia requerida menor a la producci�n del m�ximo rendimiento sostenible).
