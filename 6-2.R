vars <- c("mpg", "disp", "drat", "wt")
target <- mtcars[,vars]
head(target)

pairs(target, main = "Multi Plats")
