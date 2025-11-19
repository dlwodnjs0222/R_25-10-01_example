gc <- geocode(enc2utf8("¿ëÀÎ"))
cen <- as.numeric(gc)
map <- get_googlemap(center = cen,
                     maptype = "roadmap",
                     markers = gc)
ggmap(map)
