# This script is part of the  Programming Assignment of Getting and Cleaning Data Course - Coursera

# this script should run on "UCI HAR Dataset" subdirectory


run_analysis<-function(){

  # check if there is an "UCI HAR Dataset" dir
  if(!file.exists("UCI HAR Dataset")){
    stop("This script should be executed in your work directory, containing the 'UCI HAR Dataset' structure")
    
  }
  
  
  require(plyr)
  
  
  
  # read test data
  xtest<-read.table("UCI HAR Dataset/test/X_test.txt")
  ytest<-read.table("UCI HAR Dataset/test/Y_test.txt")
  subjecttest<-read.table("UCI HAR Dataset/test/subject_test.txt")
  
  # read train data
  xtrain<-read.table("UCI HAR Dataset/train/X_train.txt")
  ytrain<-read.table("UCI HAR Dataset/train/Y_train.txt")
  subjecttrain<-read.table("UCI HAR Dataset/train/subject_train.txt")
  
  #########################################################################
  # STEP 1 - Merges the training and the test sets to create one data set.
  #########################################################################
  
  # merges test and train data
  merged<-rbind(xtest,xtrain)
  
  
  ###################################################################################################
  # STEP 2 - Extracts only the measurements on the mean and standard deviation for each measurement. 
  ###################################################################################################
  
  # rename merged data based on features.txt file
  features<-read.table("UCI HAR Dataset/features.txt")
  names(merged)<-features[,2]
  
  
  # extracts Mean and Standard Deviation measurements only
  ok<-grep("std\\(\\)|mean\\(\\)",names(merged))
  mergedok<-merged[,ok]
  
  
  ################################################################################################
  # STEP 3 - Uses descriptive activity names to name the activities in the data set
  ################################################################################################
  
  # merge activities from test and train
  y_merged<-rbind(ytest,ytrain)[,1]
  act_labels<-read.table("UCI HAR Dataset/activity_labels.txt")[,2]
  activities<-act_labels[y_merged]
  
  # merge subjects from test and train
  subject<-rbind(subjecttest,subjecttrain)[,1]
  
  # create a tidy dataset with Subject, Activity and measurements
  tidy<-cbind(Subject=subject,Activity=activities,mergedok)
  
  
  ################################################################################################
  # STEP 4 - Appropriately labels the data set with descriptive variable names. 
  ################################################################################################
  
  names(tidy)<-gsub("^t","Time-",names(tidy)) # replace begining t to Time-
  names(tidy)<-gsub("tBody","Time-Body",names(tidy)) # replace remaining tBody to Time-Body
  names(tidy)<-gsub("^f","Frequency-",names(tidy)) # replace beginig f to Frequency-
  names(tidy)<-gsub("mean","Mean",names(tidy)) # replace mean to Mean
  names(tidy)<-gsub("std","StandardDeviation",names(tidy)) # replace std to StandardDeviation
  names(tidy)<-gsub("Acc","Acceleration",names(tidy)) # replace Acc to Acceleration
  names(tidy)<-gsub('Mag','Magnitude',names(tidy)) # replace Mag to Magnitude
  names(tidy)<-gsub('Gyro','Gyroscope',names(tidy)) # replace Mag to Magnitude
  names(tidy)<-gsub("\\(\\)","",names(tidy)) # remove "(" and ")"
  
  
  
  #####################################################################################################
  # STEP 5 - From the data set in step 4, creates a second, independent tidy data set with the average 
  #          of each variable for each activity and each subject.
  #####################################################################################################
  
  # create tidy data
  tidyaverages<-ddply(tidy,.(Subject,Activity),numcolwise(mean))
  
  # rename calculated colummns
  names(tidyaverages)[-c(1,2)] <- paste0("Mean-", names(tidyaverages)[-c(1,2)])
  
  # save tidydataaverages
  write.table(tidyaverages,file="tidydataset_averages.txt",row.names=FALSE)
  
}