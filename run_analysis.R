run_analysis <- function() { 
      
    ## Reads list of features and remove illegal characters 
     ## Referenced from ?make.names in R documentation 
     features <- read.table("UCI_HAR_Dataset/features.txt", colClasses = "character") 
     features[,2] <- gsub("\\(|\\)","",features[,2]) 
     features[,2] <- gsub("-|,","_", features[,2]) 
     features[,2] <- tolower(features[,2]) 

