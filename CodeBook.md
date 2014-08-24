==================================================================
Human Activity Recognition Using Smartphones Aggregate Meam Data
for Selected Measurements
Version 1.0
==================================================================

This codebook describes the variables, the data, and the transformations used to clean up the data from the original data source.

## Data Processing

### Original Data

There are  10299 observations of 563 variables in the complete original dataset but this data is split across several text files.

There are three main types of file:

X = contains 561 variables which are the measured features for each observation
y = contains 1 variable which is a coded for activity being performed for each observation
subject (s) = contains 1 variable which is a code for the subject of each observation

Together X, y and s provide the 563 variables for each observation.

The data files are also split into two populations each in its own sub-folder: test (2947 observations) and training (7352 observations).

The data for all 10299 observations across all 563 variables is therefore spread across 6 files:

train/X_train
test/X_test
train/y_train
test/y_test
train/subject_train
test/subject_test

The X files contain no column headers.  The feature names are provided in a separate file features.txt.

Descriptive labels for each activity code are provided in a file called activity_labels.txt.

### Intermediate Data

The script run_analysis.R reads in the original data files and combines them into a single dataset.  It is assumed the original data can be found in a folder called data in the same working directory as the script.

The features.txt file is read in and used to add column names to the 561 features.    

The script also categorises the code for each activity using the more descriptive label from activity_labels.txt rather than an integer. 

Finally, the script subsets the complete dataset to only include the subject, the activity and any columns containing the mean and standard deviation for each measurement.  This is taken to mean these two variable types based on the features info (66 variables):

* mean(): Mean value
* std(): Standard deviation

This creates an intermediate dataset of 10299 observations across 68 variables.

### Tidy Data

The variable names of the tidy data have been amended to be both descriptive and human readable.

* where an abbreviation was used in the original variable name this has been expanded
* lower camel case has been used so that where a variable consists of a single word it appears in lower case but where a variable consists of several words each subsequent words start with an upper case.  This is to make long variable names easier ot read.
* hyphens, brackets and any other punctuation has beem removed.

The data is then aggregated to output the mean for each value per subject and activity combination.  This creates a wide tidy dataset of 180 observations (one per subject/activity combination) across 68 variables (the subject, the activity and then the mean of each selected 66 measurements).

## Data Variables

For each record it is provided:
======================================

 [1] subject                                                            
 [2] activity                                                         
 [3] timeBodyAccelerometerMeanX                                        
 [4] timeBodyAccelerometerMeanY                                         
 [5] timeBodyAccelerometerMeanZ                                        
 [6] timeBodyAccelerometerStandardDeviationX                            
 [7] timeBodyAccelerometerStandardDeviationY                           
 [8] timeBodyAccelerometerStandardDeviationZ                           
 [9] timeGravityAccelerometerMeanX                                      
[10] timeGravityAccelerometerMeanY                                     
[11] timeGravityAccelerometerMeanZ                                      
[12] timeGravityAccelerometerStandardDeviationX                         
[13] timeGravityAccelerometerStandardDeviationY                         
[14] timeGravityAccelerometerStandardDeviationZ                        
[15] timeBodyAccelerometerJerkMeanX                                    
[16] timeBodyAccelerometerJerkMeanY                                  
[17] timeBodyAccelerometerJerkMeanZ"                                     
[18] timeBodyAccelerometerJerkStandardDeviationX                        
[19] timeBodyAccelerometerJerkStandardDeviationY                        
[20] timeBodyAccelerometerJerkStandardDeviationZ                        
[21] timeBodyGyroscopeMeanX                                             
[22] timeBodyGyroscopeMeanY                                           
[23] timeBodyGyroscopeMeanZ                                             
[24] timeBodyGyroscopeStandardDeviationX                               
[25] timeBodyGyroscopeStandardDeviationY                               
[26] timeBodyGyroscopeStandardDeviationZ                                
[27] timeBodyGyroscopeJerkMeanX                                         
[28] timeBodyGyroscopeJerkMeanY                                        
[29] timeBodyGyroscopeJerkMeanZ                                        
[30] timeBodyGyroscopeJerkStandardDeviationX                           
[31] timeBodyGyroscopeJerkStandardDeviationY                            
[32] timeBodyGyroscopeJerkStandardDeviationZ                            
[33] timeBodyAccelerometerMagnitudeMean                               
[34] timeBodyAccelerometerMagnitudeStandardDeviation                   
[35] timeGravityAccelerometerMagnitudeMean                              
[36] timeGravityAccelerometerMagnitudeStandardDeviation                
[37] timeBodyAccelerometerJerkMagnitudeMean                            
[38] timeBodyAccelerometerJerkMagnitudeStandardDeviation                
[39] timeBodyGyroscopeMagnitudeMean"                                     
[40] timeBodyGyroscopeMagnitudeStandardDeviation                        
[41] timeBodyGyroscopeJerkMagnitudeMean"                                 
[42] timeBodyGyroscopeJerkMagnitudeStandardDeviation                    
[43] fastFourierTransformBodyAccelerometerMeanX                       
[44] fastFourierTransformBodyAccelerometerMeanY                         
[45] "fastFourierTransformBodyAccelerometerMeanZ"                         
[46] "fastFourierTransformBodyAccelerometerStandardDeviationX"            
[47] "fastFourierTransformBodyAccelerometerStandardDeviationY"            
[48] "fastFourierTransformBodyAccelerometerStandardDeviationZ"            
[49] "fastFourierTransformBodyAccelerometerJerkMeanX"                     
[50] "fastFourierTransformBodyAccelerometerJerkMeanY"                     
[51] "fastFourierTransformBodyAccelerometerJerkMeanZ"                     
[52] "fastFourierTransformBodyAccelerometerJerkStandardDeviationX"        
[53] "fastFourierTransformBodyAccelerometerJerkStandardDeviationY"        
[54] "fastFourierTransformBodyAccelerometerJerkStandardDeviationZ"        
[55] "fastFourierTransformBodyGyroscopeMeanX"                             
[56] "fastFourierTransformBodyGyroscopeMeanY"                             
[57] "fastFourierTransformBodyGyroscopeMeanZ"                             
[58] "fastFourierTransformBodyGyroscopeStandardDeviationX"                
[59] "fastFourierTransformBodyGyroscopeStandardDeviationY"                
[60] "fastFourierTransformBodyGyroscopeStandardDeviationZ"                
[61] "fastFourierTransformBodyAccelerometerMagnitudeMean"                 
[62] "fastFourierTransformBodyAccelerometerMagnitudeStandardDeviation"    
[63] "fastFourierTransformBodyAccelerometerJerkMagnitudeMean"             
[64] "fastFourierTransformBodyAccelerometerJerkMagnitudeStandardDeviation"
[65] "fastFourierTransformBodyGyroscopeMagnitudeMean"                     
[66] "fastFourierTransformBodyGyroscopeMagnitudeStandardDeviation"        
[67] "fastFourierTransformBodyGyroscopeJerkMagnitudeMean"                 
[68] "fastFourierTransformBodyGyroscopeJerkMagnitudeStandardDeviation" 


## Original Data Specification
==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Universit? degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.