# Criando um dataframe
id <- c(1:10)
nome <- c("John Mendes", "Rob Stewart", "Rachel Abrahamson", "Christy Hickman", "Johnson Harper", "Candace Miller", "Carlson Landy", "Pansy Jordan", "Darius Berry", "Claudia Garcia")
id_cargo <- c("Profissional", "Programador", "Gerencia", "Administrativo", "Desenvolvedor", "Programador", "Gerencia", "Administrativo", "Desenvolvedor", "Programador")
empregado <- data.frame(id, nome, id_cargo)
print(empregado)

# Separando nome do sobrenome
empregado_nome_separado <- separate(empregado, nome, into = c('primeiro_nome', 'sobrenome'), sep = ' ')
print(empregado_nome_separado)

# Unindo nomes e sobrenomes
empregado_nome_junto <- unite(empregado_nome_separado, 'nome', primeiro_nome, sobrenome, sep = ' ')
print(empregado_nome_junto)

# Criar novas colunas
penguins %>% mutate(body_mass_kg = body_mass_g/1000, flipper_length_m = flipper_length_mm/1000)
