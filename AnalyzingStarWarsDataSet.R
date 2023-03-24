
# Installing pacman
require(pacman)

# Installing useful packages
pacman::p_load(pacman, dplyr, GGally, ggplot2, ggthemes, ggvis, httr, lubridate, plotly, rio, rmarkdown, shiny, stringr, tidyr)

# Importing default R data sets and tidyverse package
library(datasets)
library(tidyverse)

# Save starwars data set as sw to make referencing it easier
sw <- starwars

# The glimpse function will show us the names of all of the variables
# in the data frame along with their respective data types
glimpse(starwars)

# Creating a plot that displays the mass and height values of all observations within
# the data frame. (Jabba is excluded because he is an outlier and ruins the plot)
sw2 <- filter(sw, name != "Jabba Desilijic Tiure")

ggplot(sw2, aes(height, mass, colour = species)) + 
       geom_point() +
       labs(title="Height and mass of Star Wars Characters by Species",
            x= "Height in CM",
            y= "Mass in Grams")


                   

                



