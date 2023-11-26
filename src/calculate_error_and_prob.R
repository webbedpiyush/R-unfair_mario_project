# calculate_error_and_prob.R

# Computing the standard error of p_win for each level
unfair_mario_difficulty <- unfair_mario_difficulty %>%
  mutate(error = sqrt(p_win * (1 - p_win) / attempts))

# Adding standard error bars
ggplot(unfair_mario_difficulty, aes(x = level, y = p_win)) +
  geom_line() +
  geom_point() +
  geom_hline(yintercept = 0.10, linetype = "dashed") +
  geom_errorbar(aes(ymin = p_win - error, ymax = p_win + error)) +
  scale_x_continuous(breaks = c(1:15)) +
  scale_y_continuous(labels = scales::percent)

# The probability of completing the episode without losing a single time for Unfair Mario
p_unfair_mario <- prod(unfair_mario_difficulty$p_win)

# Printing it out
p_unfair_mario
 
