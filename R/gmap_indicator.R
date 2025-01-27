# copied from
# https://github.com/marinebon/obisindicators/blob/main/R/visualize.R
gmap_indicator <- function(
    grid, column = "shannon", label = "Shannon index", trans = "identity",
    crs="+proj=robin +lon_0=0 +x_0=0 +y_0=0 +ellps=WGS84 +datum=WGS84 +units=m +no_defs"){
  
  # grid; column = "sp"; label = "Species Richness"
  # trans = "identity"; crs="+proj=robin +lon_0=0 +x_0=0 +y_0=0 +ellps=WGS84 +datum=WGS84 +units=m +no_defs"
  
  world <- rnaturalearth::ne_countries(scale = "medium", returnclass = "sf")
  bb <- sf::st_bbox(
    st_transform(grid, crs))
  
  p <- ggplot() +
    geom_sf(
      data = world, fill = "#dddddd", color = NA) +
    geom_sf(
      data = grid, aes_string(
        fill = column, geometry = "geometry"), lwd = 0, color=NA) +
    # viridis::scale_color_viridis(
    #   option = "inferno", na.value = "white",
    #   name = label, trans = trans) +
    viridis::scale_fill_viridis(
      option = "inferno", na.value = "white",
      name = label, trans = trans, alpha=0.5) +
    theme(
      panel.grid.major.x = element_blank(),
      panel.grid.major.y = element_blank(),
      panel.grid.minor.x = element_blank(),
      panel.grid.minor.y = element_blank(),
      panel.background = element_blank(),
      axis.text.x = element_blank(),
      axis.text.y = element_blank(),
      axis.ticks = element_blank(),
      axis.title.x = element_blank(),
      axis.title.y = element_blank()) +
    xlab("") + ylab("") +
    coord_sf(
      crs  = crs,
      xlim = bb[c("xmin","xmax")],
      ylim = bb[c("ymin","ymax")])
  return(p)
}