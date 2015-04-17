#use downloader package for zipfile
library(downloader)

#set file url and finalname with path
fileUrl1 <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
filename <-paste(getwd(),"/dataset.zip",sep="")

#download file and unzip it to your working directory
download(fileUrl1, dest=filename, mode="wb") 
unzip (filename, exdir = getwd())