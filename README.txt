##Creation of the Output.txt DataSet
The contents of the dataSet output.txt can be produced using the run_analysis() function of the run_analysis.R file. 

###Prerequisites
* The function makes use of the dplyr and stringr libraries

* the working directory should be set as follows :
	working directory
	    +-- run_analysis.R
	    +-- activity_labels.txt
	    +-- features.txt
	    +-- features_info.txt
	    +-- /test
		  +-- subject_test.txt
                  +-- X_test.txt
                  +-- y_test.txt
	    +-- /train
		  +-- subject_train.txt
		  +-- X_train.txt
	          +-- y_train.txt

##DataSet creation
Use function run_analysis()
	run_analysis() or var <- run_analysis()

## run_analysis.R
This R file contains the main function run_analysis() and several helper functions.

### run_anaylis()
This function will produce the output.txt data file and return a variable with it contents

### prepareData(data_file, subject_file, activity_file, dataType)
This file will produce the required data with columnnames, translated activities, subject and a column indicating if this data concerns 'Test' or 'Train' data
#### Inputs
* data_file = path to a file containing (X-) measurements (test/X_test.txt or train/X_train.txt).
* subject_file = path to a file containing the id of the test subjects, corresponding to the data_file (test/subjet_test.txt or train/subject_train.txt)
* activity_file = path to a file containing the raw activities, corresponding to the data_file (test/y_test.txt or train/y_train.txt)
* dataType = variable indicating the type of data ('Test' or 'Train')

### create_data(data_file)
This function will read the (X-) measurement data, add column names and extract the mean and std variables from the measurements.
Columns names are added/filtered based on the names in the features_info.txt
#### Inputs
* data_file = path to a file containing (X-) measurements (test/X_test.txt or train/X_train.txt).

### translate_activity_labels(dataFile)
This function will translate the raw activities from a activity file (test/y_test.txt or train/y_train.txt) based on the activity_labels.txt.
#### Inputs
* data_file = path to a file containing raw activities (test/y_test.txt or train/y_train.txt)



