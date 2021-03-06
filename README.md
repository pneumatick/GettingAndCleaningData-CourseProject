# Getting And Cleaning Data - Samsung Galaxy S Data Course Project
This is my peer-reviewed course project for the "Getting and Cleaning Data" class for the "Data Science Specialization" course on Coursera.

## Key files
* [run_analysis.R](run_analysis.R) - The R script that performs all of the operations on the data, including creating and writing the separate data set of averages.
* [averageOfEachVariable.txt](data/averageOfEachVariable.txt) - The separate data set generated by run_analysis.R that consists of the average of each variable for each subject and activity from the original Samsung Galaxy S gyroscope and accelerometer data.
* [CodeBook.md](docs/CodeBook.md) - The code book that defines each variable and explains what it represents.

## Explaination 
Some aspects of this project were open-ended and left up to interpretation, so I will explain some of the choices that I made that others may not have made.

* When completing step five, I created the separate data set by finding the average of each variable for each activity that each subject engaged in.

* When selecting variables that correspond to the means and standard deviations of variables, **I only chose those that ended in either "mean()" or "std()" _explicitly_.** I could have chosen to include any and all variables that had one or more instances of "mean" or "std", but that seemed to include irrelevant variables. The "features_info.txt" file seems to corroborate this, especially in the section starting on line 31.

* Following the advice given in the class, **I chose to make the name of each variable a _single lowercase word_.** I did this by removing hyphens, parentheses pairs (i.e. "()"), and invoking the "tolower()" function to set each variable name completely lowercase. The resulting variable names corresponding to the rows of the data set may not be the most natural to say outloud, but they efficiently convey the information needed to understand what they represent without being overly esoteric.

## Code Book
Please refer to the [code book markdown file](docs/CodeBook.md) for a full explaination of the data set.
