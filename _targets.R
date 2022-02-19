library(targets)
# Then, run tar_make() to run the pipeline
# and tar_read(summary) to view the results.

# Define custom functions and other global objects.
# This is where you write source(\"R/functions.R\")
# if you keep your functions in external scripts.
summ <- function(dataset) {
  summarize(dataset, mean_x = mean(x))
}

# Set target-specific options such as packages.
tar_option_set(packages = c("dplyr", "psych"))

# End this file with a list of target objects.
list(
  tar_target(data, read.csv("data/iris_dataset.csv")),
  tar_target(summary, describe(data[, -5])) # Call your custom functions as needed.
)
