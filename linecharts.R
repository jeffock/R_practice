# src: https://sites.harding.edu/fmccown/r/

# vector definition:
vector <- c(1, 3, 6, 4, 9)

# simple dot plot:
plot(vector, type="o", col="blue")
title(main="practice", col.main="blue", font.main=4)

# open file
system('open Rplots.pdf')
