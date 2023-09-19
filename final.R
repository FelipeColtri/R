# Importando as bibliotecas
library(dplyr)
library(ggplot2)

# Carregando o dataframe
flavors_df <- read_csv("/home/poper/Documentos/Cursos/Google/module\ 7/exam/flavors_of_cacao.csv")

# Resumo dos dados
glimpse(flavors_df)

# Renomeando as coluna
flavors_df <- flavors_df %>% rename(Company = `Company 
(Maker-if known)`)
flavors_df <- flavors_df %>% rename(Company.Location = `Company
Location`)
flavors_df <- flavors_df %>% rename(Cocoa.Percent = `Cocoa
Percent`)
flavors_df <- flavors_df %>% rename(Bean.Type = `Bean
Type`)

# Criando nova dataset
trimmed_flavors_df <- flavors_df %>% select(Rating, Cocoa.Percent, Bean.Type)
head(trimmed_flavors_df)

# Cálculo do desvio padrão
trimmed_flavors_df %>% summarize(desvio_padrao_rating = sd(Rating))

# Filtrando os dados 
best_trimmed_flavors_df <- flavors_df %>% filter(Cocoa.Percent >= 80 & Rating >= 3.75)
head(best_trimmed_flavors_df)

# Mostrando um gráfico
ggplot(data = best_trimmed_flavors_df) + geom_bar(mapping = aes(x = Company.Location))

# Destacarcada barra
ggplot(data = best_trimmed_flavors_df) + geom_bar(mapping = aes(x = Company.Location, alpha=Rating))

# Dividindo gráficos
ggplot(data = best_trimmed_flavors_df) + geom_bar(mapping = aes(x = Company)) + facet_wrap(~Company)

# Colocando título
ggplot(data = best_trimmed_flavors_df) + geom_bar(mapping = aes(x = Company)) + labs(title = "Um Título")

# Salvando o gráfico
ggplot(data = trimmed_flavors_df) + geom_point(mapping = aes(x = Cocoa.Percent, y = Rating))
ggsave("chocolate.png")
