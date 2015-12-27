# Getting And Cleaning Data Course Project
This repo is part of the Programming Assignment of Getting and Cleaning Data Course - Coursera
---
## The Project
You should create one R script called run_analysis.R that does the following. 
- Merges the training and the test sets to create one data set.
- Extracts only the measurements on the mean and standard deviation for each measurement. 
- Uses descriptive activity names to name the activities in the data set
- Appropriately labels the data set with descriptive variable names. 
- From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
---
## To run the script:
  1. Download and unzip the datasets as described in the Course Project in your work directory.
  1. place the *run_analysis.R* script in your work directory, containing the 'UCI HAR Dataset' structure.
  2. run: *source("run_analysis.R")*
  3. run: *run_analysis()*
  4. the script will create a file named *"tidydataset_averages.txt"* with the averages of each measurement per subject and activity
