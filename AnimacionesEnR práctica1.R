
rm(list=ls()) #borrar todas las variables existentes (en el cuadro superior derecho)
library (ggplot2)#cargar librería para graficar
library (gapminder) #cargar librería para datos de pib y esperanza de vida

#asignar a la variable datos la tabla de gapminder
datos <- gapminder

#crear gráfico ggplot(datos, variables a usar para el gráfico; los títulos de los ejes aparecen por defecto), el geom_ es para indicar si es de barras, líneas, puntos, etc.
grafico <- ggplot(datos, aes(x=gdpPercap, y=lifeExp, colour=continent)) 
                  + geom_point(aes(size=pop),alpha=0.8) +  #de acuerdo a los datos de la columna population es el tamaño de los puntos; alpha es para que los puntos sean un poco transparentes
                    theme_minimal() + theme(legend.position="bottom") #theme_minimal para quitar el fondo color amarillo y quede blanco ("minimalista")
                  + guides(size="none") + labs(x="PIB per cápita", y="Esperanza de vida",col="")

#mostrar gráfico
grafico

#cargar librerías para animar la gráfica
library(gganimate)
library(gifski)

grafico <- grafico + 
          transition_time(year) + # gganimate me permite usar esta herramienta
          labs(title="Año:{frame_time}")

grafico

