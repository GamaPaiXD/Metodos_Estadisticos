
costal <- c(87.7, 80.01, 77.28, 78.76, 81.52, 74.2, 80.71, 79.5, 77.87, 81.94,
            80.7, 82.32, 75.78, 80.19, 83.91, 79.4, 77.52, 77.62, 81.4, 74.89,
            82.95, 73.59, 77.92, 77.18, 79.83, 81.23, 79.28, 78.44, 79.01,
            80.47, 76.23, 78.89, 77.14, 69.94, 78.54, 79.7, 82.45, 77.29,
            75.52, 77.21, 75.99, 81.94, 80.41, 77.7)

#H0 = es al que nos dice que no hay cambios, en otras palabras que los costales tienen un peso = 80.
#H1 = todas las pruebas estadisticas nos dan suficientes pruebas para rechazar H0, en otras palabras el peso es < 80.

#Se usara la prueba de una cola ya que buscamos saber si la la prueba sufre un cambio deficiente, es decir, que sea menor, si quisieramos usar una prueba de 2 colas seria solo para saber si hay un cambio, ya sea menor o mayor.

#media.
media <- mean(costal)
media
#desviación estandar.
desviación <- sd(costal)
desviación

#prueba de una cola.
t.test(costal, mu = 80, alternative = "less")

#Estadístico t: -2.3644.
#Grados de libertad: 43.
#Valor de p: 0.0113.
#Media observada: 78.91kg.

#Comparar valopr de p con a: 0.0113 < 0.05.

#Se rechaza H0 porque el valor de p es menor que 0.05.

#Conclusión: con el valor de p podemos rechazar la hipótesis nula ya que este mostro menor valor que a. Dandanos suficientes pruebas estadisticas para afirmar que el peso neto en los costales no es el establecido.

