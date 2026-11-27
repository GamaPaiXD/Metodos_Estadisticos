# ==============================================================================
# Asignación 6: Regresión lineal
# Ejercicio 1. Relación entre el diámetro (DAP) y la edad en Pinus arizonica
# ------------------------------------------------------------------------------
# Nombre del alumno: Fernando Gamaliel Coronado Bazaldúa
# Matrícula: 2129213
# Fecha: 21/10/2026
# ==============================================================================


# ------------------------------------------------------------------------------
# 0. Preparación
# ------------------------------------------------------------------------------
# - Cargue los paquetes que vaya a utilizar (si los necesita).
# - Defina la dirección de los datos:
#   https://www.dropbox.com/s/nxoijhgmutuho0s/datos_control_Rascon.csv?dl=1

# ------------------------------------------------------------------------------
# 1. Importación y exploración de los datos
# ------------------------------------------------------------------------------
# - Importe los datos y guárdelos en un objeto.
# - Revise la estructura, los nombres de las variables y el número de árboles.
# - Obtenga estadísticos descriptivos de DAP y EDAD.
pinus <- read.csv("datos_control_Rascon.csv", header = TRUE)
str(pinus)
summary(pinus)

# Número de árboles (n): 60
# Comentario sobre los datos: Tenemos 60 arboles de los cuales 30 pertencen a una especie (arizonica) y el resto
#a otra (durangensis), entre los datos lo que más nos interesa es el DAP (Diametro a la Altura del Pecho), medido
#en centimetros, donde encontramos valores entre 7.70 y 45.60 cm mientras que la edad, medida en años tenemos
#valores entre 14 y 128 años.

# ------------------------------------------------------------------------------
# 2. Diagrama de dispersión
# ------------------------------------------------------------------------------
# - Grafique DAP (eje x, variable independiente) contra EDAD (eje y, variable
#   dependiente). Incluya etiquetas de ejes con unidades.
plot(pinus$DAP, pinus$EDAD,
     xlab = "Diámetro a la altura de pecho (DAP)",
     ylab = "Edad (años)",
     pch = 20, col = "purple")

# ¿Qué patrón observa? (forma, dirección, valores atípicos): si se observa que siguen una dirección acendente
#conforme pasan los años, si se logra apreciar un valor atipico muy notable.


# ------------------------------------------------------------------------------
# 3. Hipótesis
# ------------------------------------------------------------------------------
# H0 (en palabras): No existe uan relación lineal significativa entre el DAP y la edad.
# H0 (en notación): beta = 0
#
# H1 (en palabras): Existe una relación lineal significativa entre el DAP y la edad.
# H1 (en notación): beta !=0
#
# Nivel de significancia: 0.05 (5%)


# ------------------------------------------------------------------------------
# 4. Ajuste del modelo de regresión lineal simple
# ------------------------------------------------------------------------------
# Modelo: EDAD = alpha + beta * DAP + error
# - Ajuste el modelo y guárdelo en un objeto.
# - Muestre el resumen del modelo.
modelo <- lm(EDAD ~ DAP, data = pinus)
summary(modelo)

# ------------------------------------------------------------------------------
# 5. Coeficientes
# ------------------------------------------------------------------------------
# Intercepto (alpha): -8.480269 
# Interpretación: Cuando el DAP es de 0 centimetros el modelo estima una edad negativa, esto porque un arbol
#no puede tener esa edad.
#
# Pendiente (beta): 2.431564 
# Interpretación (años por cada cm de DAP): Por cada centimetro que aumenta el DAP, la eadd estimada del arbol
#aumenta 2.431564
#
# Ecuación ajustada:  EDAD estimada = -8.480269 + 2.431564  * DAP

# ------------------------------------------------------------------------------
# 6. Significancia
# ------------------------------------------------------------------------------
# a) Intercepto      -> p-value: 0.168          ¿Significativo? (Sí/No): No
# b) Pendiente       -> p-value: 3.2e-14        ¿Significativo? (Sí/No): Sí
# c) Regresión       -> F: 99.83        gl: 1 y 58        p-value: 3.201e-14
#    ¿Es significativa la regresión? (Sí/No): Si
# d) R2: 0.6325
#    Interpretación: El 63.25% de la variación observada en la edad se explica mediante el DAP en el modelo.
#
# Decisión sobre H0: Se rechaza H0, ya que el avlor de p es muy cercano a cero, esto nos dice que hay 
#evidencia estadistica de una relación lineal entre el DAP y la edad.


# ------------------------------------------------------------------------------
# 7. Gráfica con la recta de regresión
# ------------------------------------------------------------------------------
# - Agregue la recta ajustada al diagrama de dispersión del paso 2.
plot(pinus$DAP, pinus$EDAD,
     xlab = "Diámetro a la altura de pecho (DAP)",
     ylab = "Edad (años)",
     pch = 20, col = "purple")
abline(modelo, col = "orange", lwd = 2)

# ------------------------------------------------------------------------------
# 8. Predicción de la edad
# ------------------------------------------------------------------------------
# - Cree un objeto con los DAP a estimar: 12, 20, 26, 34 y 45 cm.
# - Calcule la edad estimada aplicando la ecuación ajustada (cálculo manual).
# - Verifique los resultados usando el modelo ajustado.
# - Presente los resultados en una tabla.
dap_nuevos <- data.frame(DAP = c(12,20,26,34,45))
coeficientes <- coef(modelo)
alpha <- coeficientes[1]
beta <- coeficientes[2]
edad_manual <- alpha + beta * dap_nuevos$DAP
edad_modelo <- predict(modelo, newdata = dap_nuevos)
tabla <- data.frame(
  Numero = 1:5,
  DAP_cm = dap_nuevos$DAP,
  Edad_manual = edad_manual,
  Edad_modelo = edad_modelo)
print(tabla)

# | No. | DAP (cm) | Edad estimada (años) |
# |-----|----------|----------------------|
# |  1  |    12    |       20.69850       |
# |  2  |    20    |       40.15101       |
# |  3  |    26    |       54.74040       |
# |  4  |    34    |       74.19291       |
# |  5  |    45    |      100.94012       |
#
# ¿Algún DAP queda fuera del intervalo observado en los datos?
#No, todos estan dentro del intervalo.

# ------------------------------------------------------------------------------
# 9. Conclusión
# ------------------------------------------------------------------------------
# ¿Es el DAP un buen predictor de la edad en Pinus arizonica?
#Si. El DAP es un predictor estadísticamente significativo de la edad, ya que el valor p de la pendiente 
#es menor que 0.05.
# Una limitación del modelo:  El DAP no permite determinar con exactitud la edad de un árbol, ya que el crecimiento
#del diámetro también está influido por factores como la disponibilidad de agua, las condiciones del suelo, el 
#clima y la competencia por recursos. Por ello, árboles con un DAP similar pueden tener edades diferentes.

