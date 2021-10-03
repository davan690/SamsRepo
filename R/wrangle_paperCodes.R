# paperscriptcopy
#AnthonyDavidson
#21092021

library(tidyverse)
library(ggplot2)
library(effects)
library(lsmeans)
library(scales)
library(ggiraphExtra)
library(devtools)
library(car)
library(ggeffects)
library(readr)
library(readxl)

hollows<-read_excel("data/hollow_data_wrangled.xlsx")
trees<-read_excel("data/tree_data_wrangled.xlsx")

trees$health<-factor(trees$healthScale)

trees$<-factor(trees$healthScale)
#summaries
str(trees)
summary(trees)


str(hollows)
summary(hollows)





















####QUESTION 1: IS THERE A DIFFERENCE IN THE NUMBER OF ENTRANCES DETECTED FROM THE GROUND VS. CLIMBING?####

#model selection

# errorn<-glm(BirdPresence~1,family = poisson(), data = trees)
# error1<-glm(groundcount~climbentry*DBH,family = poisson(), data = trees)#interaction is signfificant
# error2<-glm(groundcount~climbentry+DBH,family = poisson(), data = trees)
# error3<-glm(groundcount~climbentry,family = poisson(), data = trees)
# error4<-glm(groundcount~DBH,family = poisson(), data = trees)
# AIC(errorn,error1,error2,error3,error4)
# ##        df      AIC
# ## errorn  1 422.0013
# ## error1  4 319.0683
# ## error2  3 322.4391
# ## error3  2 324.9321
# ## error4  2 404.3212
# 322.4391-319.0683
# ## [1] 3.3708
# #we select model 'error1'
# summary(error1) #all terms significant

