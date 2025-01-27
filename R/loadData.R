loadData <- function(){
    gbif_example_data <- data.frame(
    decimalLatitude = c(27.94, 27.77, 27.89, 27.96, 27.91, 27.85, 27.76, 27.92, 27.88, 27.95, 27.82, 27.79),
    decimalLongitude = c(-82.46, -82.63, -82.71, -82.45, -82.51, -82.58, -82.64, -82.49, -82.53, -82.44, -82.67, -82.55),
    eventDate = c("2024-01-15", "2024-01-20", "2024-01-22", "2024-01-25", "2024-01-26", "2024-01-27", 
                "2024-01-28", "2024-01-29", "2024-01-30", "2024-01-31", "2024-02-01", "2024-02-02"),
    occurrenceID = c("tampa-observation-1", 
                    "tampa-observation-2",
                    "tampa-observation-3",
                    "tampa-observation-4",
                    "tampa-observation-5",
                    "tampa-observation-6",
                    "tampa-observation-7",
                    "tampa-observation-8",
                    "tampa-observation-9",
                    "tampa-observation-10",
                    "tampa-observation-11",
                    "tampa-observation-12"),
    species = c("Canada Goose", "White Ibis", "Sandpiper", "Osprey", "American Robin", "Killdeer", "White Pelican", "Northern Cardinal", "Bald Eagle", "Common Grackle", "American Crow", "Blue Jay")
    ) |>
    transform(year = as.numeric(substr(eventDate, 1, 4)))
    return(gbif_example_data)
}