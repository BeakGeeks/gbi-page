library(obisindicators)
library(dplyr)
library(here)
source(here("R/res_changes.R"))

df2grid <- function(df, HEX_RES, ES_NUMBER){
  occ <- df %>%
    group_by(
      decimalLongitude, decimalLatitude, species, year) %>%  # remove duplicate rows
    # In OBIS it's date_year and it's calculated for all records I believe, I'm not
    # sure if the same is true for year in GBIF- how do we check?
    filter(!is.na(species))  %>%
    summarize(
      records = n(),
      .groups = "drop") %>%
    collect()
  grid <- res_changes(occ, resolution=HEX_RES, esn=ES_NUMBER)
}