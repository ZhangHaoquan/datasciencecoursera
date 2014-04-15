# Readme Document

## How the Script Works

1. The code will first create a folder called "data" in your working directory if you do not have one
2. setInternet2(use=T) is used in window OS setting in order to read from http**s** urls
3. Out of 561 features, there were 86 relevant features (contain mean or standard deviations measurements)
4. Relevant features,  response/dependent variable/y and subject labels were extracted from both train and test data sets
5. rbind is used to vertically concatenate (merge) the data sets to form the first data set, "full_data""
6. The other data set "full_data_subjectAndActivity" is form by considering group means based on subject as well as activity

## Codebook

### Target Variable

y     | Labels
----- | :---------|
1     | WALKING
2     | WALKING_UPSTAIRS
3     | WALKING_DOWNSTAIRS
4     | SITTING
5     | STANDING
6     | LAYING

### Features

t measurements      | f measurements
:------------------ | :---------------
tBodyAcc-XYZ        | fBodyAcc-XYZ
tGravityAcc-XYZ     | (na)
tBodyAccJerk-XYZ    | fBodyAccJerk-XYZ
tBodyGyro-XYZ       | fBodyGyro-XYZ
tBodyGyroJerk-XYZ   | (na)
tBodyAccMag         | fBodyAccMag
tGravityAccMag      | (na)
tBodyAccJerkMag     | fBodyAccJerkMag
tBodyGyroMag        | fBodyGyroMag
tBodyGyroJerkMag    | fBodyGyroJerkMag

> 33 types of signal  
> 2 set of variables [mean (-mean-) and standard deviation (-std-)]  
> 66 variables in total 
 
### Other Variables
Variable      | Description
:-------------|:------------
subject       | 1 - 30
sub_act_combi | Combinations of subject and activities (30*6 different combinations, e.g. subject 1 sitting)

## Short Description 
> Extracted from data description (See links below)

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to **some** of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

## Data Source Information
### Source
1. [UCI HAR Dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip )

2. [Data origin](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones )

### License information
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
