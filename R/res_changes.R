# copied from
# https://github.com/USF-IMARS/global-obis-es50/blob/main/use_gbif_parquet_file.Rmd

# NOTE: not sure if we need all these
library(obisindicators)
library(dplyr)
library(dggridR) # remotes::install_github("r-barnes/dggridR")
library(sf)
library(arrow)
# library(magick)
library(ggplot2)
# function to create hex grid, calculate metrics for different resolution grid sizes
res_changes <- function(occur, resolution = 13){
  dggs <- dgconstruct(projection = "ISEA", topology = "HEXAGON", res = resolution)
  occur$cell <- dgGEO_to_SEQNUM(dggs, occur$decimalLongitude, occur$decimalLatitude)[["seqnum"]]
  idx <- obisindicators::calc_indicators(occur, esn=ES_NUMBER)
  
  grid <- dgcellstogrid(dggs, idx$cell) %>%
    st_wrap_dateline() %>%
    rename(cell = seqnum) %>%
    left_join(
      idx,
      by = "cell")
  return(grid)
}