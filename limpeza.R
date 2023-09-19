# Carregando as bibliotecas
library("here")
library("skimr")
library("janitor")
library("dplyr")
library("palmerpenguins")

# Mostra um resumo do dataframe
skim_without_charts(penguins)

# Mostra um resumo rápido do conteúdo do dataframe
glimpse(penguins)

# Mostras o nome das colunas e as primeiras lihas
head(penguins)

# Selecionando somente a coluna especie
penguins %>% select(species)

# Selecionando todas colunas menos a especie
penguins %>% select(-species)

# Mudando o nome de uma coluna
penguins %>% rename(island_new=island)

# Mudar nome de coluna de outra maneira
rename_with(penguins, toupper)

# Certificar que os nomes não se repetem e estão na norma
clean_names(penguins)
