# set-up file location:
trainData="./UCI_HAR_Dataset/train/X_train.txt"
trainLabelData="./UCI_HAR_Dataset/train/y_train.txt"
testData="./UCI_HAR_Dataset/test/X_test.txt"
testLabelData="./UCI_HAR_Dataset/test/y_test.txt"
               
# read train data:
train <- read.table(trainData)
# read test data:
test <- read.table(testData)
            
# adding trainLabel to the train data:        
trainLabel <- read.table(trainLabelData)

# adding testLabel to the test data:
testLabel <- read.table(testLabelData)

train1 <- cbind(train,trainLabel)
test1 <- cbind(test,testLabel)

# 1.
# task: Merges the training and the test sets to create one data set.
allData <- rbind(train1, test1)

# answer: allData

# 4.
# Task: Appropriately labels the data set with descriptive variable names
featuresNamesLoc <- "./UCI_HAR_Dataset/features.txt" 
featuresNames <- read.table(featuresNamesLoc)
features <- featuresNames[,2]
Data <- data.frame(allData)
names(Data) <- c(paste(features),'activity')

# answer: Data

# 3.
# Task: Uses descriptive activity names to name the activities in the data set
# replacing trainLabel by names according to the file activity_labels.txt (./UCI_HAR_Dataset/activity_labels.txt) 
# 1 WALKING
# 2 WALKING_UPSTAIRS
# 3 WALKING_DOWNSTAIRS
# 4 SITTING
# 5 STANDING
# 6 LAYING

# answer:
Data$activity <- ifelse(Data$activity == 1,"WALKING", 
                                ifelse(Data$activity == 2,"WALKING_UPSTAIRS", 
                                       ifelse(Data$activity == 3,"WALKING_DOWNSTAIRS", 
                                              ifelse(Data$activity == 4,"SITTING", 
                                                     ifelse(Data$activity == 5,"STANDING",
                                                            ifelse(Data$activity == 6,"LAYING",Data$activity))))))


# answer: Data

# 2.
# Task: Extracts only the measurements on the mean and standard deviation for each measurement.
# extraction of features with mean():
mean_features <- data.frame(which(sapply(names(Data), function(x) any(grepl("-mean\\(\\)", x)))))

# extraction of features with std():
std_features <- data.frame(which(sapply(names(Data), function(x) any(grepl("-std\\(\\)", x)))))

selected_features_nr <- c(mean_features[,1],std_features[,1]) 
selectedData <- Data[,selected_features_nr] 

# answer: selectedData

# 5. 
# task:  From the data set in step 4, creates a second, independent tidy data set with the average of each variable
#        for each activity and each subject

Data.x <- subset(Data, select= -activity)
Data.s <- subset(Data, select= activity)
Result<-aggregate(Data.x, Data.s, mean)

# answer: Result
# saving the Result data:
#write.csv(Result,file='submission.csv', quote=FALSE,row.names=FALSE)
write.table(Result,file = "submission.txt",row.names=FALSE)
