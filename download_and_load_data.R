download_and_load <- function(dataset_id, unzip_dir) {
  # Veri setini indir
  system(paste0("kaggle datasets download -d ", dataset_id, " -p ", unzip_dir))
  
  # ZIP dosyasını aç
  zip_file <- list.files(unzip_dir, pattern = "\\.zip$", full.names = TRUE)
  unzip(zip_file, exdir = unzip_dir)
  
  # Veri setini oku
  csv_file <- list.files(unzip_dir, pattern = "\\.csv$", full.names = TRUE)
  data <- read.csv(csv_file)
  return(data)
}

# Fonksiyonu çağırarak bir veri seti indirin ve okuyun
data <- download_and_load("owner-name/dataset-name", "./data")
head(data)
