```{r}
# Figure 4 combined plot

library(grid)
library(gridExtra)

fig4 <- grid.arrange(fig4a, fig4b, nrow = 1)

ggsave(fig4, filename = "./Figures and Tables/figure 4.png", height = 6, width = 16, dpi = 300)
```