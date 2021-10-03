libary(Tidyverse)
library(psydata

# select cars in the fuel dataset with less than 5 cylinders
development %>%
filter(cyll == 5)

# calculate the average life expectancy in Africa
development
filter(continent = "africa") %>%
summarise(average(life_expectancy))

# scatterplot of life expectancy against year with continent in colour
ggplot(aes(year, lifeExp, colour=continent)) %>%
geom_scatterplot()
