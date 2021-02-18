library('dplyr')
print('Esto es una muestra de un script en R')
print('Veamos el summary de nuestro dataset de prueba Iris')
print(summary(iris))
print('Ahora imprimimos el uso de dplyr de la librería tidyverse, como ejemplo $
print(iris %>%
  group_by(Species) %>%
  summarise(media_petalo_largo=mean(Petal.Length),
            media_petalo_ancho=mean(Petal.Width)))