# Libraries

    library(dplyr)
    library(readr)
    library(stringr)
    library(sbtools)
    library(whisker)

# Paths and filenames
  
    fetch_output_dir <- 'fetch/out/' # fetch output directory
    process_output_dir <- 'process/out/' # process output directory
    fetch_src_dir <- 'fetch/src/'
    process_src_dir <- 'process/src/'
    
    model_data <- paste(fetch_output_dir, 'model_RMSEs.csv') # model RMSE output file
    
# functions
    
    source(paste0(fetch_src_dir, '1_getData.R'))
    source(paste0(process_src_dir, '2_prepData.R'))
    source(paste0(process_src_dir, '3_plotData.R'))
    source(paste0(process_src_dir, '4_saveDiagnostics.R'))
    
# Download data - desired output file name, ScienceBase item number, ScienceBase item file name
  
    fetchData(model_data, '5d925066e4b0c4f70d0d0599', 'me_RMSE.csv')
  
# Process data
  
    eval_data <- prepData(model_data)

# Plot data   
      
    plotData('figure_1.png')

# Save processed data
        
    readr::write_csv(eval_data, file = file.path(process_output_dir, 'model_summary_results.csv'))
        
# Model diagnostics
        
    saveDiagnostics(eval_data, 'model_diagnostic_text.txt')
    