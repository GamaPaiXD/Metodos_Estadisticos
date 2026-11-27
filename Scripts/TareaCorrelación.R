#Ejercicio 1
speed <- c(2, 3, 5, 9, 14, 24, 29, 34)
abundance <- c(6, 3, 5, 23, 16, 12, 48, 43)
plot (speed, abundance,
      xlab = "Velocidad de arroyo",
      ylab = "Abundancia de efímeras",
      main = "Relación entre velocidad y abundancia",
      pch = 20, col = "purple")
cor.test(speed,abundance)
#Se encontro una correlacion positiva entre la velocidad de la corriente y la abundancia de efímeras. Debido a que el valor de p es menor que 0.05, la correlación es estadísticamente significativa. Por lo tanto se rechaza la hipótesis nula y se considera que existe evidencia de una realación positiva entre ambas variables.

#Ejercicio 2
suelo <- read.csv("suelo.csv", header = TRUE)
head(suelo)
str(suelo)
variables <- suelo[c("pH", "N", "Dens", "P", "Ca", "Mg", "K", "Na")]
cor.test(variables$pH, variables$N)
cor.test(variables$pH, variables$Dens)
cor.test(variables$pH, variables$P)
cor.test(variables$pH, variables$Ca)
cor.test(variables$pH, variables$Mg)
cor.test(variables$pH, variables$K)
cor.test(variables$pH, variables$Na)

#Ejercicio 3
anscombe
cor.test(anscombe$x1, anscombe$y1)
cor.test(anscombe$x2, anscombe$y2)
cor.test(anscombe$x3, anscombe$y3)
cor.test(anscombe$x4, anscombe$y4)
#Gráfica de los datos
par(mfrow = c(2,2)) #Configurar gráfica 2x2

plot(anscombe$x1, anscombe$y1, col = "red",
     main = "Conjunto 1", pch = 20,
     abline(lm(y1 ~ x1, data = anscombe), col = "blue", lwd = 2))

plot(anscombe$x2, anscombe$y2, col = "green",
     main = "Conjunto 2", pch = 20,
     abline(lm(y2 ~ x2, data = anscombe), col = "red", lwd = 2))

plot(anscombe$x3, anscombe$y3, col = "blue",
     main = "Conjunto 3", pch = 20,
     abline(lm(y3 ~ x3, data = anscombe), col = "green", lwd = 2))

plot(anscombe$x4, anscombe$y4, col = "purple",
     main = "Conjunto 4", pch = 20,
     abline(lm(y4 ~ x4, data = anscombe), col = "lightblue", lwd = 2))

par(mfrow = c(1,1)) #Volver a la normalidad