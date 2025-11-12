library(ggmap)
register_google(key = 'AIzaSyC_IrSCsdWTK0n-JgRxeDQAKIwmg-LcpfI')

gc <- geocode(enc2utf8("Á¾·Î±¸"))
gc

cen <- as.numeric(gc)
cen

map <- get_googlemap(center = cen)
ggmap(map)
