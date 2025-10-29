library(ggplot2)

ggplot(iris, aes(x = Petal.Length)) + 
  geom_histogram(binwidth = 0.5)
