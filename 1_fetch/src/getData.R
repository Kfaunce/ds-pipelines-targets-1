fetchData <- function (output_fileName, itemNumber, itemName) { # Get the data from ScienceBase
      
      mendota_file <- file.path(output_fileName)
      item_file_download(itemNumber, names = itemName, destinations = mendota_file, overwrite_file = TRUE)
      
    }