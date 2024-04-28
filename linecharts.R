# src: https://sites.harding.edu/fmccown/r/

# vector definition:
vector <- c(1, 3, 6, 4, 9)

# simple dot plot:
plot(vector, type = "o", col = "blue")
title(main = "practice", col.main = "blue", font.main = 4)

# open file
# system('open Rplots.pdf')

csvdata <- read.table("chol.csv", header = TRUE, sep = ",", 
                      colClasses = c("NULL", "numeric", "numeric"))
names(csvdata)[names(csvdata) == "A"] <- "Before"
names(csvdata)[names(csvdata) == "B"] <- "After"

library(ggplot2)
library(dplyr)
library(tidyr)
library(hrbrthemes)
hrbrthemes::import_roboto_condensed()

# src: https://r-graph-gallery.com/histogram_several_group.html

p <- csvdata %>%
    gather(key = "type", value = "value", Before, After) %>%
    ggplot(aes(x=value, fill=type)) +
    geom_histogram(binwidth = 1, color="#e9ecef", alpha=0.6, position='identity') +
    scale_fill_manual(values=c("#69b3a2", "#404080")) +
    theme_ipsum() +
    labs(fill="")
p

library(htmlwidgets)
# saveWidget(p, file=paste0( getwd(), "/HtmlWidget/3dSurface.html"))
saveWidget(p, file="histogram.html")
