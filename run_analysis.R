# This script extracts mean and standard deviation data from a set of data 
# collected from the accelerometer and gyroscope of a Samsung Galaxy S phone. 
# It then writes a separate data set to a file, which is contains the averages
# of the mean and standard deviation data sorted by each test subject and each 
# activity that the test subjects engaged in during the initial data collection.

library(dplyr)

# Download the zip if it's not found.
if (!file.exists("data/getdata_projectfiles_UCI HAR Dataset.zip")) {
  download.file(url = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",
                destfile = "data/getdata_projectfiles_UCI HAR Dataset.zip")
  unzip("data/getdata_projectfiles_UCI HAR Dataset.zip", exdir = "data/")
}

# Get test data.
X_test <- read.table("data/UCI HAR Dataset/test/X_test.txt", header = TRUE)
Y_test <- read.table("data/UCI HAR Dataset/test/y_test.txt", header = TRUE)
subject_test <- read.table("data/UCI HAR Dataset/test/subject_test.txt",
                           header = TRUE)

# Get training data.
X_train <- read.table("data/UCI HAR Dataset/train/X_train.txt", header = TRUE)
Y_train <- read.table("data/UCI HAR Dataset/train/y_train.txt", header = TRUE)
subject_train <- read.table("data/UCI HAR Dataset/train/subject_train.txt",
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

# Set the features to lowercase.
features <- tolower(features[,2])

# Apply column names to the test and training data sets.
colnames(X_test) <- c(features, "activity", "subject")
colnames(X_train) <- c(features, "activity", "subject")

# Get a list of features relating to the means and standard deviations, as well
# as the activity and subject columns.
mean_features <- features[grepl("mean\\(\\)$", features)]
std_features <- features[grepl("std\\(\\)$", features)]
relevant_features <- append(mean_features,
                            c(std_features, "activity", "subject"))

# Subset the test and training data sets to only hold relevant columns.
X_test <- subset(X_test, select = relevant_features)
X_train <- subset(X_train, select = relevant_features)

# Merge the test and training data sets.
X <- rbind(X_test, X_train)

# Clean up the column names by removing parentheses and hyphens.
clean_features <- gsub("\\(\\)", "", relevant_features)
clean_features <- gsub("-", "", clean_features)
colnames(X) <- clean_features

# Create an independent, tidy data set 
averageData <- X %>% group_by(subject, activity) %>% summarise_all(mean)

# Write the data set to a file
write.table(averageData, file = "data/averageOfEachVariable.txt", row.names = FALSE)