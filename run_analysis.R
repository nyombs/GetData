##read features and activity labels
activitylabels = read.table("UCI-HAR/UCI HAR Dataset/activity_labels.txt", header=FALSE)
names(activitylabels) = c("id", "labels")

features = read.table("UCI-HAR/UCI HAR Dataset/features.txt", header=FALSE)
names(features) = c("id", "labels")

##Reading test data and adding more friendly variable names
testsubjects = read.table("UCI-HAR/UCI HAR Dataset/test/subject_test.txt", header=FALSE)
names(testsubjects) = c("subjectid")
testactivity = read.table("UCI-HAR/UCI HAR Dataset/test/y_test.txt", header=FALSE)
names(testactivity) = c("activityid")
testData = read.table("UCI-HAR/UCI HAR Dataset/test/X_test.txt", header=FALSE)

##Reading train data and adding more friendly variable names
trainsubjects = read.table("UCI-HAR/UCI HAR Dataset/train/subject_train.txt", header=FALSE)
names(trainsubjects) = c("subjectid")
trainactivity = read.table("UCI-HAR/UCI HAR Dataset/train/y_train.txt", header=FALSE)
names(trainactivity) = c("activityid")
trainData = read.table("UCI-HAR/UCI HAR Dataset/train/X_train.txt", header=FALSE)

#change activityid to canonical activity name
testactivity$activityid = factor(testactivity$activityid)
levels(testactivity$activityid) = activitylabels$labels
trainactivity$activityid = factor(trainactivity$activityid)
levels(trainactivity$activityid) = activitylabels$labels

#extract mean and std labels
meanstdlabels = c(grep("-mean()", features$labels, fixed=TRUE), grep("-std()", features$labels, fixed=TRUE))
#merge train and test data and free up memory, fix up labels
data1 = cbind(testsubjects$subjectid, as.character(testactivity$activityid))
data1 = cbind(data1, testData[,meanstdlabels])

data2 = cbind(trainsubjects$subjectid, as.character(trainactivity$activityid))
data2 = cbind(data2, trainData[,meanstdlabels])

data = rbind(data1, data2)


names(data) = c("subjectId", "activity", as.character(features$labels[meanstdlabels]))

#calculate the mean of all mean variables and standard deviation variables
newdata = aggregate(data[3:68], by=list(subjectId=data$subjectId, activity=data$activity), mean)

## giving them a respectable name
names(newdata) = gsub("^(t)", "Time_Domain_", names(newdata), perl = TRUE)
names(newdata) = gsub("^(f)", "Frequency_Domain_", names(newdata), perl = TRUE)

#write tidy data out to a csv file
write.table(newdata, file="subjectactivitymeasurements_tidy.txt", row.name=FALSE)
