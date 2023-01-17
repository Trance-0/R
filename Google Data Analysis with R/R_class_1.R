# Here is the R way to add comment in your code

# The variable name in R could not start with underscore or number...
strange_variable <- "People like to use underscore instead of Pascal when they naming a new variable"
numeric_variable <- 114514.22335

# Vector is a group of elements of the same type stored in a sequence in R
# (Like array list in Java?)

sample_vector <- c(1,2,3,4,5,6,7)

# Pipe is a tool in R for expressing a sequence of multiple operations, represented with "%>%"

# install date time packages
# install,packages("tidyverse")

# call the package
library(tidyverse)
library(lubridate)

test_today=today()
test_now=now()

#converting string to datetime
test_date_a=ymd("2021-01-20")
test_date_b=myd(01202213)
test_date_c=mdy("January 20th, 2021")

# other common data structure
test_frame=data.frame(x = c(1, 2, 3) , y = c(1.5, 5.5, 7.5))

# file operation
# file.create ("new_text_file.txt") 
# file.create ("new_word_file.docx") 
# file.create ("new_csv_file.csv") 

# You can delete R files using the unlink() function. Enter the file’s name in the parentheses of the function.
# unlink ("some_file")
