# plot_difficulty.R

# Plotting the Unfair Mario level difficulty profile
ggplot(unfair_mario_difficulty, aes(x = level, y = p_win)) +
  geom_line() +
  scale_x_continuous(breaks = c(1:15)) +
  scale_y_continuous(labels = scales::percent)

# Adding points and a dashed line
ggplot(unfair_mario_difficulty, aes(x = level, y = p_win)) +
  geom_line() +
  geom_point() +
  geom_hline(yintercept = 0.10, linetype = "dashed") +
  scale_x_continuous(breaks = c(1:15)) +
  scale_y_continuous(labels = scales::percent)
 
