#Tarea 08/10/2026

#Ejercicio 1

erupciones <- read.csv("erupciones.csv", header = TRUE)
plot(erupciones$waiting, erupciones$eruptions,
     xlab = "Tiempo de espera (min)",
     ylab = "Duración de la erupción (min)",
     pch = 20, col = "purple")

summary(erupciones)
sd(erupciones$eruptions)
sd(erupciones$waiting)
var(erupciones$eruptions)
var(erupciones$waiting)
cor.test(erupciones$eruptions, erupciones$waiting)
erulm <- lm(erupciones$eruptions ~ erupciones$waiting)
summary (erulm)
(-1.874016+0.075628*x1)
(-1.874016+0.075628*x2)
(-1.874016+0.075628*x3)
(-1.874016+0.075628*x4)
(-1.874016+0.075628*x5)

#Media: eruption 3.488, waiting 70.9.
#Desviación estándar: eruption 1.141371, waiting 13.59497.
#Varianza: eruption 1.302728, waiting 184.8233.
#R: 0.9008112.
#Al ser el valor de p muy cercano a 0 nos dice que la correlación si es significativa.
#Hipótesis nula: El tiempo de espera no influye ni predice la duración de la erupción.
#Hipótesis alternativa: El tiempo si influye y predice la duración de la erupción.
#Intercepto (α): -1.874016
#Pendiente (β): 0.075628
#Análisis: Con todo lo que llevamos nos damos cuenta que el valor de p es un número muy pequeño, se acerca tanto al cero que podria considerarse a si, esto nos dice que la correlación es muy significativa.
#¿Son significativas las regresoras: intercepto (α) y lapendiente (β)?: Si, ambas presentan un valor muy cercano a cero 
#Es significativa la regresión: Si 
#¿Cuál será la duración en minutos de la proxima erupción, si los tiempos de espera son los dados en el siguiente cuadro?

x1 <- c(80) #4.176224
x2 <- c(40) #1.151104
x3 <- c(45) #1.529244
x4 <- c(53) #2.134268
x5 <- c(61) #2.739292

#Ejercicio 2

pinus <- read.csv("datos_control_Rascon.csv", header = TRUE)
plot(pinus$DAP, pinus$EDAD,
     xlab = "Diámetro a la altura de pecho (DAP)",
     ylab = "Edad (años)",
     pch = 20, col = "purple")

cor.test(pinus$DAP, pinus$EDAD)
pilm <- lm(pinus$DAP ~ pinus$EDAD)
summary (pilm)
(10.74671+0.26013*DAP1)
(10.74671+0.26013*DAP2)
(10.74671+0.26013*DAP3)
(10.74671+0.26013*DAP4)
(10.74671+0.26013*DAP5)

#Hipótesis nula: El paso de los años no sugiere un aumento del DAP..
#Hipótesis alternativa: Los años si influyen en el creciiento del DAP.
#Intercepto (α): 10.74671
#Pendiente (β): 0.26013
#Análisis: Analizando los datos que obtenemos podemos confirmar que la regresión es altamente significativo, los valores que obtenemos de p lo confirman.
#¿Son significativas las regresoras: intercepto (α) y la pendiente (β)?: Si, ambas presentan un valor muy cercano a cero 
#Es significativa la regresión: Si 
#¿Cuál será la edad en años si los DAP estan dados en el siguiente cuadro?

DAP1 <- c(12) #13.86827
DAP2 <- c(20) #15.94931
DAP3 <- c(26) #17.51009
DAP4 <- c(34) #19.59113
DAP5 <- c(45) #22.45256


