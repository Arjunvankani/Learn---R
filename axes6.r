library(plotly)
s <- seq(1, 8)
fig <- plot_ly(x = ~s)
fig <- fig %>% add_trace(y = ~exp(s), name = "exponential")
fig <- fig %>% add_trace(y =  ~s, name = "linear")
fig <- fig %>% layout(yaxis = list(type = "log"))

fig

  