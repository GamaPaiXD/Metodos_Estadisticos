#Coreelación
#Importar daros de altura y diámetro

erupciones <- faithful

#Crear gráfico base para revisar el comportamiento de las dos variables numéricas

plot(erupciones$waiting, erupciones$eruptions,
     xlab = "Tiempo de espera (min)",
     ylab = "Duración de la erupción (min)",
     pch = 20, col = "purple")

#Conocer el rango de tiempo
range(erupciones$waiting)

#Conocer el rango de erupción
range(erupciones$eruptions)

boxplot(erupciones$eruptions,
        col = "purple")
fivenum(erupciones$eruptions)
cor.test(erupciones$eruptions, erupciones$waiting)

