library(plotly)
f1 <- list(
  family = "Arial, sans-serif",
  size = 18,
  color = "lightgrey"
)
f2 <- list(
  family = "Old Standard TT, serif",
  size = 14,
  color = "black"
)
a <- list(
  title = "AXIS TITLE",
  titlefont = f1,
  showticklabels = TRUE,
  tickangle = 45,
  tickfont = f2,
  exponentformat = "E"
)

s <- seq(1e6, 1e7, length.out = 10)
fig <- plot_ly(x = ~s, y = ~s)
fig <- fig %>% add_markers()
fig <- fig %>% add_markers(y = ~rev(s))
fig <- fig %>% layout(xaxis = a, yaxis = a, showlegend = FALSE)

fig

