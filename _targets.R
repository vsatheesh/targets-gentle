library(targets)

# Set target-specific options such as packages.
tar_option_set(packages = c("dplyr", "psych"))

# End this file with a list of target objects.
list(
  tar_target(data, read.csv("data/iris_dataset.csv")),
  tar_target(summary, describe(data[, -5])) # Call your custom functions as needed.
)
