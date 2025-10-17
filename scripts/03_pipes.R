# Title: Pipes in R
# Author: Jamison Ward
# Created: 2025-10-16, 16:44:30


# Packages ----------------------------------------------------------------

if (!require("pacman")) {
  install.packages("pacman")
  library(pacman)
}

pacman::p_load(tidyverse,  # pipes
               gt,  # cool tables
               outbreaks  # data
               )

library(gt)

# The pipe function comes from the magrittr package, which is included in the tidyverse package

# Earthquake Data ---------------------------------------------------------

quakes

# Want to show the top 5 earthquakes by magnitude

# OPTION 1: Object Assignment
arranged_data <- arrange(quakes, -mag)  # Arrange by decreasing order of magnitude

head(arranged_data, n = 5)  # Report only the top 5 magnitude quakes

# OPTION 2: Function Nesting
head(arrange(quakes, -mag), n = 5)  # Shorter, but not as clear

# OPTION 3: Pipes
arrange(quakes, -mag)
head(quakes, n = 5)

# Want to "plug in" the quakes data to arrange(), the plug the output into head()
# Can use pipes to do this
# Shortcut to use pipes is Shift + Ctrl + m

quakes %>%  # and then plug this output as the first argument of the next function
  arrange(-mag) %>%  # and then
  head(n = 5)


# Practice Question: Show the 4 deepest quakes, then pass the output to gt
quakes %>%  
  arrange(-depth) %>% 
  head(n = 4) %>% 
  gt()


# Varicella Simulation ----------------------------------------------------

varicella_sim_berlin
as_tibble(varicella_sim_berlin)

# Want to show the names of the 5 youngest individuals, then pass to gt()

varicella_sim_berlin %>% 
  as_tibble() %>%  # Convert data to nice table
  arrange(age) %>%  # Sort data by ascending age
  head(n = 5) %>%  # Only report first 5 rows
  select(firstname, lastname, age) %>%  # Only report first name, last name, and age
  gt()  # Output to gt()


# Practice Question 2: Sex of 4 oldest people in the data, then pass to gt()

varicella_sim_berlin %>% 
  as_tibble() %>% 
  arrange(-age) %>% 
  head(n = 4) %>% 
  select(sex, age) %>% 
  gt()


# Base Pipe ---------------------------------------------------------------

varicella_sim_berlin |> 
  as_tibble() |> 
  arrange(-age) |> 
  head(n = 4) |> 
  select(sex, age) |> 
  gt()
