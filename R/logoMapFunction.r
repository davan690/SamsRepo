Rlogo = file.path(R.home('doc'), 'html', 'logo.jpg')

points = cbind(lon=c(-83.738233,-83.7582789), lat=c(42.280799, 42.2668577)) # latitude and longitude locations

library(leaflet)
leaflet() %>%                                                           # base plot nothing to see
  addTiles() %>%                                                        # base plot, the whole world
  setView(mean(points[,1]), mean(points[,2]), zoom = 14) %>%            # set location
  addMarkers(points[,1], points[,2],                                    # add points etc.
             icon=list(iconUrl=c('../img/Rlogo.png', 'img/UM.png'),
                       iconSize = c(75, 75)),
             popup = c('CSCAR', 'Big House'))