# Script to download data from Kaggle
# This script downloads datasets using the Kaggle API on Windows.
# For more information: https://www.kaggle.com/docs/api
download_and_load <- function(dataset_id, unzip_dir) {
  # Download the dataset
  system(paste0("kaggle datasets download -d ", dataset_id, " -p ", unzip_dir))
  
  # Extract the ZIP file
  zip_file <- list.files(unzip_dir, pattern = "\\.zip$", full.names = TRUE)
  unzip(zip_file, exdir = unzip_dir)
  
  # Read the dataset
  csv_file <- list.files(unzip_dir, pattern = "\\.csv$", full.names = TRUE)
  data <- read.csv(csv_file)
  return(data)
}

# Call the function to download and read a dataset
data <- download_and_load("owner-name/dataset-name", "./data")
head(data)

