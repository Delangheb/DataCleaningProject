Human Activity Recognition Using Smartphones Dataset
===========================================================
Background
-----------------------------------------------------------
The experimnts have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

DataSet Content
-----------------------------------------------------------
For each record in the output.txt dataSet is provided:

* Subject : An identifier of the subject who carried out the experiment.
* Activity: Refers to the activity being executed when measuring. It is one of the following activities : WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING or STANDING,LAYING
* A feature vector with the average values of mean and standard deviation variables grouped per subject and activity type. It concerns the following variables :
 [1] "tBodyAcc.mean.Y"                    "tBodyAcc.mean.Z"                    "tGravityAcc.mean.X"                
 [4] "tGravityAcc.mean.Y"                 "tGravityAcc.mean.Z"                 "tBodyAccJerk.mean.X"               
 [7] "tBodyAccJerk.mean.Y"                "tBodyAccJerk.mean.Z"                "tBodyGyro.mean.X"                  
[10] "tBodyGyro.mean.Y"                   "tBodyGyro.mean.Z"                   "tBodyGyroJerk.mean.X"              
[13] "tBodyGyroJerk.mean.Y"               "tBodyGyroJerk.mean.Z"               "fBodyAcc.mean.X"                   
[16] "fBodyAcc.mean.Y"                    "fBodyAcc.mean.Z"                    "fBodyAccJerk.mean.X"               
[19] "fBodyAccJerk.mean.Y"                "fBodyAccJerk.mean.Z"                "fBodyGyro.mean.X"                  
[22] "fBodyGyro.mean.Y"                   "fBodyGyro.mean.Z"                   "angletBodyAccMean.gravity"         
[25] "angletBodyAccJerkMean.gravityMean"  "angletBodyGyroMean.gravityMean"     "angletBodyGyroJerkMean.gravityMean"
[28] "tBodyAcc.std.X"                     "tBodyAcc.std.Y"                     "tBodyAcc.std.Z"                    
[31] "tGravityAcc.std.X"                  "tGravityAcc.std.Y"                  "tGravityAcc.std.Z"                 
[34] "tBodyAccJerk.std.X"                 "tBodyAccJerk.std.Y"                 "tBodyAccJerk.std.Z"                
[37] "tBodyGyro.std.X"                    "tBodyGyro.std.Y"                    "tBodyGyro.std.Z"                   
[40] "tBodyGyroJerk.std.X"                "tBodyGyroJerk.std.Y"                "tBodyGyroJerk.std.Z"               
[43] "fBodyAcc.std.X"                     "fBodyAcc.std.Y"                     "fBodyAcc.std.Z"                    
[46] "fBodyAccJerk.std.X"                 "fBodyAccJerk.std.Y"                 "fBodyAccJerk.std.Z"                
[49] "fBodyGyro.std.X"                    "fBodyGyro.std.Y"                    "fBodyGyro.std.Z" 

The explanation on the measured variables can be found in the features_info.txt file.

Included Files
-----------------------------------------------------------
The dataset includes the following files:
* 'README.txt'

* 'output.txt' : average of each mean or std variable per activity and subject. This data set is produced when running the run_analysis() method from the run_analysis.R file.

* 'run_analysis.R' : R file used to produce the 'output.txt' data file (see above). It contains also other 'helper' functions. More info can be found in the comments of the R file.

* codebook.md : general description of the dataset


The following files are used to create the output.txt via run_analysis() or provide additional information concerning the measurements/variable

* 'features_info.txt': Shows information about the variables used on the feature vector.

* 'features.txt': List of all features.

* 'activity_labels.txt': Links the class labels with their activity name.

* 'train/X_train.txt': Training set.

* 'train/y_train.txt': Training labels.

* 'test/X_test.txt': Test set.

* 'test/y_test.txt': Test labels.


The following files are available for the train and test data. Their descriptions are equivalent. 

* 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

* 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

* 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

* 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 