download_data <- function (out_filepath) { # Get the data from ScienceBase
  
  mendota_file <- file.path(out_filepath)
  item_file_download('5d925066e4b0c4f70d0d0599', names = 'me_RMSE.csv', destinations = mendota_file, overwrite_file = TRUE)
  
}
