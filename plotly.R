# lib
library(plotly)
library(htmlwidgets)

# Data: volcano is provided by pkg

# plot
p <- plot_ly(z = volcano, type = "surface")
p

# saveWidget(p, file=paste0( getwd(), "/HtmlWidget/3dSurface.html"))
saveWidget(p, file="3Dsurface.html")
