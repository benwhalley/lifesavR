library(tidyverse)
library(psydata)

# select cars in the fuel dataset with less than 5 cylinders
fuel %>%
  filter(cyl < 5)

# calculate the average life expectancy in Africa
development %>%
  filter(continent == "Africa") %>%
  summarise(mean(life_expectancy))

# scatterplot of life expectancy against year with continent in colour
development %>%
  ggplot(aes(year, life_expectancy, colour=continent)) +
  geom_point()
