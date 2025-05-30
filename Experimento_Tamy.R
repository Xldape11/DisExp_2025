# Erik Manuel Aldape Becerra
# 2027268
# 21/05/2025
# Experimento Tamy 
Internet <- read.csv("Internet.csv", header = T)
Internet$tiempo <- as.factor(Internet$tiempo)
boxplot(Internet$velocidad ~ Internet$tiempo)
tapply(Internet$velocidad, Internet$tiempo, mean)
tapply(Internet$velocidad, Internet$tiempo, var)
shapiro.test(Internet$velocidad)
bartlett.test(Internet$velocidad ~ Internet$tiempo)
Internet$Vel.sqrt <-sqrt (Internet$velocidad)
shapiro.test(Internet$Vel.sqrt)
int.aov <- aov (Internet$Vel.sqrt ~ Internet$tiempo)
summary (int.aov)
