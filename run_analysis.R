if (!file.exists("getdata_projectfiles_UCI HAR Dataset.zip")) {
  download.file(url = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",
                destfile = "getdata_projectfiles_UCI HAR Dataset.zip")
  unzip("getdata_projectfiles_UCI HAR Dataset.zip")
}

# Get test data.
X_test <- read.table("UCI HAR Dataset/test/X_test.txt", header = TRUE)
Y_test <- read.table("UCI HAR Dataset/test/y_test.txt", header = TRUE)
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt",
                           header = TRUE)

# Get training data.
X_train <- read.table("UCI HAR Dataset/train/X_train.txt", header = TRUE)
Y_train <- read.table("UCI HAR Dataset/train/y_train.txt", header = TRUE)
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt",
                            header = TRUE)

# Bind the activity and subject lists as columns to each main data set
# (labeled with X's).
# NOTE: proper column labels will be applied later!
X_test <- cbind(X_test, Y_test)
X_test <- cbind(X_test, subject_test)

X_train <- cbind(X_train, Y_train)
X_train <- cbind(X_train, subject_train)

# Get the list of features and activities.
features <- read.table("UCI HAR Dataset/features.txt")
activities <- read.table("UCI HAR Dataset/activity_labels.txt")

# Clean up the features and activities using regular expressions (removing (),
# forcing lowercase). I felt that doing anything more would make the features
# look like gibberish, so I left the dashes, commas, and certain parentheses
# deliberately.
features <- tolower(features[,2])
features <- gsub("\\(\\)", "", features)
activities <- tolower(activities[,2])

# Apply column names to the test and training data sets.
colnames(X_test) <- c(features, "activity", "subject")
colnames(X_train) <- c(features, "activity", "subject")

# Get a list of features relating to the means and standard deviations, as well
# as the activity and subject columns.
mean_features <- features[grepl("mean", features)]
std_features <- features[grepl("std", features)]
relevant_features <- append(mean_features, c(std_features, "activity", "subject"))

# Replace the activity numbers with their proper names.
for (i in 1:length(activities)) {
  X_test$activity[X_test$activity == i] <- activities[i]
  X_train$activity[X_train$activity == i] <- activities[i]
}

# Subset the test and training data sets to only hold relevant columns.
X_test <- subset(X_test, select = relevant_features)
X_train <- subset(X_train, select = relevant_features)

# Merge the test and training data sets.
X <- rbind(X_test, X_train)

# Order the data by subject in increasing order.
X <- X[order(X$subject), ]