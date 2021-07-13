# Code Book - Averages of Samsung Galaxy S Data

## Variables

**Rows (features):**

1. tbodyaccmagmean - Average time domain signal value for the body linear acceleration magnitude mean
2. tgravityaccmagmean - Average time domain signal value for the gravity acceleration magnitude mean
3. tbodyaccjerkmagmean - Average time domain signal value for the body linear acceleration jerk magnitude mean
4. tbodygyromagmean - Average time domain signal value for the gyroscope magnitude mean
5. tbodygyrojerkmagmean - Average time domain signal value for the gyroscope jerk magnitude mean
6. fbodyaccmagmean - Average frequency domain signal value for the body linear acceleration magnitude mean
7. fbodybodyaccjerkmagmean -  Average frequency domain signal value for the body linear acceleration jerk magnitude mean
8. fbodybodygyromagmean - Average frequency domain signal value for the gyroscope magnitude mean 
9. fbodybodygyrojerkmagmean - Average frequency domain signal value for the gyroscope jerk magnitude mean
10. tbodyaccmagstd - Average time domain signal value for the body linear acceleration magnitude standard deviation
11. tgravityaccmagstd - Average time domain signal value for the gravity acceleration magnitude standard deviation
12. tbodyaccjerkmagstd - Average time domain signal value for the body linear acceleration jerk magnitude standard deviation
13. tbodygyromagstd - Average time domain signal value for the gyroscope magnitude standard deviation.
14. tbodygyrojerkmagstd - Average time domain signal value for the gyroscope jerk magnitude standard deviation
15. fbodyaccmagstd - Average frequency domain signal value for the body linear acceleration magnitude standard deviation
16. fbodybodyaccjerkmagstd - Average frequency domain signal value for the body linear acceleration jerk magnitude standard deviation
17. fbodybodygyromagstd - Average frequency domain signal value for the gyroscope magnitude standard deviation
18. fbodybodygyrojerkmagstd - Average frequency domain signal value for the gyroscope jerk magnitude standard deviation

**Columns (subjects and activities):**

* one - Subject #1's feature averages
* two - Subject #2's feature averages
* three - Subject #3's feature averages
* four - Subject #4's feature averages
* five - Subject #5's feature averages
* six - Subject #6's feature averages
* seven - Subject #7's feature averages
* eight - Subject #8's feature averages
* nine - Subject #9's feature averages
* ten - Subject #10's feature averages
* eleven - Subject #11's feature averages
* twelve - Subject #12's feature averages
* thirteen - Subject #13's feature averages
* fourteen - Subject #14's feature averages
* fifteen - Subject #15's feature averages
* sixteen - Subject #16's feature averages
* seventeen - Subject #17's feature averages
* eighteen - Subject #18's feature averages
* nineteen - Subject #19's feature averages
* twenty - Subject #20's feature averages
* twentyone - Subject #21's feature averages
* twentytwo - Subject #22's feature averages
* twentythree - Subject #23's feature averages
* twentyfour - Subject #24's feature averages
* twentyfive - Subject #25's feature averages
* twentysix - Subject #26's feature averages
* twentyseven - Subject #27's feature averages
* twentyeight - Subject #28's feature averages
* twentynine - Subject #29's feature averages
* thirty - Subject #30's feature averages
* walking - Averages of features collected from all subjects while walking normally
* walkingupstairs - Averages of features collected from all subjects while walking upstairs
* walkingdownstairs - Averages of features collected from all subjects while walking downstairs
* sitting - Averages of features collected from all subjects while sitting
* standing - Averages of features collected from all subjects while standing
* laying - Averages of features collected from all subjects while laying
 
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
