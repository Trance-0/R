# make referencing file easier
install.packages("here")
library("here")

# make data cleaning easy
install.packages("skimr")
library("skimr")

install.packages("janitor")
library("janitor")

install.packages("dplyr")
library("dplyr")

# load data set
install.packages("palmerpenguins")
library("palmerpenguins")

# get data summary
skim_without_charts(penguins)
glimpse(penguins)
head(penguins)

# select all the columns except species
penguins %>% 
  select(-species)

# rename column in data set from island to island_new
penguins %>% 
  rename(island_new=island)

# rename all the column to uppercase
rename_with(penguins,tolower)

# make every column name legal
clean_names(penguins)
