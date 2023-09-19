# Importanto as bibliotecas 
library(ggplot2)
library(palmerpenguins)

# Criando um gráfco que relaciona massa corporal e tamanho das nadadeiras
ggplot(data = penguins) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g))

# Mudando a estética de cor e tipo de ponto do gráfico com aes()
ggplot(data = penguins) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color = species, shape = species))

# Usando a estética alpha para tons de cinza usada em gráficos densos
ggplot(data = penguins) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, alpha = species))

# Todos os pontos para uma única cor 
ggplot(data = penguins) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g), color = 'purple')

# Criando um gráfico de linhas suaves
ggplot(data = penguins) + geom_smooth(mapping = aes(x = flipper_length_mm, y = body_mass_g))

# Juntando as duas camadas num mesmo gráfico
ggplot(data = penguins) + geom_smooth(mapping = aes(x = flipper_length_mm, y = body_mass_g)) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g))

# Mapa de linhas separados por especies
ggplot(data = penguins) + geom_smooth(mapping = aes(x = flipper_length_mm, y = body_mass_g, linetype = species))

# Cria gráfico de dispersão e adiciona ruído aleatório, usado para gráficos sobrecarregados
ggplot(data = penguins) + geom_jitter(mapping = aes(x = flipper_length_mm, y = body_mass_g))

# Criando um gráfico de barras com o dataset diamonds
ggplot(data = diamonds) + geom_bar(mapping = aes(x = cut, fill = cut))

# Ver a claridade em cada tipo de corte 
ggplot(data = diamonds) + geom_bar(mapping = aes(x = cut, fill = clarity))

# Criando um gráfco de faceta ou subplot, warp para única variável
ggplot(data = penguins) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color = species)) + facet_wrap(~species)
ggplot(data = diamonds) + geom_bar(mapping = aes(x = color, fill = cut)) + facet_wrap(~cut)

# Facetas com mais de uma variável, grid para divider verticalmente a primeira variável e horizontalmente a segunda
ggplot(data = penguins) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color = species)) + facet_grid(sex~species)
ggplot(data = penguins) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color = species)) + facet_grid(~sex)

# Adicionando título, subtítulo, legenda e anotações no gráfico
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color = species)) + 
  labs(title = "Pinguins de Palmer: Massa Corporal x Tamanho da Nadadeira", 
       subtitle = "Exemplo de três especies de pinguins", 
       caption = "Dados coletados pela Dra. Kristen Gorman") +
  annotate("text", x=220, y=3500, label="Gentoo é a maior especie.", color="purple", fontface="bold", size=3.5, angle=25) 
 
# Salvando a imagem do gráfico com ggsave, salva o somente o último gráfico feito
ggsave("Tres_Especies_Pinguins.png")

