library(mlbench)
data("BostonHousing")
myds <- BostonHousing[,c("crim", "rm", "dis", "tax", "medv")]

grp <- c()
for (i in 1:nrow(myds)) {
  if (myds$medv[i] >= 25.0){
    grp[i] <- "H"
  } else if (myds$medv[i] <= 17.0) {
    grp[i] <- "L"
  } else {
    grp[i] <- "M"
  }
}

grp <- factor(grp)
grp <- factor(grp, levels = c("H", "M", "L"))

myds <- data.frame(myds, grp)

str(myds)
head(myds)
table(myds$grp)

par(mfrow = c(2,3))
for(i in 1:5) {
  hist(myds[,i], main = colnames(myds)[i], col = "yellow")
}

par(mfrow = c(1,1))    

par(mfrow = c(2,3))
for(i in 1:5) {
  hist(myds[,i], main = colnames(myds)[i])
}

par(mfrow=c(1,1))

boxplot(myds$crim~myds$grp, main = "1인당 범죄율")
boxplot(myds$rm~myds$grp, main = "방의 수")
boxplot(myds$dis~myds$grp, main = "직업센터까지의 거리")
boxplot(myds$tax~myds$grp, main = "재산세")

pairs(myds[,-6])

point <- as.integer(myds$grp)
color <- c("red", "green", "blue")
pairs(myds[,-6], pch = point, col = color)

cor(myds[,-6])

