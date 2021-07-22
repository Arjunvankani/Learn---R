library(plotly)

fig <- plot_ly(orientation='h', line=list(color='gray'), height=400, width=600)
fig <- fig %>% add_boxplot(x=c(2,3,1,5), y=c('A','A','A','A'), name='A')
fig <- fig %>% add_boxplot(x=c(8,3,6,5), y=c('B','B','B','B'), name='B')
fig <- fig %>% add_boxplot(x=c(2,3,2,5), y=c('C','C','C','C'), name='C')
fig <- fig %>% add_boxplot(x=c(7.5,3,6,4), y=c('D','D','D','D'), name='D')
fig <- fig %>% layout(
  title = '',
  yaxis = list(
    autorange = TRUE, 
    categoryorder = "category descending", 
    domain = c(0, 1), 
    range = c(-0.5, 3.5), 
    showline = TRUE, 
    title = "", 
    type = "category"
  ),
  margin = list(
    r = 10, 
    t = 25, 
    b = 40, 
    l = 110
  ),
  legend = list(
    x = 0.986145833333, 
    y = 0.936263886049
  ), 
  shapes = list(
    list(
      line = list(
        color = "rgba(68, 68, 68, 0.5)", 
        width = 1
      ), 
      type = "line", 
      x0 = -0.3, 
      x1 = 1.2, 
      xref = "paper", 
      y0 = 0.5, 
      y1 = 0.5, 
      yref = "paper"
    ), 
    list(
      line = list(
        color = "rgba(68, 68, 68, 0.63)", 
        width = 1
      ), 
      type = "line", 
      x0 = -0.3, 
      x1 = 1.2, 
      xref = "paper", 
      y0 = 1, 
      y1 = 1, 
      yref = "paper"
    )
  ),
  annotations = list(
    list(
      x = -0.0951769406393, 
      y = 1.06972670892, 
      showarrow = FALSE, 
      text = "Subgroup", 
      xref = "paper", 
      yref = "paper"
    ), 
    list(
      x = -0.235516552511, 
      y = 1.07060587474, 
      showarrow = FALSE, 
      text = "Group", 
      xref = "paper", 
      yref = "paper"
    ), 
    list(
      x = -0.235516552511, 
      y = 0.922906017856, 
      showarrow = FALSE, 
      text = "One", 
      xref = "paper", 
      yref = "paper"
    ), 
    list(
      x = -0.235516552511, 
      y = 0.375, 
      showarrow = FALSE, 
      text = "Two", 
      xref = "paper", 
      yref = "paper"
    )
  )
)

fig

