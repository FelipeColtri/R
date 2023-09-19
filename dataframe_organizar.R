# Carregando as bibliotecas
library("tidyverse")

# Organizando pelo comprimento do bico
penguins %>% arrange(bill_length_mm)

# Organizando pelo comprimento do bico ordem decresente
penguins %>% arrange(-bill_length_mm)

# Agrupando por ilha, descartar valores nulos e resumindo pela média do comprimento do bico
penguins %>% group_by(island) %>% drop_na() %>% summarise(mean_bill_length_mm = mean(bill_length_mm))

# Agrupando por ilha, descartar valores nulos e resumindo pelo maior bico 
penguins %>% group_by(island) %>% drop_na() %>% summarise(max_bill_length_mm = max(bill_length_mm))

# Agrupando por ilha e especie, descartar valores nulos e resumindo pelo maior bico e média do bicos 
penguins %>% group_by(species, island) %>% drop_na() %>% summarise(max_bill_length_mm = max(bill_length_mm), mean_bill_length_mm = mean(bill_length_mm))

# Usando um filtro para especie
penguins %>% filter(species == "Adelie")
