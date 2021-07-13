# Code Book - Averages of Samsung Galaxy S Data

## Variables

* subject - Each test subject. There were a total of thirty test subjects, and each is represented by an integer between 1 - 30.
* activity - Each activity that the test subjects engaged in. Each activity is represented by an integer between 1 - 6, which are defined as follows:  
  1. WALKING - Data collected while the subject walked
  2. WALKING UPSTAIRS - Data collected while the subject walked upstairs
  3. WALKING DOWNSTAIRS - Data collected while the subject walked downstairs
  4. SITTING - Data collected while the subject sat
  5. STANDING - Data collected while the subject stood
  6. LAYING - data collected while the subject laid
* tbodyaccmagmean - Average time domain signal value for the body linear acceleration magnitude mean
* tgravityaccmagmean - Average time domain signal value for the gravity acceleration magnitude mean
* tbodyaccjerkmagmean - Average time domain signal value for the body linear acceleration jerk magnitude mean
* tbodygyromagmean - Average time domain signal value for the gyroscope magnitude mean
* tbodygyrojerkmagmean - Average time domain signal value for the gyroscope jerk magnitude mean
* fbodyaccmagmean - Average frequency domain signal value for the body linear acceleration magnitude mean
* fbodybodyaccjerkmagmean -  Average frequency domain signal value for the body linear acceleration jerk magnitude mean
* fbodybodygyromagmean - Average frequency domain signal value for the gyroscope magnitude mean 
* fbodybodygyrojerkmagmean - Average frequency domain signal value for the gyroscope jerk magnitude mean
* tbodyaccmagstd - Average time domain signal value for the body linear acceleration magnitude standard deviation
* tgravityaccmagstd - Average time domain signal value for the gravity acceleration magnitude standard deviation
* tbodyaccjerkmagstd - Average time domain signal value for the body linear acceleration jerk magnitude standard deviation
* tbodygyromagstd - Average time domain signal value for the gyroscope magnitude standard deviation.
* tbodygyrojerkmagstd - Average time domain signal value for the gyroscope jerk magnitude standard deviation
* fbodyaccmagstd - Average frequency domain signal value for the body linear acceleration magnitude standard deviation
* fbodybodyaccjerkmagstd - Average frequency domain signal value for the body linear acceleration jerk magnitude standard deviation
* fbodybodygyromagstd - Average frequency domain signal value for the gyroscope magnitude standard deviation
* fbodybodygyrojerkmagstd - Average frequency domain signal value for the gyroscope jerk magnitude standard deviation

## Feature Selection

The features selected from the original database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
Note that not all of the variables that were calculated in the original database are listed below. The variables below are only those that were utilized to make the calculations in the new data set.

tBodyAccMag  
tGravityAccMag  
tBodyAccJerkMag  
tBodyGyroMag  
tBodyGyroJerkMag  
fBodyAccMag  
fBodyAccJerkMag  
fBodyGyroMag  
fBodyGyroJerkMag  

The set of variables that were estimated from these signals that were brought over from the original database are: 

mean(): Mean value  
std(): Standard deviation
