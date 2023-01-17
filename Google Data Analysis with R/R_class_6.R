# learn how to organize your data in R
library(tidyverse)

# sort data by bill_length
penguins %>% arrange(bill_depth_mm)

# sort data by bill_length in descending order
penguins %>% arrange(-bill_depth_mm)

# save sorted data by bill_length in descending order
penguins2 <- penguins %>% arrange(-bill_depth_mm)
View (penguins2)

# dropping out n/a elements...
penguins %>% group_by(island) %>% drop_na() %>% summarise(mean_bill_length_mm = mean(bill_length_mm))

# filter only species is Adelie
penguins %>% filter(species=="Adelie")

# manually create a data frame
id <- c(1:10)

name <- c("John Mendes", "Rob Stewart", "Rachel Abrahamson", "Christy Hickman", "Johnson Harper", "Candace Miller", "Carlson Landy", "Pansy Jordan", "Darius Berry", "Claudia Garcia")

job_title <- c("Professional", "Programmer", "Management", "Clerical", "Developer", "Programmer", "Management", "Clerical", "Developer", "Programmer")

employee <- data.frame(id, name, job_title)

View(employee)

# transforming data in R

# separate data in R
temp_graph <- separate(employee,name,into=c('first_name','last_name'),sep=' ')

# unite data in R
unite(temp_graph,'r_name',last_name,first_name,sep=' ')

# adding new column with calculation using mutate 
penguins %>% 
  mutate(body_mass_kg=body_mass_g/1000,flipper_length_m=flipper_length_mm/1000)

