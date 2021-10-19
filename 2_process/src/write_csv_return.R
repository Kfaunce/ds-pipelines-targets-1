# Wrapper function to write csvs within the target framework

write_csv_return <- function(data, out_filepath) {
  
  readr::write_csv(data, file = out_filepath)
  
  return(out_filepath)
  
}