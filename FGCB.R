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
        col = "lightblue",
        main = "Unidad Experimental")

