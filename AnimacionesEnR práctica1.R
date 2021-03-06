
rm(list=ls()) #borrar todas las variables existentes (en el cuadro superior derecho)
library (ggplot2)#cargar librer�a para graficar
library (gapminder) #cargar librer�a para datos de pib y esperanza de vida

#asignar a la variable datos la tabla de gapminder
datos <- gapminder

#crear gr�fico ggplot(datos, variables a usar para el gr�fico; los t�tulos de los ejes aparecen por defecto), el geom_ es para indicar si es de barras, l�neas, puntos, etc.
grafico <- ggplot(datos, aes(x=gdpPercap, y=lifeExp, colour=continent)) +
                  geom_point(aes(size=pop),alpha=0.8) +  #de acuerdo a los datos de la columna population es el tama�o de los puntos; alpha es para que los puntos sean un poco transparentes
                  theme_minimal() + theme(legend.position="bottom") + #theme_minimal para quitar el fondo color amarillo y quede blanco ("minimalista")
                  guides(size="none") + labs(x="PIB per c�pita", y="Esperanza de vida",col="")

#mostrar gr�fico
grafico

#cargar librer�as para animar la gr�fica
library(gganimate)
library(gifski)

grafico <- grafico + 
          transition_time(year) + # gganimate me permite usar esta herramienta
          labs(title="A�o:{frame_time}")

#para guardar solo el gif en la carpeta
animate(grafico,renderer = gifski_renderer("animacion.gif"))
setwd("C:/Users/cinth/Documents/Bloque. Ciencia de datos para toma de decisiones\AnimacionesEnR)
