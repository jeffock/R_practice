# lib
library(plotly)

# Data: volcano is provided by pkg

# plot
p <- plot_ly(z = volcano, type = "surface")
p

library(htmlwidgets)
saveWidget(p, file=paste0( getwd(), "/HtmlWidget/3dSurface.html"))

