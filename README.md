# Readme document

## How the script works

1. The code will first create a folder called "data" in your working directory if you do not have one
2. setInternet2(use=T) is used in window OS setting in order to read from http**s** urls
3. Out of 561 features, there were 86 relevant features (contain mean or standard deviations measurements)
4. Relevant features,  response/dependent variable/y and subject labels were extracted from both train and test data sets
5. rbind is used to vertically concatenate (merge) the data sets to form the first data set, "full_data""
6. The other data set "full_data_subjectAndActivity" is form by considering group means based on subject as well as activity

## Codebook

### y-variable

y Values    | Labels
----------- | :---------|
1           | WALKING
2           | WALKING_UPSTAIRS
3           | WALKING_DOWNSTAIRS
4           | SITTING
5           | STANDING
6           | LAYING

### X-variables
 [1] "tBodyAcc-mean-X"                     
 [2] "tBodyAcc-mean-Y"                     
 [3] "tBodyAcc-mean-Z"                     
 [4] "tBodyAcc-std-X"                      
 [5] "tBodyAcc-std-Y"                      
 [6] "tBodyAcc-std-Z"                      
 [7] "tGravityAcc-mean-X"                  
 [8] "tGravityAcc-mean-Y"                  
 [9] "tGravityAcc-mean-Z"                  
[10] "tGravityAcc-std-X"                   
[11] "tGravityAcc-std-Y"                   
[12] "tGravityAcc-std-Z"                   
[13] "tBodyAccJerk-mean-X"                 
[14] "tBodyAccJerk-mean-Y"                 
[15] "tBodyAccJerk-mean-Z"                 
[16] "tBodyAccJerk-std-X"                  
[17] "tBodyAccJerk-std-Y"                  
[18] "tBodyAccJerk-std-Z"                  
[19] "tBodyGyro-mean-X"                    
[20] "tBodyGyro-mean-Y"                    
[21] "tBodyGyro-mean-Z"                    
[22] "tBodyGyro-std-X"                     
[23] "tBodyGyro-std-Y"                     
[24] "tBodyGyro-std-Z"                     
[25] "tBodyGyroJerk-mean-X"                
[26] "tBodyGyroJerk-mean-Y"                
[27] "tBodyGyroJerk-mean-Z"                
[28] "tBodyGyroJerk-std-X"                 
[29] "tBodyGyroJerk-std-Y"                 
[30] "tBodyGyroJerk-std-Z"                 
[31] "tBodyAccMag-mean"                    
[32] "tBodyAccMag-std"                     
[33] "tGravityAccMag-mean"                 
[34] "tGravityAccMag-std"                  
[35] "tBodyAccJerkMag-mean"                
[36] "tBodyAccJerkMag-std"                 
[37] "tBodyGyroMag-mean"                   
[38] "tBodyGyroMag-std"                    
[39] "tBodyGyroJerkMag-mean"               
[40] "tBodyGyroJerkMag-std"                
[41] "fBodyAcc-mean-X"                     
[42] "fBodyAcc-mean-Y"                     
[43] "fBodyAcc-mean-Z"                     
[44] "fBodyAcc-std-X"                      
[45] "fBodyAcc-std-Y"                      
[46] "fBodyAcc-std-Z"                      
[47] "fBodyAcc-meanFreq-X"                 
[48] "fBodyAcc-meanFreq-Y"                 
[49] "fBodyAcc-meanFreq-Z"                 
[50] "fBodyAccJerk-mean-X"                 
[51] "fBodyAccJerk-mean-Y"                 
[52] "fBodyAccJerk-mean-Z"                 
[53] "fBodyAccJerk-std-X"                  
[54] "fBodyAccJerk-std-Y"                  
[55] "fBodyAccJerk-std-Z"                  
[56] "fBodyAccJerk-meanFreq-X"             
[57] "fBodyAccJerk-meanFreq-Y"             
[58] "fBodyAccJerk-meanFreq-Z"             
[59] "fBodyGyro-mean-X"                    
[60] "fBodyGyro-mean-Y"                    
[61] "fBodyGyro-mean-Z"                    
[62] "fBodyGyro-std-X"                     
[63] "fBodyGyro-std-Y"                     
[64] "fBodyGyro-std-Z"                     
[65] "fBodyGyro-meanFreq-X"                
[66] "fBodyGyro-meanFreq-Y"                
[67] "fBodyGyro-meanFreq-Z"                
[68] "fBodyAccMag-mean"                    
[69] "fBodyAccMag-std"                     
[70] "fBodyAccMag-meanFreq"                
[71] "fBodyBodyAccJerkMag-mean"            
[72] "fBodyBodyAccJerkMag-std"             
[73] "fBodyBodyAccJerkMag-meanFreq"        
[74] "fBodyBodyGyroMag-mean"               
[75] "fBodyBodyGyroMag-std"                
[76] "fBodyBodyGyroMag-meanFreq"           
[77] "fBodyBodyGyroJerkMag-mean"           
[78] "fBodyBodyGyroJerkMag-std"            
[79] "fBodyBodyGyroJerkMag-meanFreq"       
[80] "angle(tBodyAccMean,gravity)"         
[81] "angle(tBodyAccJerkMean),gravityMean)"
[82] "angle(tBodyGyroMean,gravityMean)"    
[83] "angle(tBodyGyroJerkMean,gravityMean)"
[84] "angle(X,gravityMean)"                
[85] "angle(Y,gravityMean)"                
[86] "angle(Z,gravityMean)"   

### Other variable
subject is used to indicate whose data (1-30) the readings belong to

### Short Description (From documentation provided)
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to **some** of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions. They include:

t measurements      | f measurements
:------------------ | :---------------
tBodyAcc-XYZ        | fBodyAcc-XYZ
tGravityAcc-XYZ     | (na)
tBodyAccJerk-XYZ    | fBodyAccJerk-XYZ
tBodyGyro-XYZ       | fBodyGyro-XYZ
tBodyGyroJerk-XYZ   | fBodyAccJerk-XYZ
tBodyAccMag         | fBodyAccMag
tGravityAccMag      | (na)
tBodyAccJerkMag     | fBodyAccJerkMag
tBodyGyroMag        | fBodyGyroMag
tBodyGyroJerkMag    | fBodyGyroJerkMag

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean  
tBodyAccMean  
tBodyAccJerkMean  
tBodyGyroMean  
tBodyGyroJerkMean  

### Data Source information
1. [UCI HAR Dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip )

2. [Data origin](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones )

