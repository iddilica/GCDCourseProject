# Human Activity Recognition Using Smartphones Aggregate Mean Data for Selected Measurements
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

 [1] subject
 
 Integer
 
 This is an integer between 1 and 30 indicating an anonymised identifier for the subject of the observation.
 
 [2] activity 
 
 Categorised Variable
 
 This is a factor that describes the activity being performed for this observation.  There are six levels with the following labels:
 
 * WALKING
 * WALKING_UPSTAIRS
 * WALKING_DOWNSTAIRS
 * SITTING
 * STANDING
 * LAYING
 
 [3] timeBodyAccelerometerMeanX 
 
 Numeric
 
 For all the observations of this subject performing this activity the averaged mean of the body acceleration signals for the X axis.
 
 Domain: time
 
 [4] timeBodyAccelerometerMeanY
 
 Numeric
 
 For all the observations of this subject performing this activity the averaged mean of the body acceleration signals for the Y axis.
 
 Domain: time
 
 [5] timeBodyAccelerometerMeanZ  
 
 Numeric
 
 For all the observations of this subject performing this activity the averaged mean of the body acceleration signals for the Z axis.
 
 Domain: time
 
 [6] timeBodyAccelerometerStandardDeviationX  
 
 Numeric
 
 For all the observations of this subject performing this activity the averaged standard deviation of the body acceleration signals for the X axis.
 
 Domain: time
 
 [7] timeBodyAccelerometerStandardDeviationY 
 
 Numeric
 
 For all the observations of this subject performing this activity the averaged standard deviation of the body acceleration signals for the Y axis.
 
 Domain: time
 
 [8] timeBodyAccelerometerStandardDeviationZ 
 
 Numeric
 
 For all the observations of this subject performing this activity the averaged standard deviation of the body acceleration signals for the Z axis.
 
 Domain: time
 
 [9] timeGravityAccelerometerMeanX
 
 Numeric
 
 For all the observations of this subject performing this activity the averaged mean of the gravity acceleration signals for the X axis.
 
 Domain: time
 
[10] timeGravityAccelerometerMeanY

 Numeric
 
 For all the observations of this subject performing this activity the averaged mean of the body acceleration signals for the Y axis.
 
 Domain: time
 
[11] timeGravityAccelerometerMeanZ 

 Numeric
 
 For all the observations of this subject performing this activity the averaged mean of the body acceleration signals for the Z axis.
 
 Domain: time
 
[12] timeGravityAccelerometerStandardDeviation

Numeric

 For all the observations of this subject performing this activity the averaged standard deviation of the body acceleration signals for the X axis.
 
 Domain: time
 
[13] timeGravityAccelerometerStandardDeviationY  

 Numeric
 
 For all the observations of this subject performing this activity the averaged standard deviation of the body acceleration signals for the Y axis.
 
 Domain: time
 
[14] timeGravityAccelerometerStandardDeviationZ  

 Numeric
 
 For all the observations of this subject performing this activity the averaged standard deviation of the body acceleration signals for the Z axis.
 
 Domain: time
 
[15] timeBodyAccelerometerJerkMeanX  

 Numeric
 
 For all the observations of this subject performing this activity the averaged mean of the jerk acceleration signals for the X axis.
 
 Domain: time
 
[16] timeBodyAccelerometerJerkMeanY

 Numeric
 
 For all the observations of this subject performing this activity the averaged mean of the jerk acceleration signals for the Y axis.
 
 Domain: time
 
[17] timeBodyAccelerometerJerkMeanZ

 Numeric
 
 For all the observations of this subject performing this activity the averaged mean of the jerk acceleration signals for the Z axis.
 
 Domain: time
 
[18] timeBodyAccelerometerJerkStandardDeviationX 

 Numeric
 
 For all the observations of this subject performing this activity the averaged standard deviation of the jerk acceleration signals for the X axis.
 
 Domain: time
 
[19] timeBodyAccelerometerJerkStandardDeviationY

 Numeric
 
 For all the observations of this subject performing this activity the averaged standard deviation of the jerk acceleration signals for the Y axis.
 
 Domain: time
 
[20] timeBodyAccelerometerJerkStandardDeviationZ 

 Numeric
 
 For all the observations of this subject performing this activity the averaged standard deviation of the jerk acceleration signals for the Z axis.
 
 Domain: time
 
[21] timeBodyGyroscopeMeanX

 Numeric
 
 For all the observations of this subject performing this activity the averaged mean of the body gyroscope signals for the X axis.
 
 Domain: time
 
[22] timeBodyGyroscopeMeanY

 Numeric
 
 For all the observations of this subject performing this activity the averaged mean of the body gyroscope signals for the Y axis.
 
 Domain: time
 
[23] timeBodyGyroscopeMeanZ 

 Numeric
 
 For all the observations of this subject performing this activity the averaged mean of the body gyroscope signals for the Z axis.
 
 Domain: time
 
