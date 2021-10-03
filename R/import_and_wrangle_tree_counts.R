##simple hollows data plots
#ard 
# 21/09/2021

#libraries needed
library(here)
library(readxl)
library(tidyverse)

##import data
dat <- read_excel(here::here("data/tree_data_wrangled.xlsx"), sheet = 1)
var_names <- read_excel(here::here("data/hollow_data_wrangled.xlsx"), sheet = 2)

#number of samples of each presence and absence of birds in hollows
table(dat$BirdPresence)

#balance ..#glimpse
glimpse(dat)

ggplot(dat) +
  geom_point(aes(x = floorDia, y = minDiaEntrance))

ggplot(dat) +
  geom_point(aes(x = healthScale, y = treeDiameter)) +
  geom_smooth(aes(x = healthScale, y = treeDiameter, group = BirdPresence), method = "lm")

ggplot(dat) +
  geom_histogram(aes(x = treeDiameter, group  = BirdPresence, fill  = BirdPresence), stat = "count") +
  geom_density(aes(x = treeDiameter), stat = "count")

#   geom_point(aes(x = birdpresent, y = hollows, col = birdpresent)) +
#   geom_smooth(aes(x = depthCm, y = hollows, group = birdpresent), method = "lm")

ggplot(dat) +
  geom_histogram(aes(x = depthCm, group  = birdpresent, fill  = birdpresent), stat = "count", size = 10) #+
  # geom_density(aes(x = hollows), stat = "count")

dat1 <- select(dat, treeDiameter, healthScale, hollowEntrances)

##

# corrplot::corrplot(dat1$treeDiameter, dat1$healthScale)





