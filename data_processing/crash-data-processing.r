library(tidyverse)

crashes <- read.csv("data/Motor_Vehicle_Collisions_-_Crashes (1).csv")

# Select only the date and time columns from the crash data, and only year 2024
crashes_filtered <- crashes |>
  select("CRASH.DATE", "CRASH.TIME") |>
  mutate(
    date_parsed = as_date(`CRASH.DATE`, format = "%m/%d/%Y")
    ) |>
  filter(year(date_parsed) == 2024)

write.csv(crashes_filtered, "crash_data_date_time.csv", row.names = FALSE)