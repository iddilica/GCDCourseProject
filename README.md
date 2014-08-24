# Producing a tidy data set with the average measurements for each activity and subject from collected smartphone data

This tidy data set of aggregate means for selected variables is computed from original data files from the Human Activity Recognition Using Smartphones Data Set: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

## Summary

The data is first reshaped into an intermediate dataset.  This provides the base data to compute a tidy dataset calculating the average of each variable for each subject/activity combination in the intermediate data set.  The final data set output by the script is described in CodeBook.md

This repository contains:

* a tidy dataset - tidydata.txt (submitted to Coursera but reproduced here for posterity!)
* a codebook describing the tidy data set  - CodeBook.md
* a data processing script that created the tidy data set from the original data -  run_analysis.R

## Running the Script

To repeat the data processing steps on your own computer using this script just follow these steps:

1. Download run_analysis.R to a folder on your computer
2. Download the original data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip to the same folder on your computer
3. Unzip the data
4. Rename the UCI HAR Dataset sub folder containing the data to "data"
5. Check you have a folder containing run_analysis.R and then a folder called data containing the unzipped original data files.
6. Open up your R console.
7. Set the working directory to the folder containing your files
8. Enter *source("run_analysis.R)* into your R console
9. Wait for tidy data to be delivered.  File tidydata.txt should be created in yourr working directory once the script has finished executing.

**Note:** the intermediate data set is not output by default but you can uncomment line 92 in the script if you want both the intermediate and final data set.  The intermediate data set will be created as intdata.txt in your working directory.

## Reading the Data

To read the provided tidy set into R on your own computer just follow these steps:

1. Download the tidy data file tidydata.txt to a folder on your computer.
2. Open up your R console
3. Set the working directory to the folder containing the downloaded data.
4. Enter *data <- read.table("tidydata.txt", header = TRUE)* into your R console

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

The data is then aggregated to output the mean for each value per subject and activity combination.  This creates a wide tidy dataset of 180 observations (one per subject/activity combination) across 68 variables (the subject, the activity and then the mean of each selected 66 measurements).  CodeBook.md provides more information on the data.
