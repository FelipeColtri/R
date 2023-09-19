# Importando biblioteca para trabalhar com viéses 
library(SimDesign)

# Comparando temperaturas previstas com a reais
temp_atual <- c(28.5, 27.1, 32.5, 32.9, 22.6, 15.8)
temp_prevista <- c(28.9, 25.7, 32.0, 31.1, 20.2, 20.4)

# Calculando o vies, quando mais próximo de zero melhor
bias(temp_atual, temp_prevista)
