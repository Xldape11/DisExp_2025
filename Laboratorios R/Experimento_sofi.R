crec <- read.csv("Data/datos.lentejas.csv", header = T)
crec$SUSTRATO <- as.factor (crec$SUSTRATO)
boxplot(crec$CRECIMIENTO~crec$SUSTRATO,
        xlab = "sustrato",
        ylab = "crecimiento")
tapply (crec$CRECIMIENTO, crec$SUSTRATO, mean)
tapply (crec$CRECIMIENTO, crec$SUSTRATO,var)
shapiro.test (crec$CRECIMIENTO)
bartlett.test(crec$CRECIMIENTO~crec$SUSTRATO)
crec.aov <- aov(crec$CRECIMIENTO~crec$SUSTRATO)
summary(crec.aov)
TukeyHSD(crec.aov)
plot(TukeyHSD(crec.aov))
tapply(crec$CRECIMIENTO, crec$SUSTRATO, length)
