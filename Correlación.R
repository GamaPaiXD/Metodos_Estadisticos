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

#Regresión lineal
#Función lm

gylm <- lm(erupciones$eruptions ~ erupciones$waiting)
summary (gylm)

#Graficar la linea de tendencia cetral
#Función abline

plot(erupciones$waiting, erupciones$eruptions,
     xlab = "Tiempo de espera (min)",
     ylab = "Duración de la erupción (min)",
     pch = 20, col = "purple")
abline(gylm, lw =2)

#Ampliar mis datos originales con Yprima y aplicación del modelo
erupciones$yprima <- gylm$fitted.values
erupciones$modelo <- -1.874016 + 0.075628*erupciones$waiting
erupciones$residual <- gylm$residuals

#Determinar que la suma de residuales = 0
sum(erupciones$residual)

determinar <- c(62, 75, 81)
modelo <- lm(determinar ~ 1)
summary(modelo)
erupciones
