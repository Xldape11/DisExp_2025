# Erik Manuel Aldape Becerra
# 2027268
# 30/05/2025

## Examen final

# Importar datos de internet
ur1 <- "https://stat.ethx.ch/R-devel/library/datasets/html/InsectSprays.html"

data("InsectSprays")
head(InsectSprays)

tapply(InsectSprays$count, InsectSprays$spray, length)

boxplot(InsectSprays$count ~ InsectSprays$spray,
        main = "Conteo de insectos por tipo spray",
        col = "green",
        xlab = "Spray",
        ylab = "Contenido de insectos")

tapply(InsectSprays$count, InsectSprays$spray, mean )
tapply(InsectSprays$count, InsectSprays$spray, var)

shapiro.test(InsectSprays$count)

bartlett.test(count ~ spray, data = InsectSprays)