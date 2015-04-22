#reference packages
library(downloader)
library(reshape2)
library(plyr)
library(utils)


#set file url and finalname with path
fileUrl1 <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
filename <-paste(getwd(),"/dataset.zip",sep="")


#download file and unzip it to your working directory
download(fileUrl1, dest=filename, mode="wb") 
unzip (filename, exdir = getwd())


#Merges the training and the test sets to create one data set.
#read in activity and feature information 
activity_labels<-read.table("./UCI HAR Dataset/activity_labels.txt",col.names=c("activity","activity_label"))
features<-read.table("./UCI HAR Dataset/features.txt",col.names=c("feature_num","feature_desc"))
feature_desc<-as.character(features$feature_desc)


#read in the test data using variable labels 
data_test<-read.table("./UCI HAR Dataset/test/X_test.txt",col.names=feature_desc)
activity_test<-read.table("./UCI HAR Dataset/test/y_test.txt",col.names=c("activity"))
subjects_test<-read.table("./UCI HAR Dataset/test/subject_test.txt",col.names=c("subjects"))
test<-cbind(subjects_test,activity_test,data_test)


#read in the train data using variable labels  
data_train<-read.table("./UCI HAR Dataset/train/X_train.txt",col.names=feature_desc)
activity_train<-read.table("./UCI HAR Dataset/train/y_train.txt",col.names=c("activity"))
subjects_train<-read.table("./UCI HAR Dataset/train/subject_train.txt",col.names=c("subjects"))
train<-cbind(subjects_train,activity_train,data_train)


#combine the datasets using variable labels joining in activity labels
combined_data<-rbind(test,train)
#add activity labels
combined_data_wlabel <- merge(activity_labels,combined_data,by.x="activity", by.y="activity", all=FALSE)


#Extracts only the measurements on the mean and standard deviation for each measurement. 
nlist<-grep("subject|activity|mean|std",names(combined_data_wlabel))
step4<-combined_data_wlabel[,nlist]


#From the data set in step 4, creates a second, independent tidy data set 
#with the average of each variable for each activity and each subject.
step5melt<-melt(step4,id=c("subjects","activity","activity_label"))
step5mean<- dcast(step5melt, subjects + activity + activity_label ~ variable,mean)


#Write out a tidy data set
outfilename <-paste(getwd(),"/run_analysis_output.txt",sep="")
write.table(step5mean,file=outfilename,row.names = FALSE)


#write out variable names for code book
varlist <-paste(getwd(),"/run_analysis_output_variable_list.txt",sep="")
capture.output(str(step5mean), file = varlist, append = FALSE)