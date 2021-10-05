##simple hollows data plots
#ard 
# 21/09/2021

#libraries needed
library(here)
library(readxl)
library(tidyverse)

##import data
dat <- read_excel(here::here("data/hollow_data_wrangled.xlsx"), sheet = 1)
var_names <- read_excel(here::here("data/hollow_data_wrangled.xlsx"), sheet = 2)

#number of samples of each presence and absence of birds in hollows
table(dat$birdpresent)
#balance ..

#glimpse
glimpse(dat)

ggplot(dat) +
  geom_point(aes(x = floorDia, y = minDiaEntrance))

ggplot(dat) +
  geom_point(aes(x = depthCm, y = diaCm)) +
  geom_smooth(aes(x = depthCm, y = diaCm, group = birdpresent), method = "lm")

ggplot(dat) +
  geom_histogram(aes(x = hollows, group  = birdpresent, fill  = birdpresent), stat = "count") +
  geom_density(aes(x = hollows), stat = "count")

#   geom_point(aes(x = birdpresent, y = hollows, col = birdpresent)) +
#   geom_smooth(aes(x = depthCm, y = hollows, group = birdpresent), method = "lm")

ggplot(dat) +
  geom_histogram(aes(x = depthCm, group  = birdpresent, fill  = birdpresent), stat = "count", size = 10) #+
  # geom_density(aes(x = hollows), stat = "count")


dat <- read_xlsx(here::here("data/tree_data_wrangled.xlsx"),sheet = 1) %>%
  mutate(BirdPresence = factor(BirdPresence),
         spp = factor(spp))

# kableExtra::kable(glimpse(dat))

varnames_dat <- read_xlsx(here::here("data/tree_data_wrangled.xlsx"),sheet = 2)



