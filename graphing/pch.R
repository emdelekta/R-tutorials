# Show All `pch` Options
# This code comes from a Geeks for Geeks article (https://www.geeksforgeeks.org/r-language/r-plot-pch-symbols-different-point-shapes-available-in-r/)

# load library tidyverse
library(tidyverse)

# create dataframe of 26 character to 
# visualize the 26 characters
df <- data.frame(p=c(0:25)) %>%
            mutate(x = rep(seq_len(ceiling(n()/6)), 
                  each = 6,
                  length.out = n())) %>%
                  group_by(x)%>%
                  mutate(y=1:n()) 

# create plot using ggplot function 
# shape parameter is used to shape points
ggplot(df, aes(x = x, y = y, shape = p),) +
  scale_shape_identity() +
  geom_point( size = 6, fill = "green")+

# geom_text function is used to label data points
# with pch value
geom_text(aes(x = x - 0.3, y = y,
                label = paste0("pch =",p)), size = 3)
