library("dplyr")
data("ToothGrowth")

# Usando proceduralmente com variável
filtro_tg <- filter(ToothGrowth, dose==0.5)

arrange(filtro_tg, len)

head(filtro_tg)

# Usando código alinhado sem variável 
head(arrange(filter(ToothGrowth, dose==0.5), len))

# Usando pipe %>% (Ctrl + Shift + m)
filtro_pipe <- ToothGrowth %>% filter(dose==0.5) %>% arrange(len) 
head(filtro_pipe)

# Usando grupos
filtro_grupo <- ToothGrowth %>% 
  filter(dose==0.5) %>% 
  group_by(supp)  %>% 
  summarise(mean_len=mean(len,na.rm = T),.group = "drop")
head(filtro_grupo)

