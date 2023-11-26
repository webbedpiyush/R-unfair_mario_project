# load_and_explore_data.R

# This sets the size of plots to a good default.
options(repr.plot.width = 5, repr.plot.height = 4)

# Loading in packages
library(tidyverse)

# Reading in the data for Unfair Mario
unfair_mario_data <- read_csv("datasets/unfair_mario.csv")

# Printing out the first couple of rows
head(unfair_mario_data)
print("Number of players:")
length(unique(unfair_mario_data$player_id))

print("Period for which we have data:")
range(unfair_mario_data$dt) 
