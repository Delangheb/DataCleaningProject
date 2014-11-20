run_analysis <- function() {
  
  ##load the dplyr package
  library(dplyr)
  ##load the stringr package - needed for the string replace for nice column names
  library(stringr)
  
  ##construct the test data
  ##note: additional data column dataType is introduced to indicate this is the 'test' data
  test_data_file      <- "test/X_test.txt"
  test_subject_file   <- "test/subject_test.txt"
  test_activity_file  <- "test/y_test.txt"
  test_data           <- prepareData(test_data_file, test_subject_file, test_activity_file , "Test")
  
  ##construct the train data
  ##note: additional data column dataType is introduced to indicate this is the 'test' data
  train_data_file     <- "train/X_train.txt"
  train_subject_file  <- "train/subject_train.txt"
  train_activity_file <- "train/y_train.txt"
  train_data          <- prepareData(train_data_file, train_subject_file, train_activity_file, "Train")
  
  ##combine the test and train data using rbind
  x_data <- rbind(test_data, train_data)
  
  ##summarize the data by Subject and Actitity
  df_data <- tbl_df(x_data)
  data <- df_data %>% group_by(Subject, Activity) %>% summarise_each(funs(mean), -type)
  ##write to file
  write.table(data, file = "output.txt", row.names=FALSE)
  
  ##output th data
  data
}


prepareData<- function(data_file, subject_file, activity_file, dataType) {
  ## create the data in requested format
  ### read the data file
  ### introduce column names
  ### select only comlumns with mean or std values
  ### translate the activity types
  ### read the subject file and 'glue' it in from of the data file
  ### introduce an extra column to indicate the type of data: Test or Train
  
  
  ##extract the required measurements from the data file
  data       <- create_data(data_file)
  
  ##extract the test subjects from the data file
  subjects   <- read.table(subject_file, col.names=c("Subject"))
  
  ##extract the activities from the data file
  activities <- translate_activity_labels(activity_file)
  
  #combine everything
  combData <- cbind(subjects, activities, type = dataType, data)
  combData
}

create_data <- function(data_file) {
  ##returns a dplyr dataframe containing the data with column names and just returning the mean() and std() measures
  
  file <- "features.txt"
  col_names <- tbl_df(read.table(file, col.names=c("Index", "Name")))
  ##here we can do some replacing of the col names
  scol_names <- mutate(col_names, SimplName = str_replace_all(Name, "[()]", ""))
  
  
  full_data <- tbl_df(read.table(data_file, col.names = scol_names$SimplName))
  
  req_data <- select(full_data, contains("mean."), contains("std."))
  req_data
  
} 

translate_activity_labels <- function(dataFile) {

  ##returns a dplyr dataframe containing the translated name of the activity types
  ##  Contents:
  ##1 WALKING
  ##2 WALKING_UPSTAIRS
  ##3 WALKING_DOWNSTAIRS
  ##4 SITTING
  ##5 STANDING
  ##6 LAYING
  
  ##read the labels from the file
  file <- "activity_labels.txt"
  labels <- tbl_df(read.table(file, col.names = c("ID", "Activity")))
  
  ##read the activities
  dataFrame <- tbl_df(read.table(dataFile))
  
  ##join the dataFrame and the labels frame to translate the activity codes
  translated <- inner_join(dataFrame, labels, by = c("V1" = "ID")) ## join by V1 column
  
  ## return the translated Activity column
  translated["Activity"] 

}




