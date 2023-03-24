
# Installing pacman
require(pacman)

# Installing useful packages
pacman::p_load(pacman, dplyr, GGally, ggplot2, ggthemes, ggvis, httr, lubridate, plotly, rio, rmarkdown, shiny, stringr, tidyr)

# Importing default R data sets and tidyverse package
library(datasets)
library(tidyverse)

# Create vectors containing data that will make up our data frame
names <- c("Spencer", "Megan", "Claire", "Zach", "Amelia", "Paige")
ages <- c(26, 25, 2, 23, 17, 25)
sex <- c("m", "f", "f", "m", "f", "f")
in_school <- c(TRUE, FALSE, FALSE, TRUE, TRUE, FALSE)

# Combine the vectors created into a data frame 
df <- data.frame(names,ages,sex,in_school)

# Display the data frame to the user
View(df)

# Iterate through ages in a for loop to create new variable birth_year
birth_years <- c()

for (age in ages) {
  birth_year <- 2022 - age
  birth_years <- c(birth_years, birth_year)
}

# Add new birth_years vector to our existing data frame
new_df <- data.frame(df, birth_years)

# Display the first 6 observations of the data frame in the console
head(new_df)

# Display the last 6 observations of the data frame in the console
tail(new_df)

# Display updated data frame to the user in a separate window
view(new_df)

# Display the rows and columns of the data frame along with their 
# respective data types
glimpse(new_df)

# Display the names and ages on a plot
ggplot(new_df, aes(names, ages)) +geom_col() +
  labs(title="Ages of Siblings", x="Names", y="Ages")






     