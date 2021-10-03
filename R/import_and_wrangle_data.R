##simple hollows data plots
#ard 
# 21/09/2021

#libraries needed
library(readxl)

##import data
dat <- read_excel(here::here("hollow_data_wrangled.xlsx"), sheet = 1)
var_names <- read_excel(here::here("hollow_data_wrangled.xlsx"), sheet = 2)

#number of samples of each presence and absence of birds in hollows
table(dat$birdPresent)


dat <- read_xlsx(here::here("SamsRepo/data/tree_data_wrangled.xlsx"),sheet = 1) %>%
  mutate(BirdPresence = factor(BirdPresence),
         spp = factor(spp))

# kableExtra::kable(glimpse(dat))

varnames_dat <- read_xlsx(here::here("SamsRepo/data/tree_data_wrangled.xlsx"),sheet = 2)



