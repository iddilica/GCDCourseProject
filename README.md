# Producing a tidy data set with the average measurements for each activity and subject from collected smartphone data

This readme explains how all of the files in this repo work and how they are connected.

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