library(plotly)

fig <- plot_ly(
  width = 800,
  height = 500
)
fig <- fig %>% add_trace(
  x = c(0,1,1,0,0,1,1,2,2,3,3,2,2,3),
  y = c(0,0,1,1,3,3,2,2,3,3,1,1,0,0),
  mode = 'lines'
)
fig <- fig %>% add_trace(
  x = c(0,1,2,3),
  y = c(1,2,4,8),
  yaxis = "y2",
  mode = 'lines'
)
fig <- fig %>% add_trace(
  x = c(1,10,100,10,1),
  y = c(0,1,2,3,4),
  xaxis = "x2",
  yaxis ="y3",
  mode = 'lines'
)
fig <- fig %>% add_trace(
  x = c(1,100,30,80,1),
  y = c(1,1.5,2,2.5,3),
  xaxis = "x2",
  yaxis = "y4",
  mode = 'lines'
)
fig <- fig %>% layout(
  title = "fixed-ratio axes",
  xaxis = list(
    nticks = 10,
    domain = c(0, 0.45),
    title = "shared X axis"
  ),
  yaxis = list(
    scaleanchor = "x",
    domain = c(0, 0.45),
    title = "1:1"
  ),
  yaxis2 = list(
    scaleanchor = "x",
    scaleratio = 0.2,
    domain = c(0.55,1),
    title = "1:5"
  ),
  xaxis2 = list(
    type = "log",
    domain = c(0.55, 1),
    anchor = "y3",
    title = "unconstrained log X"
  ),
  yaxis3 = list(
    domain = c(0, 0.45),
    anchor = "x2",
    title = "Scale matches ->"
  ),
  yaxis4 = list(
    scaleanchor = "y3",
    domain = c(0.55, 1),
    anchor = "x2",
    title = "Scale matches <-"
  ),
  showlegend= FALSE
)

fig