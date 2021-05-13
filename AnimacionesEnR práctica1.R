
rm(list=ls()) #borrar todas las variables existentes (en el cuadro superior derecho)
library (ggplot2)#cargar librería para graficar
library (gapminder) #cargar librería para datos de pib y esperanza de vida

#asignar a la variable datos la tabla de gapminder
datos <- gapminder

#crear gráfico ggplot(datos, variables a usar para el gráfico; los títulos de los ejes aparecen por defecto), el geom_ es para indicar si es de barras, líneas, puntos, etc.
grafico <- ggplot(datos, aes(x=gdpPercap, y=lifeExp, colour=continent)) + geom_point(aes(size=pop))

#mostrar gráfico
grafico

