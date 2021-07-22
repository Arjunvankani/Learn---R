library(plotly)

fig <- plot_ly(x = c('A12','BC2','109','12F',215,304), y=c(1,6,3,5,1,4),type = 'bar',name = 'Team A',text = c('Apples','Pears','Peaches','Bananas','Pineapples','Cherries'))

fig <- fig %>% layout(title='Inventory',xaxis=list(type='category',title='Product Code'), yaxis= list(title='# of Items is Stock', range = c(0,7)))

fig

