library(leaflet)

setwd("C:/Work/School/Products/Projects/Project 2")

conferences <- read.csv("Conferences.csv")

leaflet() %>%
  addTiles() %>%
  addMarkers(
    lng = conferences$lon,
    lat = conferences$lat,
    popup = conferences$Location)


