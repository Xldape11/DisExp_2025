#Erik Manuel Aldape Becerra
# 2027268
# 07/05/2025

# Importar datos de internet
ur1 <- "https://raw.githubusercontent.com/mgtagle/Exp_Met_Est_AD2023/refs/heads/main/Scripts/localidades.csv"


Datos <- read.csv(ur1, header = T)
Datos$Paraje <- as.factor(Datos$Paraje)

boxplot(Datos$DAP ~ Datos$Paraje,
        col = "green",
        xlab = "Localidades",
        ylab = "DAP (CM)")

tapply(Datos$DAP, Datos$Paraje, mean)
tapply(Datos$DAP, Datos$Paraje, var)

shapiro.test(Datos$DAP)
bartlett.test(Datos$DAP ~ Datos$Paraje)

Datos$tlog <- log10(Datos$DAP+1)

shapiro.test(Datos$tlog)

Datos$tsqrt <- sqrt(Datos$DAP)
shapiro.test(Datos$tsqrt)
bartlett.test(Datos$tsqrt ~ Datos$Paraje)

boxplot(Datos$tsqrt ~ Datos$Paraje,
        col = "blue",
        xlab = "Localidad",
        ylab = "DAP (cm)")

# Iniciar con el AOV
par.aov <- aov(Datos$tsqrt ~ Datos$Paraje)
summary(par.aov)

TukeyHSD(par.aov)
plot(TukeyHSD(par.aov))
