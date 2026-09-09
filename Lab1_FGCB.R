#Parte I Variables

# Gastos totales
300 + 240 + 1527 + 400 + 1500 + 1833

celular <- 300
transporte <- 240
comestibles <- 1527
gimnasio <- 400
alquiler <- 1500
otros <- 1833
total <- 5800

#Gastos en 5 meses
total*5
gasto5mes <- 29000

#Gastos en 10 meses
gasto5mes*2
gasto10mes <- 58000

#R distingue mayúsculas y minúsculas
celular<-300
Celular<--300
CELULAR<-8000
celular + Celular
CELULAR - celular

#Crear vector
gastos <- c(celular, transporte, comestibles, gimnasio, alquiler, otros)
nombres <- c("celular", "transporte", "comestibles", "gimnasio", "alquiler", "otros")

#Gráfica
barplot (gastos,
         names.arg = nombres,
         xlab = "Gastos",
         ylab = "MXN",
         col = "purple",
         main = "Gastos del mes")

#Utilizar sort()
gastos_ordenados <- sort(gastos)
names(gastos) <- c("celular", "transporte", "comestibles", "gimnasio", "alquiler", "otros")
gastos_ordenados <- sort(gastos)
barplot (gastos_ordenados,
         names.arg = names(gastos_ordenados),
         xlab = "Gastos",
         ylab = "MXN",
         col = "purple",
         main = "Gastos del mes")

#Parte II Variables
##Nombre de estudiante. - Cualitativa
##Fecha de nacimiento (p. Ej., 21/10/1995). - Cualitativa
##Edad (en años). - Cuantitativa
##Dirección de casa (por ejemplo, 1234 Ave. Alamo). - Cualitativa
##Grado de año universitario: primer año, segundo año, tercer año, último año. - Cualitativa
##Calificación general: A, B, C, D, F. - Cualitativa
##Tiempo (en minutos) para completar el examen final. - Cuantitativa
##Numero de hermanos. - Cuantitativa