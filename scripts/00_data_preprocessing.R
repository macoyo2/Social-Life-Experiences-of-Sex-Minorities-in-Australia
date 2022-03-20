### Preamble ###
# Purpose: Clean the Daily Shelter occupancy data downloaded from Toronto Open Data
# Author: Yitian Li, Wei Zhang, Nan An
# Date: March 20 2022
# Contact: yitian.li@mail.utoronto.ca
# Pre-req: None

### Workspace Set-Up ###
# install.packages("readxl")
# install.packages("tidyverse")
# install.packages("dplyr")
# install.packages("ggplot2")
# install.packages("lubridate")
# install.packages("ggpubr")
# install.packages("knitr")
library(readxl)
library(tidyverse)
library(dplyr)
library(ggpubr)
library(ggplot2)
library(knitr)
library(lubridate)

### Import the dataset ###
original_data <- read_excel("C:/Users/liyit/Desktop/Proportion.xlsx")
original_data2 <- read_excel("C:/Users/liyit/Desktop/Estimate.xlsx")

### Clean data ###
marriage_proportion <- original_data[109:112, 1:4]
cultural_tolerance_proportion <- original_data[26:28, 1:4]
trust_proportion <- original_data[30:49, 1:4]
age_group_proportion <- original_data[76:81, 1:4]

# names
names(marriage_proportion)[1] = "marriage proportion"
names(marriage_proportion)[2] = "Heterosexual"
names(marriage_proportion)[3] = "Gay, Lesbian or Bisexual"
names(marriage_proportion)[4] = "Total persons"
names(cultural_tolerance_proportion)[1] = "cultural tolerance proportion"
names(cultural_tolerance_proportion)[2] = "Heterosexual"
names(cultural_tolerance_proportion)[3] = "Gay, Lesbian or Bisexual"
names(cultural_tolerance_proportion)[4] = "Total persons"
names(trust_proportion)[1] = "trust proportion"
names(trust_proportion)[2] = "Heterosexual"
names(trust_proportion)[3] = "Gay, Lesbian or Bisexual"
names(trust_proportion)[4] = "Total persons"
names(age_group_proportion)[1] = "age group proportion"
names(age_group_proportion)[2] = "Heterosexual"
names(age_group_proportion)[3] = "Gay, Lesbian or Bisexual"
names(age_group_proportion)[4] = "Total persons"

marriage_estimate <- original_data2[109:112, 1:4]
cultural_tolerance_estimate <- original_data2[26:28, 1:4]
trust_estimate <- original_data2[30:49, 1:4]
age_group_estimate <- original_data2[76:81, 1:4]

# names
names(marriage_estimate)[1] = "marriage estimate"
names(marriage_estimate)[2] = "Heterosexual"
names(marriage_estimate)[3] = "Gay, Lesbian or Bisexual"
names(marriage_estimate)[4] = "Total persons"
names(cultural_tolerance_estimate)[1] = "cultural tolerance estimate"
names(cultural_tolerance_estimate)[2] = "Heterosexual"
names(cultural_tolerance_estimate)[3] = "Gay, Lesbian or Bisexual"
names(cultural_tolerance_estimate)[4] = "Total persons"
names(trust_estimate)[1] = "trust estimate"
names(trust_estimate)[2] = "Heterosexual"
names(trust_estimate)[3] = "Gay, Lesbian or Bisexual"
names(trust_estimate)[4] = "Total persons"
names(age_group_estimate)[1] = "age group estimate"
names(age_group_estimate)[2] = "Heterosexual"
names(age_group_estimate)[3] = "Gay, Lesbian or Bisexual"
names(age_group_estimate)[4] = "Total persons"
