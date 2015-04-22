#Code Book
This code book describe the data source, variables and transformations executed by the run_analysis.R script.

##The Data Source
A full description is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

##The data for this project will be downloaded and extracted from:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

##Transformations
The data from the above location under goes the following steps:
+ Download and unzip the raw file.
+ Read in the activity labels to apply to the test and training datasets.
+ Read in the feature.txt file to provide labels for all the variables in the data sets.
+ Read in both the test and training datasets and then stack them together.
+ Add in the activity labels to the combined dataset.
+ Limit the dataset to just the subject, activity, activity_label variables along with any variable with mean or std in the name.
+ Use the melt function to convert the dataset to a narrow format and the the dcast to summerize the data by taking the mean of the "mean" and "std" variables across subject + activity + activity_label.
+ Write out the data set to a text file.
+ Write out the names of the variables.

##Output file Variables
Below are the variables in the output text file.  This output is derived from the names function.  For a detailed description of each variable, please see the original data source information.
Variables
+subjects
+activity
+activity_label
+tBodyAcc.mean...X
+tBodyAcc.mean...Y
+tBodyAcc.mean...Z
+tBodyAcc.std...X
+tBodyAcc.std...Y
+tBodyAcc.std...Z
+tGravityAcc.mean...X
+tGravityAcc.mean...Y
+tGravityAcc.mean...Z
+tGravityAcc.std...X
+tGravityAcc.std...Y
+tGravityAcc.std...Z
+tBodyAccJerk.mean...X
+tBodyAccJerk.mean...Y
+tBodyAccJerk.mean...Z
+tBodyAccJerk.std...X
+tBodyAccJerk.std...Y
+tBodyAccJerk.std...Z
+tBodyGyro.mean...X
+tBodyGyro.mean...Y
+tBodyGyro.mean...Z
+tBodyGyro.std...X
+tBodyGyro.std...Y
+tBodyGyro.std...Z
+tBodyGyroJerk.mean...X
+tBodyGyroJerk.mean...Y
+tBodyGyroJerk.mean...Z
+tBodyGyroJerk.std...X
+tBodyGyroJerk.std...Y
+tBodyGyroJerk.std...Z
+tBodyAccMag.mean..
+tBodyAccMag.std..
+tGravityAccMag.mean..
+tGravityAccMag.std..
+tBodyAccJerkMag.mean..
+tBodyAccJerkMag.std..
+tBodyGyroMag.mean..
+tBodyGyroMag.std..
+tBodyGyroJerkMag.mean..
+tBodyGyroJerkMag.std..
+fBodyAcc.mean...X
+fBodyAcc.mean...Y
+fBodyAcc.mean...Z
+fBodyAcc.std...X
+fBodyAcc.std...Y
+fBodyAcc.std...Z
+fBodyAcc.meanFreq...X
+fBodyAcc.meanFreq...Y
+fBodyAcc.meanFreq...Z
+fBodyAccJerk.mean...X
+fBodyAccJerk.mean...Y
+fBodyAccJerk.mean...Z
+fBodyAccJerk.std...X
+fBodyAccJerk.std...Y
+fBodyAccJerk.std...Z
+fBodyAccJerk.meanFreq...X
+fBodyAccJerk.meanFreq...Y
+fBodyAccJerk.meanFreq...Z
+fBodyGyro.mean...X
+fBodyGyro.mean...Y
+fBodyGyro.mean...Z
+fBodyGyro.std...X
+fBodyGyro.std...Y
+fBodyGyro.std...Z
+fBodyGyro.meanFreq...X
+fBodyGyro.meanFreq...Y
+fBodyGyro.meanFreq...Z
+fBodyAccMag.mean..
+fBodyAccMag.std..
+fBodyAccMag.meanFreq..
+fBodyBodyAccJerkMag.mean..
+fBodyBodyAccJerkMag.std..
+fBodyBodyAccJerkMag.meanFreq..
+fBodyBodyGyroMag.mean..
+fBodyBodyGyroMag.std..
+fBodyBodyGyroMag.meanFreq..
+fBodyBodyGyroJerkMag.mean..
+fBodyBodyGyroJerkMag.std..
+fBodyBodyGyroJerkMag.meanFreq..
