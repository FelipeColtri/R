# Carregando as bibliotecas com suas ambientes e variáveis
library("palmerpenguins")
library("ggplot2")

# Resumo do conjunto de dados
summary(penguins) 

# Ver a base de dados como tabela
View(penguins)

# Mostra um gráfico com de comprimento por massa e colorida por especie
ggplot(data = penguins, aes(x = flipper_length_mm, y = body_mass_g)) + geom_point(aes(color = species))
