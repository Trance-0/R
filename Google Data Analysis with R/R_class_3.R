# Let's use packages!
# Packages: Units of reproducible R code
# Packages contents:
#   * Reusable R functions
#   * Documentations about the functions
#   * Sample data sets
#   * Tests for checking your code

# code to check your packages:
installed.packages()
update.packages()

# code to "base" a package:
install.packages("tidyverse")
library("tidyverse")

install.packages("palmerpenguins")
library("palmerpenguins")

install.packages("ggplot2")
library("ggplot2")

install.packages("dplyr")
library("dplyr")

# CRAN (Comprehensive R Archive Network): An online archive with R packages, source code, manuals, and documentation
# (sounds like Anaconda, well pip actually)

# Tidyverse: A system of packages in R with a common design philosophy for data manipulation, exploration, and visualization
# (sounds like numPy)

# Conflicts happen when packages have functions with the same names as other functions
# 8 core tidyverse packages
#   * ggplot2
#   * tibble: works with data frames
#   * tidyr
#   * readr
#   * purrr: works with function and vectors
#   * dplyr
#   * stringr: works with string
#   * forcats: works with common problem with factors

# Four packages that are an essential part of the workflow for data analysts:
#   * ggplot2: to create variety of data viz by applying different visual properties to the data variables in R
#   * dplyr: to offer a consistent set of functions that help you complete some common data manipulations tasks
#   * tidyr: to make tidy data
#   * readr: to import data

# Factors: Store categorical data in R where the data values are limited and usually based on a finite group like country or year

# Nested: In programming, describes code that performs a particular function and is contained within code that performs a broader function

data("ToothGrowth")
View(ToothGrowth)

filtered_tg <- filter(ToothGrowth,dose==0.5)
View(filtered_tg)

arrange(filtered_tg,len)
arrange(filter(ToothGrowth,dose==0.5),len)

# You can call %>% by ctrl+shift+m
filtered_toothgrowth <- ToothGrowth %>% 
  filter(dose==0.5) %>% 
  group_by(supp) %>% 
  summarize(mean_len = mean(len,na.rm = T),.group="drop")

