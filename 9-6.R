sp <- sample(1 : nrow(wind), 50)
df <- wind[sp,]
head(df)

cen <- c(mean(df$lon), mean(df$lat))
gc <- data.frame(lon = df$lon, lat = df$lat)
head(gc)

map <- get_googlemap(center = cen,
                     maptype = "roadmap",
                     zoom = 6,
                     marker = gc)

ggmap(map)

map <- get_googlemap(center = cen,
                     maptype = "roadmap",
                     zoom = 6)

gmap <- ggmap(map)
gmap + geom_point(data = df,
                  aes(x = lon, y = lat, size = spd),
                  alpha = 0.5,
                  col="blue") + 
  scale_size_continuous(range = c(1, 14))
