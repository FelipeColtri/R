# Importando biblioteca para usar os conjutos de dados
library(ggplot2)
library(Tmisc)
library(datasauRus)
data(quartet)
head(quartet)

# Agrupando por set e resumindo em média, desvio padrão e correlação
quartet %>% group_by(set) %>% summarise(mean(x), sd(x), mean(y), sd(y), cor(x, y))

# Mostrando o gráfico com os quarto conjuntos
ggplot(quartet, aes(x, y)) + geom_point() + geom_smooth(method = lm, se = FALSE) + facet_wrap(~set)

# Mostrando vários gráficos
ggplot(datasaurus_dozen, aes(x = x, y = y, colour = dataset)) + geom_point() + theme_void() + theme(legend.position = 'none') + facet_wrap(~dataset)
