library(ggplot2)
library(Rtsne)

ds <- iris[,-5]

dup = which(duplicated(ds))
dup

ds <- ds[-dup,]
ds.y <- iris$Species[-dup]

tsne <- Rtsne(ds,dims = 2, perplexity = 10)

df.tsne <- data.frame(tsne$Y)
head(df.tsne)

ggplot(df.tsne, aes(x = X1, y = X2, color = ds.y)) + 
  geom_point(size = 2)

