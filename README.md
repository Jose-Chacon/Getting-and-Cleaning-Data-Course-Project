## General details

This project was created as per Coursera Specialization Course: Getting and Cleaning Data.

Original data set used is called Human Activity Recognition Using Smartphones Dataset and was created by  Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

Original data used can be found here:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Additional information and full detail:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

##Goals for this Project:
1. Create one R script called run_analysis.R to do the following. 
2. Merges the training and the test sets to create one data set.
3. Extracts only the measurements on the mean and standard deviation for each measurement. 
4. Uses descriptive activity names to name the activities in the data set
5. Appropriately labels the data set with descriptive variable names. 
6. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

In this repo you will find:

* README.MD : overview of work done
* CookBook.txt: describes variables, data and transformations to clean original data
* run_analysis.R: code with every single step to accomplish goals for this Project

## Running the program

From R command line execute run_analysis() as result you get in your working directory a file with summarized data set with mean calculated by variable after grouping per subject and activity.

