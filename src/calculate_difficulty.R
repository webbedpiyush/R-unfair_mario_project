# calculate_difficulty.R

# Calculating level difficulty for Unfair Mario
unfair_mario_difficulty <- unfair_mario_data %>%
  group_by(level) %>%
  summarise(wins = sum(num_success), attempts = sum(num_attempts)) %>%
  mutate(p_win = wins / attempts)

# Printing out the Unfair Mario level difficulty
unfair_mario_difficulty
 
