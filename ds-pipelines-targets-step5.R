# Libraries

    library(dplyr)
    library(readr)
    library(stringr)
    library(sbtools)
    library(whisker)

# model input data
    
    model_data <- paste('1_fetch/out/outmodel_RMSEs.csv') # model RMSE output file
    
# functions
    
    source('1_fetch/src/getData.R')
    source('2_process/src/prepData.R')
    source('3_visualize/src/plotData.R')
    source('2_process/src/saveDiagnostics.R')
    
# Download data - desired output file name, ScienceBase item number, ScienceBase item file name
  
    fetchData(model_data, '5d925066e4b0c4f70d0d0599', 'me_RMSE.csv')
  
# Process data
  
    eval_data <- prepData(model_data)

# Plot data   
      
    plotData('3_visualize/out/figure_1.png')

# Save processed data
        
    readr::write_csv(eval_data, file = file.path('2_process/out/model_summary_results.csv'))
        
# Model diagnostics
        
    saveDiagnostics(eval_data, '2_process/out/model_diagnostic_text.txt')
    