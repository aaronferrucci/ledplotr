source("sequence.R")
source("plot.R")

# sequence of minute values, from 1:00 to 12:59
sequence <- 0:(23*60+59)

# transform to RGB-space
rgbs <- get_rgbs(sequence)
p <- makeplot(rgbs)
print(p)

