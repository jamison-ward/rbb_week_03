# Title: Understanding Data Structures
# Author: Jamison Ward
# Created: 2025-10-15, 20:23:52


# Packages ----------------------------------------------------------------

pacman::p_load(tidyverse)


# Vectors -----------------------------------------------------------------

my_vec <- c(1,2,3)  # Use the c() function to create a vector

age <- c(18, 25, 46)
sex <- c("M", "F", "F")
positive_test <- c(T, T, F)
id <- 1:3  # Another way to create a vector in R

class(age)  # Check the class of the data structure
class(sex)
class(positive_test)
class(id)

is.vector(age)  # is.vector() returns a Boolean with a vector as input

# practice
# my_vec_1 <- (1,2,3)  # Needs to use the c() function
# my_vec_2 <- c("Obi", "Chika" "Nonso")  # Missing a comma in the c() argument


# Manipulating Vectors
age * 2  # Transforms a vector element-wise
sqrt(age)
age + id


# Data Frames -------------------------------------------------------------

data.frame(id, age, sex, positive_test)  # Create a data frame from a list of vectors
data_epi <- data.frame(id, age, sex, positive_test)

data_epi$age  # Extract a vector from a data frame

# practice 2
name <- c("Bob", "Jane", "Joe")
number_of_children <- c(1, 2, 3)
is_married <- c(T, F, F)

data_frame <- data.frame(name, number_of_children, is_married)
data_frame

colnames(data_frame)

# practice 3
room <- c("dining", "kitchen", "bedroom")
num_windows <- c(3, 2, 5)

data_frame_2 <- data.frame(room, num_windows)
data_frame_2

# Directly defining a data frame

data.frame(id = 4:6,
           age = c(50, 56, 57))


# Tibbles -----------------------------------------------------------------

data_epi

as_tibble(data_epi)  # Returns dimensions of data frame and data type of each 
                     # column in addition to the data frame itself
                     # Also truncates table in the console

# data printing of as_tibble() becomes more useful for larger data frames

infert
as_tibble(infert)

# The read_csv() automatically creates tibbles

data_1 <- read.csv("data/ebola_sierra_leone.csv")
data_2 <- read_csv("data/ebola_sierra_leone.csv")

data_1
data_2
