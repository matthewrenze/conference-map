# Load packages
library(ggmap)
library(leaflet)
library(dplyr)

# Set working directory
setwd("C:/Work/School/Products/Projects/Project 2")

# Read data from CSV
presentations <- read.csv("Presentations.csv")

locations <- geocode(as.character(presentations$Location))

presentations <- cbind(presentations, locations)

conferences <- presentations %>%
  group_by(Location, lon, lat) %>%
  summarize(Presentations = n())

write.csv(
  x = conferences, 
  file = "Conferences.csv", 
  row.names = FALSE)