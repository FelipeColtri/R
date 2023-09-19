# Chama as bibliotecas que serão usadas
library(ggplot2)
library(tidyverse)

# Carrega o dataframe diamons padrão do ggplot2
data("diamonds")

# Mostra as 5 primeiras linhas do dataframe
head(diamonds)

# Mostra a estrutura do dataframe (nome das coluna e tipos de dados de cada)
str(diamonds)

# Mostra somente o nome das colunas
colnames(diamonds)

# Alterar um datafram
mutate(diamonds, carat_2=carat*100)

# Abrindo o dataframe com a biblioteca tibble
as_tibble(diamonds)
