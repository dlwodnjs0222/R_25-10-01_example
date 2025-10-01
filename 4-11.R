norow <- nrow(iris)
mylabel <- c()
for (n in 1:norow) {
  if (iris$Petal.Length[n] <= 1.6){
    mylabel[n] <- 'L'
  }else if(iris$Petal.Length[n] >= 5.1){
    mylabel[n] <- 'H'
  } else{
    mylabel[n] <- 'M'
  }
}

print(mylabel)
newds <- data.frame(iris$Petal.Length, mylabel)
head(newds)
