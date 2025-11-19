library(car)
head(Prestige)

newdata <- Prestige[c(1:4)]
plot(newdata, pch = 16, col = "blue",
         main = "MatrixScatterplat")

modl <- lm(income ~ education + prestige + 
             women, data = newdata)
summary(modl)
