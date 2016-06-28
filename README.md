# ledplotR

LED clock

AB:CD<p>
A: tens of hours, red<p>
B: ones of hours, green<p>
C: tens of minutes, blue<p>
D: ones of minutes, red<p>

The clock counts from 0:00 to 23:59 and then repeats (24-hour mode)
Considering each of the three colors as a dimension in a 3-D space,
let position in the space on each axis be the number of LEDs of
lit LEDs of the axis color. Then there's a trajectory loop in the space. 
This project visualizes that trajectory.

How-to:
* load the R project
* source("main.R")
