## Práctica 1
2129213
19/08/2026

# Importar datos ---
# Usar la función "read.csv" para importar datos de excel.

Obs <- read.csv("Vivero_FGCB.csv", header = TRUE)

# Declarar la columna tratamiento como factor y sus 2 niveles
# Utilice la funcción "as.factor".

Obs$Tratamiento <- as.factor(Obs$Tratamiento)
Obs$Tratamiento

# Gráfica----

# Boxplot de los datos

boxplot(Obs$IE ~ Obs$Tratamiento, 
        xlab = "Factor = Fertilizante",
        ylab = "Índice (IE)",
        col = "purple",
        main = "Unidad Experimental")

#Conocer la varianza de cada grupo

df_ctrl <- subset(Obs, Tratamiento == "Ctrl")
df_fert <- subset(Obs, Tratamiento != "Ctrl")
df_fert <- subset(Obs, Tratamiento == "Fert")

var(df_ctrl$IE)
var(df_fert$IE)

mean(df_ctrl$IE)
mean(df_fert$IE)

#La varianaza del grupo fertilizado es 3 veces mayor que la varianza del grupo control
#Pregunta, ¿Serán las varianzas iguales o diferentes estadísticamnete)
