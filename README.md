# Getting and Cleaning Data:
## Project README

### Introduction

This programming assignment demonstrates my ability to collect, work with, and clean a data set. 

This repository contains the following files:

`CodeBook.md` is a code book that describes the data, variables, and the transformations or other work performed to make the data tidy.

`run_analysis.R` is the R script containing all R code to reproduce the tidy data set.

`tidy_data_set.txt` is the tidy data file produced by running the R script.

### Getting to Tiddy Data

A tidy data set, named `tidy_data_set.txt`, results by running R script `run_analysis.R` that does the following:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set.
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

### Running the R Script

To run `run_analysis.R` ensure `dplyr` library is installed and loaded.

`install.packages("dplyr")`

`library(dplyr)`

In addition endure raw data has been downloaded from:  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

`run_analysis.R` should be in the same directory as `Data`. `Data` should contain the directory called `UCI HAR Dataset`.