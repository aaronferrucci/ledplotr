# LED clock

# AB:CD
# A: tens of hours, red
# B: ones of hours, green
# C: tens of minutes, blue
# D: ones of minutes, red
#
# The clock counts from 1:00 to 12:59 and then repeats (12-hour mode)
# Considering each of the three colors as a dimension in a 3-D space,
# let position in the space on each axis be the number of LEDs of
# lit LEDs of the axis color, there's a trajectory loop in the space.

# Step 1: sequence of minute values, from 1:00 to 12:59
sequence <- 60:(12*60+59)

one_minutes <- function(x) {
  return(x %% 60 %% 10);
}

ten_minutes <-  function(x) {
  return(floor(x %% 60 / 10));
}

one_hours <- function(x) {
  return(floor(x / 60) %% 10);
}

ten_hours <- function(x) {
  return(floor(x / 600));
}

digitize <- function(x) {
  return(c(ten_hours(x), one_hours(x), ten_minutes(x), one_minutes(x)));
}

to_rgb <- function(digits) {
  # indices go         1        2            3           4
  #            ten-hours one-hours ten-minutes one-minutes
  #                    R         G           B           R
  return(c(digits[1] + digits[4], digits[2], digits[3]));
}

get_rgbs <- function() {
  digits <- lapply(sequence, FUN=digitize);
  rgbs <- lapply(digits, FUN=to_rgb);

  return(rgbs);
}

# To do: use a data structure appropriate to plot_ly(). data frame
# with red, green, blue? Example here: https://plot.ly/r/3d-line-plots/
#

