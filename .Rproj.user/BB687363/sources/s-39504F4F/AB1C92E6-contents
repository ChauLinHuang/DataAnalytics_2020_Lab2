# Data Analytics Lab 2
# Date: Oct 2, 2020
# Charly Huang


# Set up the virtual environment
renv::init()

renv::restore()
#install the packages if necessary
if(!require("tidyverse")) install.packages("tidyverse")
if(!require("fs")) install.packages("fs")
if(!require("dplyr")) install.packages("dplyr")
print("Done installing the packages")

library(readr)
library(tidyverse)

# Commit the versions of all related libraries
renv::snapshot()


# ===============================
# The program starts here
# ===============================
# 2.a
# --------
# Import CSV data into dataframe EPI_2010_df
csv_dir <- "./2010EPI_data.csv"
EPI_2010_df <- data.frame(c(read.csv(csv_dir))  , stringsAsFactors = FALSE)
print("The CSV file is imported.")

# Adjust first row of data frame as the header
names(EPI_2010_df) <- as.matrix(EPI_2010_df[1,])
EPI_2010_df <- EPI_2010_df[ -c(1),]

# Compute the central tendency of EPI, DALY
EPI_col <- as.numeric( pull(EPI_2010_df, EPI)  )
EPI_mean <- mean(EPI_col, na.rm=TRUE)
cat("EPI mean is: ", EPI_mean)

DALY_col <- as.numeric( pull(EPI_2010_df, DALY) )   
DALY_mean <- mean(DALY_col, na.rm=TRUE)
cat("DALY mean is: ", DALY_mean)


# Plot histogram for both EPI and DALY
png(file <- "EPI Histogram.png")
hist(EPI_col, main = "EPI", breaks = 10)
dev.off()

png(file <- "DALY_histogram.png")
DALY_hist <- hist(DALY_col, main = "DALY", breaks = 100)
dev.off()


# box plot for ENVHEALTH, ECOSYSTEM
boxplot( as.numeric(pull(EPI_2010_df, ENVHEALTH)),  as.numeric(pull(EPI_2010_df, ECOSYSTEM)) )

# qqplot for ENVHEALTH and ECOSYSTEM
png(file = "Lab2_part1_qqplot.png")
qqplot( as.numeric(pull(EPI_2010_df, ENVHEALTH)),  as.numeric(pull(EPI_2010_df, ECOSYSTEM)) ,
        xlab = "ENVHEALTH", ylab = "ECOSYSTEM")
dev.off()
