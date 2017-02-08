### Install and load dplyr for working with data frame 
#install.packages("dplyr") # install dplyr package, if needed
library(dplyr)

### Set up directory for data sets and paths to files 
data_directory <- "./Data/UCI HAR Dataset"

x_train_path_file <- file.path(data_directory, "train/X_train.txt")
y_train_path_file <- file.path(data_directory, "train/Y_train.txt")
subject_train_path_file <- file.path(data_directory, "train/subject_train.txt")
x_test_path_file <- file.path(data_directory, "test/X_test.txt")
y_test_path_file <- file.path(data_directory, "test/Y_test.txt")
subject_test_path_file <- file.path(data_directory, "test/subject_test.txt")
features_path_file <- file.path(data_directory, "features.txt")
activities_path_file <- file.path(data_directory, "activity_labels.txt")

### Read relevant tables into data frames
x_train <- read.table(x_train_path_file)
y_train <- read.table(y_train_path_file)
subject_train <- read.table(subject_train_path_file)
x_test <- read.table(x_test_path_file)
y_test <- read.table(y_test_path_file)
subject_test <- read.table(subject_test_path_file)
features <- read.table(features_path_file, stringsAsFactors = FALSE)
activities <- read.table(activities_path_file)

train <- cbind(subject_train, y_train, x_train)
test <- cbind(subject_test, y_test, x_test)

### 1. Merges the training and the test sets to create one data set.
merged_train_test <-rbind(train, test)

### Rename column headings to Subject and Activity 
names(merged_train_test)[1] <- 'Subject'
names(merged_train_test)[2] <- 'Activity'
### Rename 561 variable names using features.txt file
names(merged_train_test)[3:563] <- features$V2

### 2. Extracts only the measurements on the mean and standard deviation for each measurement.
variables_list <- grep("(mean\\(\\)|std\\(\\))", features$V2, ignore.case = TRUE, value = TRUE)
merged_train_test <- merged_train_test[,c('Subject', 'Activity', variables_list)]

### 3. Uses descriptive activity names to name the activities in the data set.
merged_train_test$Activity <- as.factor(merged_train_test$Activity)
levels(merged_train_test$Activity)[levels(merged_train_test$Activity) == '1'] <- 'WALKING'
levels(merged_train_test$Activity)[levels(merged_train_test$Activity) == '2'] <- 'WALKING_UPSTAIRS'
levels(merged_train_test$Activity)[levels(merged_train_test$Activity) == '3'] <- 'WALKING_DOWNSTAIRS'
levels(merged_train_test$Activity)[levels(merged_train_test$Activity) == '4'] <- 'SITTING'
levels(merged_train_test$Activity)[levels(merged_train_test$Activity) == '5'] <- 'STANDING'
levels(merged_train_test$Activity)[levels(merged_train_test$Activity) == '6'] <- 'LAYING'

### 4. Appropriately labels the data set with descriptive variable names.
names(merged_train_test) <- gsub('^t', 'Time', names(merged_train_test))
names(merged_train_test) <- gsub('^f', 'Fequency', names(merged_train_test))
names(merged_train_test) <- gsub('Acc', 'Accelerometer', names(merged_train_test))
names(merged_train_test) <- gsub('Gyro', 'Gyroscope', names(merged_train_test))
names(merged_train_test) <- gsub('Mag', 'Magnitude', names(merged_train_test))

### 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each Activity and each subject.
merged_train_test_averages <- group_by(merged_train_test, Subject, Activity)
merged_train_test_averages <- summarise_each(merged_train_test_averages, funs(mean))

### Write resulting data frame to file named tidy_data_set.txt
write.table(merged_train_test_averages, file = "tidy_data_set.txt", row.name=FALSE)