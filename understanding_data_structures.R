# Title: Understanding Data Structures
# Author: Jamison Ward
# Created: 2025-10-15, 20:23:52


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


