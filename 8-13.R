library(ggplot2)

year <- 1937:1960
cnt <- as.vector(airmiles)
df <- data.frame(year, cnt)
head(df)

ggplot(data = df, aes(x = year, y = cnt)) + 
  geom_line(col = "red")
