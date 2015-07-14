fis_b_bmsy: Máximo rendimiento sostenible

1. Institución recolectora original (cuál institución hizo la recolección de los datos de su fuente).
Pesca: Instituto Nacional de Pesca (INP)

2. Institución que provee los datos a este proyecto (si es distinta de la recolectora).
Asociación Consulsua-Biótica

3. Citas detalladas de la fuente, si se trata de uno o más artículos científicos.
Estos valores de obtienen a partir del modelo de captura-MSY (Máximo Rendimiento Sostenible) de Martin, S. y Froese , R.(2013): A simple method for estimating MSY from catch and resilience, Fish and Fisheries, Volume 14, Issue 4, pages 504–514, December 2013

4. Método de captura de los datos. Si fue un estudio realizado para obtener esos datos, si se hizo utilizando algún instrumento de medición, cuál método se aplicó, si se utilizó una encuesta o formulario para recogerlos, etc.
El código original en lenguaje R para este cálculo se encuentra disponible en el sitio Web:
 http://www.?shbase.de/rfroese/
Este trabajo presenta un método para el cálculo del Máximo Rendimiento Sostenible (MSY) a partir de los datos de captura y resiliencia de distintas especies. Para la aplicación de la metodología es necesario disponer de una serie de tiempo de capturas para cada especie analizada. El modelo estima los parámetros k (capacidad de carga) y r (tasa máxima de crecimiento) para un determinado stock en un ecosistema dado.
Una versión actualizada de la metodología está disponible de los investigadores del National Center for Ecological Analysis and Synthesis (NCEAS) de la Universidad de California en Santa Bárbara. A partir de esta metodología se dispone de un código en lenguaje R, provistos por las investigadoras Katie Longo y Melanie Frazier el cual fue utilizado para el cálculo de esta capa de datos.

5. Período de tiempo que cubren los datos (año desde y año hasta). O enumeración de años si no son consecutivos.
1945-2014 (depende de la especie)

6. Unidad en la cual vienen los valores.
Puntuación

7. Significado o explicación de qué significan los valores.
La capa de datos fis_b_bmsy es el cociente entre la abundancia de la población comparada con la abundancia requerida para la producción del Máximo Rendimiento Sostenible. 

8. Observación o comentario sobre los datos.
Antes del desarrollo del cálculo se tuvo que generar un archivo de entrada en base a los datos de captura. Los datos son presentados como una distribución a priori menos restrictiva o  relaxed restrictiva (relaxed priors). Esta metodología se aplica cuando hay valores muy bajo o muy altos de b_bmsy. 
El modelo esta predeterminado para no realizar el cálculo de máximo rendimiento sostenible para todas las especies.

9. Significado y explicación de las columnas que se incluyen en el archivos, solo si son diferentes de las que se especifican en la aplicación OHI-ecu o si la capa de datos es nueva, creada ad hoc para este estudio regional. 
Los valores de máximo rendimiento sostenible para el Golfo de Guayaquil oscilan entre 0,0156 (abundancia requerida mayor a la producción del máximo rendimiento sostenible) y 1,9921 (abundancia requerida menor a la producción del máximo rendimiento sostenible).
