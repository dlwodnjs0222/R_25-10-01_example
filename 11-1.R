head(cars)
plot(dist~speed, data = cars)

model <- lm(dist~speed, cars)
model

abline(model)
coef(model)[1]
coef(model)[2]
