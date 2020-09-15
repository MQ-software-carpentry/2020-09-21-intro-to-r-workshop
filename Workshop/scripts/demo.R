#
# A very quick demonstation of the sorts of things your can do with R
#

# Heres a change so we can save it to Git

# and this is attributed to the right person

# Load the GGPLOT2 library
library(ggplot2)

# The dataset 'diamonds' in included with the ggplot library
View(diamonds)

# Generate a Plot 
ggplot(diamonds) + 
  geom_point(aes(x=carat, y=price, color=cut)) + 
  geom_smooth(aes(x=carat, y=price))

# ... and a couple of built-in demos
demo(graphics)
