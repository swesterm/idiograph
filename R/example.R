example <- function()
{
# example from http://www.sthda.com/english/articles/32-r-graphics-essentials/128-plot-time-series-data-using-ggplot/
library(ggplot2)
theme_set(theme_minimal())
# Demo dataset
head(economics)
library(tidyr)
library(dplyr)
df <- economics %>%
  select(date, psavert, uempmed) %>%
  gather(key = "variable", value = "value", -date)
head(df, 3)
ggplot(df, aes(x = date, y = value)) + 
  geom_area(aes(color = variable, fill = variable), 
            alpha = 0.5, position = position_dodge(0.8)) +
  scale_color_manual(values = c("#00AFBB", "#E7B800")) +
  scale_fill_manual(values = c("#00AFBB", "#E7B800"))
}