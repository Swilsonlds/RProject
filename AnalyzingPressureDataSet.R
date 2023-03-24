
# Installing pacman
require(pacman)

# Installing useful packages
pacman::p_load(pacman, dplyr, GGally, ggplot2, ggthemes, ggvis, httr, lubridate, plotly, rio, rmarkdown, shiny, stringr, tidyr)

# Importing default R data sets and tidyverse package
library(datasets)
library(tidyverse)

# Provides the user with a brief summary of the pressure data set
?pressure

# Save the pressure data set to "prs" to reduce typing
prs <- pressure

# Use the plot function to create an appropriate plot that will 
plot(pressure,
     main="Relationship between Mercury Temp. and Vapor Pressure",
     ylab="Presure in mm",
     xlab="Temperature in Celcius",
     pch=16,
     col="red"
     )


