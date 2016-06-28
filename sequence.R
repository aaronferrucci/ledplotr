# LED clock

# AB:CD
# A: tens of hours, red
# B: ones of hours, green
# C: tens of minutes, blue
# D: ones of minutes, red
#
# The clock counts from 0:00 to 23:59 and then repeats (24-hour mode)
# Considering each of the three colors as a dimension in a 3-D space,
# let position in the space on each axis be the number of LEDs of
# lit LEDs of the axis color, there's a trajectory loop in the space.

one_minutes <- function(x) {
  return(x %% 60 %% 10)
}

ten_minutes <-  function(x) {
  return(floor(x %% 60 / 10))
}

one_hours <- function(x) {
  return(floor(x / 60) %% 10)
}

ten_hours <- function(x) {
  return(floor(x / 600))
}

get_rgbs <- function(sequence) {
  rgbs <- data.frame(
    red = ten_hours(sequence) + one_minutes(sequence),
    green = one_hours(sequence),
    blue = ten_minutes(sequence),
    time = 1:length(sequence)
  )

  return(rgbs)
}



