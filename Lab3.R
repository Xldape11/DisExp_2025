# Erik Manuel Aldape Becerra
# 2027268
# 07/04/2025

# Comparación de medias 
# Procedimeinto general para la pruebas de t independientes

Grupo <- gl(2, 12, labels = c("Fotografía", "Araña"))
Ansiedad <- c(30, 35, 45, 40, 50, 35, 55, 25, 30, 45, 40, 50, 40, 35, 50, 55, 65, 55, 50, 35, 30, 50, 60, 39)
Datos <- data.frame(Grupo, Ansiedad)
head(Datos)
shapiro.test(Datos$Ansiedad)
# Valor de P= 0.4977

bartlett.test(Datos$Ansiedad~Datos$Grupo)
# Valor de P= 0.5795

t.test(Datos$Ansiedad~Datos$Grupo, var.equal= T)
# Valor de P= 0.1068, No hay diferencias significativas 
# Medias de fotografía: 40
# Medias de gurpo de araña: 47

t.test(Datos$Ansiedad~Datos$Grupo, var.equal= T, alternative = "greater")
# El valor resultante fue: 0.9466

t.test(Datos$Ansiedad~Datos$Grupo, var.equal= T, alternative = "less")
# Valor resultante de P: 0.05342 

boxplot(Datos$Ansiedad~Datos$Grupo,
        col= "blue",
        xlab= "Grupo",
        ylab= "Nivel de ansiedad")