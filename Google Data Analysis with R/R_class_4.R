# Some point you need to notice when you process data with R
# 1.Columns should be named
# 2.Data stored can be many different types, like numeric, factor, or character.
# 3.Each column should contain the same number of data items

# Tibbles
#   * Never change the data types of the inputs
#   * Never change the names of your variables
#   * Never create row names
#   * Make printing easier

# Tidy data: A way of standardizing the organization of data within R
#   * Variables are organized into columns
#   * Observations are organized into rows
#   * Each value must have its own cell

# Data frame: A collection of column like sheet in SQL and spreadsheets

install.packages("tidyverse")
library("ggplot2")
data("diamonds")
# View(diamonds)
head(diamonds)

# Showing the structure of the data
str(diamonds)

# Showing the column names of the data
colnames(diamonds)

# Add new row without changing the data
library(tidyverse)
mutate(diamonds,carat_2=carat*100)





