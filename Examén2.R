#Examén 2 14/10/26

#Ejercicio 1


AFres <- c(2.45, 1.98, 3.12, 2.67, 1.85, 2.90, 3.35, 2.20, 2.76, 2.58)
ACal <- c(2.51, 1.90, 3.20, 2.55, 1.92, 2.84, 3.41, 2.12, 2.70, 2.66)
Temperatura <- c(AFres = TRUE, ACal = TRUE)
Anillos <- c(AFres, ACal)
summary(AFres)
summary(ACal)
sd(AFres)
sd(ACal)
diferencia <- c(AFres - ACal)
diferencia
mean(diferencia)
t.test(AFres, ACal)
cor.test(AFres, ACal)

#Ejercicio 2


AFres2 <- c(2.45, 1.98, 3.12, 2.67, 1.85, 2.90, 3.35, 2.20, 2.76, 2.58)
ACal2 <- c(2.10, 1.82, 2.64, 2.48, 1.70, 2.41, 2.95, 2.15, 2.30, 2.35)
Temperatura <- c(AFres2 = TRUE, ACal2 = TRUE)
Anillos <- c(AFres2, ACal2)
summary(AFres2)
summary(ACal2)
sd(AFres2)
sd(ACal2)
Diferencia <- c(AFres2 - ACal2)
Diferencia
mean(Diferencia)
t.test(AFres2, ACal2)
cor.test(AFres2, ACal2)
