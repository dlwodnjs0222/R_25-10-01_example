library(ggmap)
register_google(key = 'API key')

gc <- geocode(enc2utf8("Á¾·Î±¸"))
gc

cen <- as.numeric(gc)
cen

map <- get_googlemap(center = cen)
ggmap(map)
