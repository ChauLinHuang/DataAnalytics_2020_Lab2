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

# Commit the versions of all related libraries
renv::snapshot()


# ===============================
# The program starts here
# ===============================
csv_dir <- "./GPW3_GRUMP_SummaryInformation_2010.csv"
EPI_2010_df <- read.csv(csv_dir)
print("The CSV file is imported.")


