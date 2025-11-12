gc <- geocode(enc2utf8("¼³¾Ç»ê"))
cen <- as.numeric(gc)
map <- get_googlemap(center = cen, zoom = 9, 
                     size = c(640, 640),
                     maptype = "roadmap")
ggmap(map)
