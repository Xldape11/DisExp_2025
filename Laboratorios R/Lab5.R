# Erik Manuel Aldape Becerra
# 2027268
# 09/04/2025

# Pueba de t dependiente

datos <-read.csv("DatosLab5.csv", header = T)
datos$Tiempo <- as.factor(datos$Tiempo)

boxplot(datos$Kgsem ~ datos$Tiempo,
        xlab = "Periodo de colecta",
        ylab = "Peso semillas (kg)",
        col = "lightgreen")

tapply(datos$Kgsem, datos$Tiempo, mean)
datos <- datos[order(datos$Tiempo), ]

# Separación de los valores
t2012 <- datos$Kgsem[datos$Tiempo == "T2012"]
t2013 <- datos$Kgsem[datos$Tiempo == "T2013"]

# Verificación del mismo largo
length(t2012)  # debe ser 50
length(t2013)  # debe ser 50

# Prueba t pareada
t.test(t2012, t2013, paired = TRUE)
