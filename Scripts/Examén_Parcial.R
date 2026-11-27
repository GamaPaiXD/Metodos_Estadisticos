#Examen
#Pregunta 6
Datos1 <- c(1.2, 1.5, 1.7, 1.8)
summary(Datos1)
var(Datos1)
sd(Datos1)
Datos2 <- c(1.2, 1.5, 1.7, 1.8, 4.8)
summary(Datos2)
var(Datos2)
sd(Datos2)

#Segunda parte
anillos <- data.frame(
  Arbol = 1:40,
  RW = c(1.42, 1.58, 1.71, 1.63, 1.85, 1.94, 2.06, 1.76, 1.68, 1.89, 2.14, 1.53, 1.79, 1.97, 2.23, 1.61, 1.82, 2.08, 1.73, 1.87, 1.91, 2.04, 1.76, 1.83, 2.12, 1.69, 1.57, 1.88, 2.21, 1.95, 1.74, 1.81, 2.09, 1.66, 1.92, 2.17, 1.72, 1.86, 2.02, 3.48))
summary(anillos)
sd(anillos$RW)
var(anillos$RW)
range(anillos$RW)
cv <- sd(anillos$RW)/mean(anillos$RW)*100
cv
boxplot(anillos$RW, horizontal= TRUE,
        xlab = "Ancho de anillo (mm)",
        col = "purple")
hist(anillos$RW,
     xlab = "Ancho de anillo (mm)",
     col = "purple",
     border = "white")

#Fernando Gamaliel Coronado Bazaldúa