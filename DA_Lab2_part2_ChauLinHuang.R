# Data Analytics Lab 2 Part 2a
# Date: Oct 2, 2020
# Charly Huang

library(readr)
library(tidyverse)
library("ggplot2")

# Import CSV to dataframe
csv_dir <- "./EPI_data.csv"
EPI_data <- read.csv(csv_dir)
attach(EPI_data)
print("The CSV file is imported.")

# Box plot
boxplot(EPI_data$ENVHEALTH, EPI_data$DALY, EPI_data$AIR_H, EPI_data$WATER_H)

# Linear and least-squares
lmENVH <- lm(EPI_data$ENVHEALTH~ EPI_data$DALY + EPI_data$AIR_H + EPI_data$WATER_H)
lmENVH

summary(lmENVH)

cENVH <- coef(lmENVH)

# Predict
DALYNEW <- c( seq(5, 95, 5) )
AIR_HNEW <- c(seq(5, 95, 5))
WATER_HNEW <- c(seq(5, 95, 5))
NEW <- data.frame(DALYNEW, AIR_HNEW, WATER_HNEW)

# Prediction for ENVHEALTH
pred_new_envh <- predict(lmENVH, interval = "prediction")
pNEW <- cbind(NEW, pred_new_envh)

pred_new_cenv <- predict(lmENVH, interval = "confidence")
cENV <- cbind(NEW, pred_new_cenv)

# Prediction for AIR_E
lmAIRE <- lm(EPI_data$AIR_E~ EPI_data$DALY + EPI_data$AIR_H + EPI_data$WATER_H)
pred_new_aire <- predict(lmAIRE, interval = "prediction")
pNEW_AIRE <- cbind(NEW, pred_new_aire)
conf_new_aire <- predict(lmAIRE, interval = "confidence")
cNEW_AIRE <- cbind(NEW, pred_new_aire)

# Prediction for CLIMATE
lmClimate <- lm(EPI_data$CLIMATE~ EPI_data$DALY + EPI_data$AIR_H + EPI_data$WATER_H)
pred_new_climate <- predict(lmClimate, interval = "prediction")
conf_new_climate <- predict(lmClimate, interval = "confidence")
pNEW_CLIMATE <- cbind(NEW, pred_new_climate)
cNEW_CLIMATE <- cbind(NEW, conf_new_climate)
pred_new_climate <- predict()