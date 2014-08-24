### read_analysis reads in a dataset and returns a second tidy data set
## input: *.txt data files in a data subfolder
## output: tidy data set calculating average of each variable for each activity and each subject
# this script is part of the course project for Getting and Cleaning Data
# for the purposes of this assignment code is a single step by step script to make marking against requirements easier
# code could be improved by splitting into more functions and condensing the steps - maybe a future project!
### v1 20140824

### read in the data
# assumes data has been unzipped into a subfolder called data, otherwise structured as provided

loadfiles <- function(path,files) {
        for(file in files)
        {
                perpos <- which(strsplit(file, "")[[1]]==".")
                assign(
                        gsub(" ","",substr(file, 1, perpos-1)), 
                        read.table(paste(path,file,sep="")),pos=1)
        }
}

testpath <- "./data/test/"
testfiles <- list.files(path=testpath, pattern="*.txt")

trainpath <- "./data/train/"
trainfiles <- list.files(path=trainpath, pattern="*.txt")

loadfiles(testpath,testfiles)
loadfiles(trainpath,trainfiles)

features <- read.table("./data/features.txt")
activities <- read.table("./data/activity_labels.txt")

## merge data into a single data set

# combine test and train features data (from X files) 
# add provided variable names from features.txt as column names

data <- rbind(X_test,X_train)
colnames(data) <- features[,2]

# add activity (from y files) and subject (from subject files) columns to data

subject <- rbind(subject_test,subject_train)
colnames(subject) <- "subject"
activity <- rbind(y_test,y_train)
colnames(activity) <- "activity"
data <- cbind(data,subject,activity)

## descriptive activity names
# use activities to convert activity to a factor in the data using activity id as the levels and activity name as the labels

colnames(activities) <- c("activity", "name")
data$activity <- factor(data$activity, activities$activity, activities$name)

# now have in variable data a combined dataset of 10299 observations and 563 variables :)
# (the 561 features plus activity and subject identifiers)

# quick tidy up of environment

remove("activity","activities", "features","subject","subject_test","subject_train","X_test","X_train","y_test","y_train")

## extract onlysubject, activity and mean and standard deviation variables for each measurement

int.data <- cbind(data[,c("subject","activity")],data[,grep("mean\\()|std\\()",names(data))])

## descriptive variable names

desc.col.names <- colnames(int.data)
desc.col.names <- gsub("^t", "time",desc.col.names)
desc.col.names <- gsub("^f", "fastFourierTransform",desc.col.names)
desc.col.names <- gsub("Gyro", "Gyroscope",desc.col.names)
desc.col.names <- gsub("Acc", "Accelerometer",desc.col.names)
desc.col.names <- gsub("Mag", "Magnitude",desc.col.names)
desc.col.names <- gsub("\\()", "",desc.col.names)
desc.col.names <- gsub("-", "",desc.col.names)
desc.col.names <- gsub("mean", "Mean",desc.col.names)
desc.col.names <- gsub("std", "StandardDeviation",desc.col.names)
desc.col.names <- gsub("BodyBody", "Body",desc.col.names)
colnames(int.data) <- desc.col.names

## creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
# as we are summarising data use aggregate.  Aggregate by activity and subject and calculate the mean of all other variables.

# wide tidy data
wide.data <- aggregate(int.data[,3:68], list(subject = int.data$subject, activity = int.data$activity), "mean")

## write the tidy data to a file
tidy.data <- wide.data
write.table(tidy.data, file = "tidydata.txt", row.names = FALSE)

# write.table(int.data, file = "intdata.txt", row.names = FALSE)
