# Getting and Cleaning Data: 
## Project Code Book

### Introduction

The original "Human Activity Recognition Using Smartphones Dataset" is the base for transformations resulting in `tidy_data_set.txt`.

More information on the raw data can be found at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

A tidy data set, named `tidy_data_set.txt`, results by running R script `run_analysis.R` that does the following:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set.
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The remainder of this code book summarizes the tidy data set produced by this programming assignment.

### Two Identifiers
`Subject` - identification number for test subject (persons)

`Activity` - type of activity performed by the test subject

### Thirty Subjects
Identification numbers - Values 1, 2, ..., 30

### Six Activity (Factors)
`WALKING` - Subject was walking during the test

`WALKING_UPSTAIRS` - Subject was walking up a staircase during the test

`WALKING_DOWNSTAIRS` - Subject was walking down stairs during the test

`SITTING` - Subject was sitting during the test

`STANDING` - Subject was standing during the test

`LAYING` - Subject was laying down during the test

### Variables (i.e., Features)
`TimeBodyAccelerometer-mean()-X`

`TimeBodyAccelerometer-mean()-Y`

`TimeBodyAccelerometer-mean()-Z`

`TimeBodyAccelerometer-std()-X`

`TimeBodyAccelerometer-std()-Y`

`TimeBodyAccelerometer-std()-Z`

`TimeGravityAccelerometer-mean()-X`

`TimeGravityAccelerometer-mean()-Y`

`TimeGravityAccelerometer-mean()-Z`

`TimeGravityAccelerometer-std()-X`

`TimeGravityAccelerometer-std()-Y`

`TimeGravityAccelerometer-std()-Z`

`TimeBodyAccelerometerJerk-mean()-X`

`TimeBodyAccelerometerJerk-mean()-Y`

`TimeBodyAccelerometerJerk-mean()-Z`

`TimeBodyAccelerometerJerk-std()-X`

`TimeBodyAccelerometerJerk-std()-Y`

`TimeBodyAccelerometerJerk-std()-Z`

`TimeBodyGyroscope-mean()-X`

`TimeBodyGyroscope-mean()-Y`

`TimeBodyGyroscope-mean()-Z`

`TimeBodyGyroscope-std()-X`

`TimeBodyGyroscope-std()-Y`

`TimeBodyGyroscope-std()-Z`

`TimeBodyGyroscopeJerk-mean()-X`

`TimeBodyGyroscopeJerk-mean()-Y`

`TimeBodyGyroscopeJerk-mean()-Z`

`TimeBodyGyroscopeJerk-std()-X`

`TimeBodyGyroscopeJerk-std()-Y`

`TimeBodyGyroscopeJerk-std()-Z`

`TimeBodyAccelerometerMagnitude-mean()`

`TimeBodyAccelerometerMagnitude-std()`

`TimeGravityAccelerometerMagnitude-mean()`

`TimeGravityAccelerometerMagnitude-std()`

`TimeBodyAccelerometerJerkMagnitude-mean()`

`TimeBodyAccelerometerJerkMagnitude-std()`

`TimeBodyGyroscopeMagnitude-mean()`

`TimeBodyGyroscopeMagnitude-std()`

`TimeBodyGyroscopeJerkMagnitude-mean()`

`TimeBodyGyroscopeJerkMagnitude-std()`

`FequencyBodyAccelerometer-mean()-X`

`FequencyBodyAccelerometer-mean()-Y`

`FequencyBodyAccelerometer-mean()-Z`

`FequencyBodyAccelerometer-std()-X`

`FequencyBodyAccelerometer-std()-Y`

`FequencyBodyAccelerometer-std()-Z`

`FequencyBodyAccelerometerJerk-mean()-X`

`FequencyBodyAccelerometerJerk-mean()-Y`

`FequencyBodyAccelerometerJerk-mean()-Z`

`FequencyBodyAccelerometerJerk-std()-X`

`FequencyBodyAccelerometerJerk-std()-Y`

`FequencyBodyAccelerometerJerk-std()-Z`

`FequencyBodyGyroscope-mean()-X`

`FequencyBodyGyroscope-mean()-Y`

`FequencyBodyGyroscope-mean()-Z`

`FequencyBodyGyroscope-std()-X`

`FequencyBodyGyroscope-std()-Y`

`FequencyBodyGyroscope-std()-Z`

`FequencyBodyAccelerometerMagnitude-mean()`

`FequencyBodyAccelerometerMagnitude-std()`

`FequencyBodyBodyAccelerometerJerkMagnitude-mean()`

`FequencyBodyBodyAccelerometerJerkMagnitude-std()`

`FequencyBodyBodyGyroscopeMagnitude-mean()`

`FequencyBodyBodyGyroscopeMagnitude-std()`

`FequencyBodyBodyGyroscopeJerkMagnitude-mean()`

`FequencyBodyBodyGyroscopeJerkMagnitude-std()` 

### Additional R Libraries

The `run_analysis.R` script uses the `dplyr` library.

`install.packages("dplyr")`

`library(dplyr)`