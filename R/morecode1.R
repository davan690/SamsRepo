# Installation of required packages
packages <- c("MASS", "car", "readxl", "rgl", "rmarkdown", "nortest", 
              "latex2exp", "pca3d", "ISLR", "pls", "corrplot", "glmnet",
              "mvtnorm", "biglm", "leaps", "lme4", "viridis", "ffbase",
              "ks", "KernSmooth", "nor1mix", "np", "locfit",
              "manipulate", "mice", "VIM", "nnet")
#if statement so already installed packages are not reinstalled
# install.packages(packages)

lapply(packages, library, character.only = TRUE)
