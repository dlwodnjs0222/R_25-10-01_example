library("car")
library("rgl")
library("mgcv")

tsne <- Rtsne(ds,dims = 3, perplexity = 10)
df.tsne <- data.frame(tsne$Y)
head(df.tsne)

scatter3d(x = df.tsne$X1, y = df.tsne$X2, z = df.tsne$X3)

points <- as.integer(ds.y)
color <- c('red', 'green', 'blue')
scatter3d(x = df.tsne$X1, y = df.tsne$X2, z = df.tsne$X3,
          point.col = color[points],
          surface = FALSE)

