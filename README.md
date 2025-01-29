# setup

``` bash
sudo apt-get install r-base libfontconfig1-dev libcurl4-openssl-dev libharfbuzz-dev libfribidi-dev libxml2-dev libfreetype6-dev libpng-dev libtiff5-dev libjpeg-dev
sudo apt-get install libgsl-dev libgdal-dev
```

``` r
remotes::install_github("marinebon/obisindicators")
remotes::install_github("r-barnes/dggridR")
```

## howto

* download data from GBIF
* put .csv file into `./data/` named `/gbif-export.csv`
* `quarto preview`


### example download info from GBIF
```
 DOI: https://doi.org/10.15468/dl.asdh6h (may take some hours before being active)
Creation Date: 20:05:07 27 January 2025
Records included: 5248107 records from 64 published datasets
Compressed data size: 564.7 MB
Download format: simple tab-separated values (TSV)
Filter used:

{
  "and" : [
    "Geometry POLYGON((-82.95269 27.45034,-82.27774 27.45034,-82.27774 28.11609,-82.95269 28.11609,-82.95269 27.45034))",
    "OccurrenceStatus is Present",
    "TaxonKey is Aves"
  ]
}
```

## external links
-   [R obisindicators package](https://github.com/marinebon/obisindicators)
-   [GBIF ES50 inspiration](https://data-blog.gbif.org/post/exploring-es50-for-gbif/)
-   OBIS ES50 grid
      * Berghe, E. V., Halpin, P. P., da Silveira, F. L., Stocks, K., & Grassle, F. (2010). Integrating biological data into ocean observing systems: the future role of OBIS. Proc. OceanObs, 9.
-   [OBIS indicator work](https://obis.org/indicators/)
-   ES50 index definition
      * Hurlbert, S. H. (1971). The nonconcept of species diversity: a critique and alternative parameters. Ecology, 52(4), 577-586.
-   [hex gridding info](https://github.com/r-barnes/dggridR/)