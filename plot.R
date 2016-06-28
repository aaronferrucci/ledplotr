# Example here: https://plot.ly/r/3d-line-plots/
library(plotly)
makeplot <- function(rgbs) {
  p <- plot_ly(rgbs, x=red, y=green, z=blue, color=time, type="scatter3d")
  return(p)
}

