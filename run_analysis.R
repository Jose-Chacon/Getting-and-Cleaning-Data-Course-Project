run_analysis <- function(){
     library(dplyr)
     # 1) a tidy data set as described below
     # 2) a link to a Github repository with your script for performing the analysis 
     # 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md
     # 4) README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected
     
     # You should create one R script called run_analysis.R that does the following. 
     # Merges the training and the test sets to create one data set.
     # Extracts only the measurements on the mean and standard deviation for each measurement. 
     # Uses descriptive activity names to name the activities in the data set
     # Appropriately labels the data set with descriptive variable names. 
     # From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
     
     ## Set columns leghts for read.fwf function}
     column.length<-c(1:561)
     column.length[1:561]<- 16
     
     ## Read test data
     test.xfile <- read.fwf("./UCI HAR Dataset/test/X_test.txt", widths = column.length, header = FALSE)
     test.activities <- read.fwf("./UCI HAR Dataset/test/y_test.txt",  widths = 1, header = FALSE)
     test.subject_test <- read.fwf("./UCI HAR Dataset/test/subject_test.txt",  widths = 1, header = FALSE)
     ## Add column to identify records from test
     test.xfile <- mutate(test.xfile,sourcefile = "test")
     
     
     ## Read train data
     train.xfile <- read.fwf("./UCI HAR Dataset/train/X_train.txt", widths = column.length, header = FALSE)
     train.activities <- read.fwf("./UCI HAR Dataset/train/y_train.txt",  widths = 1, header = FALSE)
     train.subject_test <- read.fwf("./UCI HAR Dataset/train/subject_train.txt",  widths = 1, header = FALSE)
     ## Add column to identify records from train
     train.xfile <- mutate(train.xfile,sourcefile = "train")
     
     
     ## Create a single file from test and train xfile
     join.xfile <- rbind(test.xfile,train.xfile)
     
     ## Create a single file from test and train activities
     join.activities <- rbind(test.activities, train.activities)
     
     ## Create a single file from test and train subject
     join.subject <- rbind(test.subject_test, train.subject_test)
     
     ## Create a single file finally adding the activities and subject
     join.xfile <- cbind(join.xfile,join.activities,join.subject)
     
     ## Add column names to resulting file from test and train
     
     # First read variable names
     variable.names <- read.csv("./UCI HAR Dataset/features.txt", header = FALSE, sep = " ", stringsAsFactors=FALSE)
     # Second add the our new column so when asigning names it will be no lost
     variable.names[562,] <- c(562,"sourcefile")
     variable.names[563,] <- c(563,"subject")
     variable.names[564,] <- c(564,"activities")
     
     
     # Third assing names to each variables
     names(join.xfile)<-as.vector(variable.names[,2])
     
     ## For best practice variable names will be suffer some improvements
     # Variable names must be set to lower case
     names(join.xfile) <- tolower(names(join.xfile))
     # Variable names must not have - or . or any character that can causer R errors
     names(join.xfile) <- gsub("-","",names(join.xfile))
     
     ## For best practive variable names names must be descriptive
     # Change prefix t to denote time
     names(join.xfile) <- sub(pattern = "^t", replacement = "time", x = names(join.xfile))
     # Change prefix f to indicate frequency
     names(join.xfile) <- sub(pattern = "^f", replacement = "frequency", x = names(join.xfile))
     # Change acc to indicate acceleration
     names(join.xfile) <- sub(pattern = "acc", replacement = "acceleration", x = names(join.xfile))
     # Change mag to indicate magnitude
     names(join.xfile) <- sub(pattern = "mag", replacement = "magnitude", x = names(join.xfile))
     # Change gyro to indicate gyroscope
     names(join.xfile) <- sub(pattern = "gyro", replacement = "gyroscope", x = names(join.xfile))
     # Change activities numbers by names   
     activities.names<-c("WALKING","WALKING_UPSTAIRS","WALKING_DOWNSTAIRS","SITTING","STANDING","LAYING")
     join.xfile$activities<-activities.names[join.xfile$activities]
     
     # Create a secon data set only the measurements on the mean and standard deviation for each measurement. 
     
     mean.set <- join.xfile[grepl("mean\\(\\)", names(join.xfile))]
     std.set <- join.xfile[grepl("std\\(\\)", names(join.xfile))]
     subject.activities <- join.xfile[,563:564] 
     subject.activity.mean.std <- cbind(subject.activities, mean.set, std.set)
     
     ##summary.set <-aggregate(subject.activity.mean.std, by=list(subject.activity.mean.std$subjec,tsubject.activity.mean.std$activities,), FUN=mean, na.rm=TRUE)
     summary.set<- group_by(subject.activity.mean.std, subject, activities) %>% summarise_each(funs(mean))
     
     ## Save summary to text file
     write.table(summary.set, file="summary.txt", row.names=FALSE)
     
     
}