[24] timeBodyGyroscopeStandardDeviationX 

 Numeric
 
 For all the observations of this subject performing this activity the averaged standard deviation of the body gyroscope signals for the X axis.
 
 Domain: time
 
[25] timeBodyGyroscopeStandardDeviationY

 Numeric
 
 For all the observations of this subject performing this activity the averaged standard deviation of the body gyroscope signals for the Y axis.
 
 Domain: time
 
[26] timeBodyGyroscopeStandardDeviationZ 

 Numeric
 
 For all the observations of this subject performing this activity the averaged standard deviation of the body gyroscope signals for the Z axis.
 
 Domain: time
 
[27] timeBodyGyroscopeJerkMeanX  

 Numeric
 
 For all the observations of this subject performing this activity the averaged mean of the body gyroscope jerk for the X axis.
 
 Domain: time
 
[28] timeBodyGyroscopeJerkMeanY 

 Numeric
 
 For all the observations of this subject performing this activity the averaged mean of the body gyroscope jerk for the Y axis.
 
 Domain: time
 
[29] timeBodyGyroscopeJerkMeanZ  

 Numeric
 
 For all the observations of this subject performing this activity the averaged mean of the body gyroscope jerk for the Z axis.
 
 Domain: time
 
[30] timeBodyGyroscopeJerkStandardDeviationX 

 Numeric
 
 For all the observations of this subject performing this activity the averaged standard deviation of the body gyroscope jerk for the X axis.
 
 Domain: time
 
[31] timeBodyGyroscopeJerkStandardDeviationY 

 Numeric
 
 For all the observations of this subject performing this activity the averaged standard deviation of the body gyroscope jerk for the Y axis.
 
 Domain: time
 
[32] timeBodyGyroscopeJerkStandardDeviationZ 

 Numeric
 
 For all the observations of this subject performing this activity the averaged standard deviation of the body gyroscope jerk for the Z axis.
 
 Domain: time
 
[33] timeBodyAccelerometerMagnitudeMean 

 Numeric
 
 For all the observations of this subject performing this activity the averaged mean of the body acceleration magnitude.
 
 Domain: time
 
[34] timeBodyAccelerometerMagnitudeStandardDeviation 

Numeric

 For all the observations of this subject performing this activity the averaged standard deviation of the body acceleration magnitude.
 
 Domain: time
 
[35] timeGravityAccelerometerMagnitudeMean

Numeric

 For all the observations of this subject performing this activity the averaged mean of the gravity acceleration magnitude.
 
 Domain: time
 
[36] timeGravityAccelerometerMagnitudeStandardDeviation 

Numeric

 For all the observations of this subject performing this activity the averaged standard deviation of the gravity acceleration magnitude.
 
 Domain: time
 
[37] timeBodyAccelerometerJerkMagnitudeMean

Numeric

 For all the observations of this subject performing this activity the averaged mean of the jerk acceleration magnitude.
 
 Domain: time
 
[38] timeBodyAccelerometerJerkMagnitudeStandardDeviation 

Numeric

 For all the observations of this subject performing this activity the averaged standard deviation of the jerk acceleration magnitude.
 
 Domain: time
 
[39] timeBodyGyroscopeMagnitudeMean

Numeric

 For all the observations of this subject performing this activity the averaged mean of the body gyroscope magnitude.
 
 Domain: time
 
[40] timeBodyGyroscopeMagnitudeStandardDeviation 

Numeric

 For all the observations of this subject performing this activity the averaged standard deviation of the body gyroscope magnitude.
 
 Domain: time
 
[41] timeBodyGyroscopeJerkMagnitudeMean

Numeric

 For all the observations of this subject performing this activity the averaged mean of the jerk gyroscope magnitude.
 
 Domain: time
 
[42] timeBodyGyroscopeJerkMagnitudeStandardDeviation

Numeric

 For all the observations of this subject performing this activity the averaged standard deviation of the jerk gyroscope magnitude.
 
 Domain: time
 
[43] fastFourierTransformBodyAccelerometerMeanX

 Numeric
 
 For all the observations of this subject performing this activity the averaged mean of the body acceleration signals for the X axis.
 
 Domain: frequency
 
[44] fastFourierTransformBodyAccelerometerMeanY 

 Numeric
 
 For all the observations of this subject performing this activity the averaged mean of the body acceleration signals for the Y axis.
 
 Domain: frequency
 
[45] fastFourierTransformBodyAccelerometerMeanZ

 Numeric
 
 For all the observations of this subject performing this activity the averaged mean of the body acceleration signals for the Z axis.
 
 Domain: frequency
 
[46] fastFourierTransformBodyAccelerometerStandardDeviationX 

 Numeric
 
 For all the observations of this subject performing this activity the averaged standard deviation of the body acceleration signals for the X axis
 
 Domain: frequency
 
