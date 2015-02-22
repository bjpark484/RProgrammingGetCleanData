dir.create("./data")
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", destfile="./data/Dataset.zip", method="curl")
unzip(zipfile="./data/Dataset.zip", exdir='./data')
zippath=file.path("./data", "UCI HAR Dataset")

#1.  merge training and test, create it as 1 set
xtrain= read.table("./UCI HAR Dataset/train/X_train.txt")
ytrain= read.table("./UCI HAR Dataset/train/y_train.txt")
xtest= read.table("./UCI HAR Dataset/train/X_test.txt")
ytest= read.table("./UCI HAR Dataset/train/y_test.txt")
x=rbind(xtrain,xtest, byrow=T)
y=rbind(ytrain,ytest, byrow=T)

#3/4.  label data w/ descriptive activity
activitynames= read.table("./UCI HAR Dataset/activity_labels.txt")
activitynames=na.omit(data)
ordered= data[order(data[,i]), 2]
table1=table1[order(table1[,i],table1$ytest),]
activitynames[,1]= suppressWarnings(as.numeric(data,i))
data2= aggregate("./UCI HAR Dataset/activity_labels.txt", data, xtest)

