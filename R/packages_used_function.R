#install function to make sure RStudio is up to speed

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

# Installation of required packages
packages <- c("MASS", "car", "readxl", "rgl", "rmarkdown", "nortest", 
              "latex2exp", "pca3d", "ISLR", "pls", "corrplot", "glmnet",
              "mvtnorm", "biglm", "leaps", "lme4", "viridis", "ffbase",
              "ks", "KernSmooth", "nor1mix", "np", "locfit",
              "manipulate", "mice", "VIM", "nnet")
#if statement so already installed packages are not reinstalled
# install.packages(packages)

lapply(packages, library, character.only = TRUE)
