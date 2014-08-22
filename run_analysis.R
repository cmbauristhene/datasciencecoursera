#Using the required source data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
#This R script does the following:
#1a. Reads the required data sets in

subj_test <- read.table("./test/subject_test.txt")
subj_train <- read.table("./train/subject_train.txt")
x_test <- read.table("./test/X_test.txt")
y_test <- read.table("./test/y_test.txt")
x_train <- read.table("./train/X_train.txt")
y_train <- read.table("./train/y_train.txt")

#1b. Combines similar datasets together

subj <- rbind(subj_test, subj_train)
x <- rbind(x_train, x_test)
y <- rbind(y_train, y_test)

#2. Extracts only variables with 'mean' or 'std' (standard deviation) on each measurement

feat_labels <- read.table("./features.txt")
my_feat <- grep("-mean\\(\\)|-std\\(\\)", feat_labels[, 2])
x <- x[,my_feat]
names(x) <- feat_labels[my_feat, 2]
names(x) <- gsub("\\(|\\)", "", names(x))
names(x) <- tolower(names(x))  

#3. Names the activities in the data set

act_labels <- read.table("./activity_labels.txt")
act_labels[, 2] = gsub("_", "", tolower(as.character(act_labels[, 2])))
y[,1] = act_labels[y[,1], 2]
names(y) <- "activity"

#4. Labels the variable names and final merging
names(subj) <- "subject"
my_data <- cbind(subj, y, x)

#5. creates the second independnet tidy dataset with the average of each variable for each activity and each subject
uniqueSubj = unique(subj)[,1]
numSubj = length(unique(subj)[,1])
numAct = length(act_labels[,1])
numCols = dim(my_data)[2]
output = my_data[1:(numSubj*numAct), ]

row = 1
for (i in 1:numSubj) {
    for (a in 1:numAct) {
        output[row, 1] = uniqueSubj[i]
        output[row, 2] = act_labels[a, 2]
        temp_data <- my_data[my_data$subject==subj & my_data$activity==act_labels[a, 2], ]
        output[row, 3:numCols] <- colMeans(temp_data[, 3:numCols])
        row = row+1
    }
}
write.table(output, "data_with_avgs.txt")

