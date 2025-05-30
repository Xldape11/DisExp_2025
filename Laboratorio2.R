#Erik Manuel Aldape Becerra
# 2027268
# 31/03/2025

#La funcion read.csv sirve para importar datos
trees <- read.csv("Base_datos.csv", header = T)

#La funcion as.factor sirve para convertir caracteres a factores
trees$Species <-as.factor(trees$Species)
trees$Crown.class <- as.factor(trees$Crown.class)

#Gráfica
boxplot(trees$Diameter ~ trees$Species,
        xlab = "Especies", #Etiqueta del eje x
        ylab = "Dbh (cm)", #Etiqueta del eje y
        col = "blue", #Color de las cajas
        main = "Inventario", #Titulo de gráfica
        ylim = c(5,25)) #Ampliar limites eje y 

#Gráfica de altura 
boxplot(trees$Total ~ trees$Species,
        xlab = "Especies",
        ylab = "Altura (m)",
        col = "lightblue",
        main = "Inventario",
        ylim = c(5,25))

#Histograma de altura
hist(trees$Total,
     xlab = "Altura (m)",
     ylab = "Frecuencia",
     main = "Categorias de altura",
     col = "lightpink")

#Hoja y tallo
stem(trees$Total)