[47] fastFourierTransformBodyAccelerometerStandardDeviationY 

 Numeric
 
 For all the observations of this subject performing this activity the averaged standard deviation of the body acceleration signals for the Y axis
 
 Domain: frequency
 
[48] fastFourierTransformBodyAccelerometerStandardDeviationZ

 Numeric
 
 For all the observations of this subject performing this activity the averaged standard deviation of the body acceleration signals for the Z axis
 
 Domain: frequency
 
[49] fastFourierTransformBodyAccelerometerJerkMeanX

 Numeric
 
 For all the observations of this subject performing this activity the averaged mean of the jerk acceleration signals for the X axis.
 
 Domain: frequency
 
[50] fastFourierTransformBodyAccelerometerJerkMeanY

 Numeric
 
 For all the observations of this subject performing this activity the averaged mean of the jerk acceleration signals for the Y axis.
 
 Domain: frequency
 
[51] fastFourierTransformBodyAccelerometerJerkMeanZ

 Numeric
 
 For all the observations of this subject performing this activity the averaged mean of the jerk acceleration signals for the Z axis.
 
 Domain: frequency
 
[52] fastFourierTransformBodyAccelerometerJerkStandardDeviationX

 Numeric
 
 For all the observations of this subject performing this activity the averaged standard deviation of the jerk acceleration signals for the X axis.
 
 Domain: frequency
 
[53] fastFourierTransformBodyAccelerometerJerkStandardDeviationY

 Numeric
 
 For all the observations of this subject performing this activity the averaged standard deviation of the jerk acceleration signals for the Y axis.
 
 Domain: frequency
 
[54] fastFourierTransformBodyAccelerometerJerkStandardDeviationZ

 Numeric
 
 For all the observations of this subject performing this activity the averaged standard deviation of the jerk acceleration signals for the Z axis.
 
 Domain: frequency
 
[55] fastFourierTransformBodyGyroscopeMeanX

 Numeric
 
 For all the observations of this subject performing this activity the averaged mean of the body gyroscope signals for the X axis.
 
 Domain: frequency
 
[56] fastFourierTransformBodyGyroscopeMeanY

 Numeric
 
 For all the observations of this subject performing this activity the averaged mean of the body gyroscope signals for the Y axis.
 
 Domain: frequency
 
[57] fastFourierTransformBodyGyroscopeMeanZ

 Numeric
 
 For all the observations of this subject performing this activity the averaged mean of the body gyroscope signals for the Z axis.
 
 Domain: frequency
 
[58] fastFourierTransformBodyGyroscopeStandardDeviationX

 Numeric
 
 For all the observations of this subject performing this activity the averaged standard deviation of the body gyroscope signals for the X axis.
 
 Domain: frequency
 
[59] fastFourierTransformBodyGyroscopeStandardDeviationY

 Numeric
 
 For all the observations of this subject performing this activity the averaged standard deviation of the body gyroscope signals for the Y axis.
 
 Domain: frequency
 
[60] fastFourierTransformBodyGyroscopeStandardDeviationZ

 Numeric
 
 For all the observations of this subject performing this activity the averaged standard deviation of the body gyroscope signals for the Z axis.
 
 Domain: frequency
 
[61] fastFourierTransformBodyAccelerometerMagnitudeMean

Numeric

 For all the observations of this subject performing this activity the averaged mean of the body acceleration magnitude.
 
 Domain: frequency
 
[62] fastFourierTransformBodyAccelerometerMagnitudeStandardDeviation

Numeric

 For all the observations of this subject performing this activity the averaged standard deviation of the body acceleration magnitude.
 
 Domain: frequency
 
[63] fastFourierTransformBodyAccelerometerJerkMagnitudeMean

Numeric

 For all the observations of this subject performing this activity the averaged mean of the jerk acceleration magnitude.
 
 Domain: frequency
 
[64] fastFourierTransformBodyAccelerometerJerkMagnitudeStandardDeviation

Numeric

 For all the observations of this subject performing this activity the averaged standard deviation of the jerk acceleration magnitude.
 
 Domain: frequency
 
[65] fastFourierTransformBodyGyroscopeMagnitudeMean 

Numeric

 For all the observations of this subject performing this activity the averaged mean of the body gyroscope magnitude.
 
 Domain: frequency
 
[66] fastFourierTransformBodyGyroscopeMagnitudeStandardDeviation

Numeric

 For all the observations of this subject performing this activity the averaged standard deviation of the body gyroscope magnitude.
 
 Domain: frequency
 
[67] fastFourierTransformBodyGyroscopeJerkMagnitudeMean

Numeric

 For all the observations of this subject performing this activity the averaged mean of the jerk gyroscope magnitude.
 
 Domain: frequency
 
[68] fastFourierTransformBodyGyroscopeJerkMagnitudeStandardDeviation 

Numeric

 For all the observations of this subject performing this activity the averaged standard deviation of the jerk gyroscope magnitude.
 
 Domain: frequency

## Original Data Specification

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

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

### License:

Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.