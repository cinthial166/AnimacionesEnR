# AnimacionesEnR
Se crearán animaciones utilizando R y ggplot

"Quiero agregar algo más"

rm(list=ls())
library (ggplot2)
library (gapminder)

#asignar a la variable datos la tabla de gapminder
datos <- gapminder

#crear grafico
grafico <- ggplot(datos,aes,(x=gdpPercap,y=lifeExp,colour=continent)) + geom_point()

#mostrar grafico
grafico
