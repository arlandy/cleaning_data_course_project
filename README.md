Cleaning Data Course Project
============================

1. Downloads from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

2. Unzips UCI_HAR_Dataset.zip

3. Removes the zip file

4. Merges the training and the test sets to create one data set.

5. Extracts only the measurements on the mean and standard deviation for each measurement.

6. Uses descriptive activity names to name the activities in the data set

7. Appropriately labels the data set with descriptive variable names.

8. From the data set in step 7, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

9. Sets the tidy data in the variable casted

10. Saves the tidy data file (tidydata.txt) in the work directory 

 
####CODEBOOK
####Output Variables in (tidydata.txt)

subjectID : subject who performed the activity
activity  : WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING 

#####Time (mean and standard deviation) 
######body acceleration signals
tBodyAcc-mean()-X
tBodyAcc-mean()-Y
tBodyAcc-mean()-Z
tBodyAcc-std()-X
tBodyAcc-std()-Y
tBodyAcc-std()-Z

######gravity acceleration signals
tGravityAcc-mean()-X
tGravityAcc-mean()-Y
tGravityAcc-mean()-Z
tGravityAcc-std()-X
tGravityAcc-std()-Y
tGravityAcc-std()-Z

######Jerk signals for body linear acceleration
tBodyAccJerk-mean()-X
tBodyAccJerk-mean()-Y
tBodyAccJerk-mean()-Z
tBodyAccJerk-std()-X
tBodyAccJerk-std()-Y
tBodyAccJerk-std()-Z

######angular velocity
tBodyGyro-mean()-X
tBodyGyro-mean()-Y
tBodyGyro-mean()-Z
tBodyGyro-std()-X
tBodyGyro-std()-Y
tBodyGyro-std()-Z

######Jerk signals for angular
tBodyGyroJerk-mean()-X
tBodyGyroJerk-mean()-Y
tBodyGyroJerk-mean()-Z
tBodyGyroJerk-std()-X
tBodyGyroJerk-std()-Y
tBodyGyroJerk-std()-Z

######magnitude of body acceleration signals
tBodyAccMag-mean()
tBodyAccMag-std()

######magnitude of gravity acceleration signals
tGravityAccMag-mean()
tGravityAccMag-std()

######magnitude of Jerk signals for body linear acceleration
tBodyAccJerkMag-mean()
tBodyAccJerkMag-std()

######magnitude of angular velocity
tBodyGyroMag-mean()
tBodyGyroMag-std()

######magnitude of Jerk signals for angular velocity
tBodyGyroJerkMag-mean()
tBodyGyroJerkMag-std()

####Frequency (mean and standard deviation) 
######body acceleration signals
fBodyAcc-mean()-X
fBodyAcc-mean()-Y
fBodyAcc-mean()-Z
fBodyAcc-std()-X
fBodyAcc-std()-Y
fBodyAcc-std()-Z

######Jerk signals for angular
fBodyAccJerk-mean()-X
fBodyAccJerk-mean()-Y
fBodyAccJerk-mean()-Z
fBodyAccJerk-std()-X
fBodyAccJerk-std()-Y
fBodyAccJerk-std()-Z

######magnitude of body acceleration signals
fBodyGyro-mean()-X
fBodyGyro-mean()-Y
fBodyGyro-mean()-Z
fBodyGyro-std()-X
fBodyGyro-std()-Y
fBodyGyro-std()-Z

######magnitude of gravity acceleration signals
fBodyAccMag-mean()
fBodyAccMag-std()

######magnitude of Jerk signals for body linear acceleration
fBodyBodyAccJerkMag-mean()
fBodyBodyAccJerkMag-std()

######magnitude of angular velocity
fBodyBodyGyroMag-mean()
fBodyBodyGyroMag-std()

######magnitude of Jerk signals for angular velocity
fBodyBodyGyroJerkMag-mean()
fBodyBodyGyroJerkMag-std()
