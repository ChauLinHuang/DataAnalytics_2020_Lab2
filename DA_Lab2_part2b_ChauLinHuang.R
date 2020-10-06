# Data Analytics Lab 2 Part 2b
# Date: Oct 2, 2020
# Charly Huang

library(readr)
library(tidyverse)
library(ggplot2)
library(dplyr)

# Import CSV to dataframe
nultiReg_csv_dir <- "./dataset_multipleRegression.csv"
multiReg_df <- read.csv(nultiReg_csv_dir)
attach(multiReg_df)
print("The multipleRegression CSV file is imported.")


# Predict for fall ROLL with UNEM, and HGRAD
multiReg_df.lm <- lm(ROLL~ UNEM + HGRAD, data = multiReg_df)

# Plots to check the fitting
layout(matrix(c(1,2,3,4),2,2)) # optional 4 graphs/page
plot(multiReg_df.lm)

pred_multiReg <- c(seq(5, ))
predict(multiReg_df.lm, )

