# Erik Manuel Aldape Becerra 
# 2027268
# 09/04/2025

# Comparación de medianas del ejercicio número 2
# Prueba de T de una muestra
# Ho= La media del peso neto de los costales es de 80kg
# Hi= La media del peso neto de los costales es menor a 80kg

costal <- c(87.7, 80.01, 77.28, 78.76, 81.52, 74.4, 80.71, 79.5, 77.87, 81.94, 80.7,
            82.32, 75.78, 80.19, 83.91, 79.4, 77.52, 77.62, 81.4, 74.89, 82.95,
            73.59, 77.92, 77.18, 79.83, 81.23, 79.28, 78.44, 79.01, 80.47, 76.23,
            78.89, 77.14, 69.94, 78.54, 79.7, 82.45, 77.29, 75.52, 77.21, 75.99,
            81.94, 80.41, 77.77)
mean(costal)


# Length = amplitud de los datos
length(costal)


shapiro.test(costal)


boxplot(costal)

# Fivenum = mostrar valores de los cuartiles
fivenum(costal)


# El siguiente codigo es para La prueba de t de una sola muestra 
# mu = La media de referencia
t.test(costal, mu= 80)
