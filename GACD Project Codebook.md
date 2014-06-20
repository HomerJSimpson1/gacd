CODEBOOK FOR GETTING AND CLEANING DATA PROJECT
========================================================

The Getting and Cleaning Data Coursera Course Project involved preparing a tidy data set from the raw data downloaded from the following URL:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

This data was collected by a group at the University of California at Irvine.  The URL of the website for their project is:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

<br/>

<h3>OVERVIEW:</h3>  
From the information disseminated with the data, we learn that the data for this project were collected from the accelerometer and gyroscope of Samsung smart phones (Galaxy S II model) of 30 subjects (age range 19-48) while performing various activities.  Each subject performed 6 different activities: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, and LAYING.  The accelerometer (measures acceleration) and gyroscope (measures orientation, which can be utilized to ascertain angular velocity) data were used to determine 3-axial linear acceleration and 3-axial angular velocity of the subjects while performing their activities.  The acceleration data was separated into two signals: the signal for the body's acceleration (dynamic acceleration) and the signal for the acceleration due to gravity (static acceleration). The resulting data was filtered, normalized (within bounds of [-1,1]), and randomly partitioned into training and test data.

**NOTES REGARDING UNITS:** Because the data was normalized, the units cancel, and the resulting variables in the data set are therefore unitless.  The only other variables are subjectId and activityLabel, so actually all of the variables in the data set are unitless.  Therefore, no discussion of units will occur below.

For our project, we used only a subset of the total data (which consisted of 561 variables plus the subject identifier and the activity identifier).  We selected for our tidy data set the subject id, the activity id (which we replaced with the activity label, as it is more informative), and 66 other variables which represent either the mean or standard deviation of a measurement.

For more details, see the above URL for the project's website.  

Except for the activityLabel variable (a categorical variable), all of the variables are numerical variables.  All of the numerical variables, except the subjectId variable, are continuous numerical variables.

<br/>

Below are the column names in the tidy data set (both the original name and the descriptive variable name I applied):


```
##                  Descriptive Variable Name      Original Variable Name
## 1                                subjectId                   subjectId
## 2                            activityLabel               activityLabel
## 3                mean_time_Body_Acc_mean_X           tBodyAcc-mean()-X
## 4                mean_time_Body_Acc_mean_Y           tBodyAcc-mean()-Y
## 5                mean_time_Body_Acc_mean_Z           tBodyAcc-mean()-Z
## 6              mean_time_Body_Acc_st_dev_X            tBodyAcc-std()-X
## 7              mean_time_Body_Acc_st_dev_Y            tBodyAcc-std()-Y
## 8              mean_time_Body_Acc_st_dev_Z            tBodyAcc-std()-Z
## 9             mean_time_Gravity_Acc_mean_X        tGravityAcc-mean()-X
## 10            mean_time_Gravity_Acc_mean_Y        tGravityAcc-mean()-Y
## 11            mean_time_Gravity_Acc_mean_Z        tGravityAcc-mean()-Z
## 12          mean_time_Gravity_Acc_st_dev_X         tGravityAcc-std()-X
## 13          mean_time_Gravity_Acc_st_dev_Y         tGravityAcc-std()-Y
## 14          mean_time_Gravity_Acc_st_dev_Z         tGravityAcc-std()-Z
## 15           mean_time_Body_AccJerk_mean_X       tBodyAccJerk-mean()-X
## 16           mean_time_Body_AccJerk_mean_Y       tBodyAccJerk-mean()-Y
## 17           mean_time_Body_AccJerk_mean_Z       tBodyAccJerk-mean()-Z
## 18         mean_time_Body_AccJerk_st_dev_X        tBodyAccJerk-std()-X
## 19         mean_time_Body_AccJerk_st_dev_Y        tBodyAccJerk-std()-Y
## 20         mean_time_Body_AccJerk_st_dev_Z        tBodyAccJerk-std()-Z
## 21              mean_time_Body_Gyro_mean_X          tBodyGyro-mean()-X
## 22              mean_time_Body_Gyro_mean_Y          tBodyGyro-mean()-Y
## 23              mean_time_Body_Gyro_mean_Z          tBodyGyro-mean()-Z
## 24            mean_time_Body_Gyro_st_dev_X           tBodyGyro-std()-X
## 25            mean_time_Body_Gyro_st_dev_Y           tBodyGyro-std()-Y
## 26            mean_time_Body_Gyro_st_dev_Z           tBodyGyro-std()-Z
## 27          mean_time_Body_GyroJerk_mean_X      tBodyGyroJerk-mean()-X
## 28          mean_time_Body_GyroJerk_mean_Y      tBodyGyroJerk-mean()-Y
## 29          mean_time_Body_GyroJerk_mean_Z      tBodyGyroJerk-mean()-Z
## 30        mean_time_Body_GyroJerk_st_dev_X       tBodyGyroJerk-std()-X
## 31        mean_time_Body_GyroJerk_st_dev_Y       tBodyGyroJerk-std()-Y
## 32        mean_time_Body_GyroJerk_st_dev_Z       tBodyGyroJerk-std()-Z
## 33        mean_time_Body_AccMagnitude_mean          tBodyAccMag-mean()
## 34      mean_time_Body_AccMagnitude_st_dev           tBodyAccMag-std()
## 35     mean_time_Gravity_AccMagnitude_mean       tGravityAccMag-mean()
## 36   mean_time_Gravity_AccMagnitude_st_dev        tGravityAccMag-std()
## 37    mean_time_Body_AccJerkMagnitude_mean      tBodyAccJerkMag-mean()
## 38  mean_time_Body_AccJerkMagnitude_st_dev       tBodyAccJerkMag-std()
## 39       mean_time_Body_GyroMagnitude_mean         tBodyGyroMag-mean()
## 40     mean_time_Body_GyroMagnitude_st_dev          tBodyGyroMag-std()
## 41   mean_time_Body_GyroJerkMagnitude_mean     tBodyGyroJerkMag-mean()
## 42 mean_time_Body_GyroJerkMagnitude_st_dev      tBodyGyroJerkMag-std()
## 43               mean_freq_Body_Acc_mean_X           fBodyAcc-mean()-X
## 44               mean_freq_Body_Acc_mean_Y           fBodyAcc-mean()-Y
## 45               mean_freq_Body_Acc_mean_Z           fBodyAcc-mean()-Z
## 46             mean_freq_Body_Acc_st_dev_X            fBodyAcc-std()-X
## 47             mean_freq_Body_Acc_st_dev_Y            fBodyAcc-std()-Y
## 48             mean_freq_Body_Acc_st_dev_Z            fBodyAcc-std()-Z
## 49           mean_freq_Body_AccJerk_mean_X       fBodyAccJerk-mean()-X
## 50           mean_freq_Body_AccJerk_mean_Y       fBodyAccJerk-mean()-Y
## 51           mean_freq_Body_AccJerk_mean_Z       fBodyAccJerk-mean()-Z
## 52         mean_freq_Body_AccJerk_st_dev_X        fBodyAccJerk-std()-X
## 53         mean_freq_Body_AccJerk_st_dev_Y        fBodyAccJerk-std()-Y
## 54         mean_freq_Body_AccJerk_st_dev_Z        fBodyAccJerk-std()-Z
## 55              mean_freq_Body_Gyro_mean_X          fBodyGyro-mean()-X
## 56              mean_freq_Body_Gyro_mean_Y          fBodyGyro-mean()-Y
## 57              mean_freq_Body_Gyro_mean_Z          fBodyGyro-mean()-Z
## 58            mean_freq_Body_Gyro_st_dev_X           fBodyGyro-std()-X
## 59            mean_freq_Body_Gyro_st_dev_Y           fBodyGyro-std()-Y
## 60            mean_freq_Body_Gyro_st_dev_Z           fBodyGyro-std()-Z
## 61        mean_freq_Body_AccMagnitude_mean          fBodyAccMag-mean()
## 62      mean_freq_Body_AccMagnitude_st_dev           fBodyAccMag-std()
## 63    mean_freq_Body_AccJerkMagnitude_mean  fBodyBodyAccJerkMag-mean()
## 64  mean_freq_Body_AccJerkMagnitude_st_dev   fBodyBodyAccJerkMag-std()
## 65       mean_freq_Body_GyroMagnitude_mean     fBodyBodyGyroMag-mean()
## 66     mean_freq_Body_GyroMagnitude_st_dev      fBodyBodyGyroMag-std()
## 67   mean_freq_Body_GyroJerkMagnitude_mean fBodyBodyGyroJerkMag-mean()
## 68 mean_freq_Body_GyroJerkMagnitude_st_dev  fBodyBodyGyroJerkMag-std()
```


<br/><br/>
<h3>VARIABLE DESCRIPTIONS:</h3>
A more detailed description of each variable follows:  
<br/><br/>

```
## [1] "subjectId"
```

There are 30 subjects in this study overall.  This ID uniquely identifies each subject.  
**Variable Type:** Discrete numerical variable  
**Variable Domain:** [1,30]  


```
## [1] "activityLabel"
```

Each subject performed multiple activities.  This descriptive label uniquely identifies the activity that was being performed by the subject when the associated measurements were taken.  
**Variable Type:** Categorical (nominal) variable  
**Set of Possible Values:**  
* WALKING
* WALKING_UPSTAIRS
* WALKING_DOWNSTAIRS
* SITTING
* STANDING
* LAYING  

<br/><br/>

**TIME DOMAIN VARIABLES**  

```
## [1] "mean_time_Body_Acc_mean_X, mean_time_Body_Acc_mean_Y, mean_time_Body_Acc_mean_Z"
```

These variables are the averages of the estimated means of the measurements, in the time domain, of the acceleration component of the body in the x, y, and z-axes respectively, for each given activity and for each subject.  
**Variable Type:** Continuous numerical variable  
**Variable Domain:** [-1,1]  


```
## [1] "mean_time_Body_Acc_st_dev_X, mean_time_Body_Acc_st_dev_Y, mean_time_Body_Acc_st_dev_Z"
```

These variables are the averages of the estimated standard deviations of the measurements, in the time domain, of the acceleration component of the body along the x-axis, y-axis, and z-axis respectively, for each given activity and for each subject.  
**Variable Type:** Continuous numerical variable  
**Variable Domain:** [-1,1]  


```
## [1] "mean_time_Gravity_Acc_mean_X, mean_time_Gravity_Acc_mean_Y, mean_time_Gravity_Acc_mean_Z"
```

These variables are the averages of the estimated means of the measurements, in the time domain, of the acceleration component due to gravity along the x, y, and z-axes, for each given activity and for each subject.  
**Variable Type:** Continuous numerical variable  
**Variable Domain:** [-1,1]  


```
## [1] "mean_time_Gravity_Acc_st_dev_X, mean_time_Gravity_Acc_st_dev_Y, mean_time_Gravity_Acc_st_dev_Z"
```

These variables are the averages of the estimated standard deviations of the measurements, in the time domain, of the acceleration component due to gravity along the x, y, and z-axes for each given activity and for each subject.  
**Variable Type:** Continuous numerical variable  
**Variable Domain:** [-1,1]  


```
## [1] "mean_time_Body_AccJerk_mean_X, mean_time_Body_AccJerk_mean_Y, mean_time_Body_AccJerk_mean_Z"
```

These variables are the averages of the estimated means of the measurements, in the time domain, of the jerk (the jerk is the acceleration of the acceleration, here it is the body's linear acceleration that was derived) component of the body along the x, y, and z-axes for each given activity and for each subject.  
**Variable Type:** Continuous numerical variable  
**Variable Domain:** [-1,1]  


```
## [1] "mean_time_Body_AccJerk_st_dev_X, mean_time_Body_AccJerk_st_dev_Y, mean_time_Body_AccJerk_st_dev_Z"
```

These variables are the averages of the estimated standard deviations of the measurements, in the time domain, of the jerk component of the body along the x, y, and z-axes for each given activity and for each subject.  
**Variable Type:** Continuous numerical variable  
**Variable Domain:** [-1,1]  


```
## [1] "mean_time_Body_Gyro_mean_X, mean_time_Body_Gyro_mean_Y, mean_time_Body_Gyro_mean_Z"
```

These variables are the averages of the estimated means of the measurements, in the time domain, of the body's orientation component along the x, y, and z-axes for each given activity and for each subject.  
**Variable Type:** Continuous numerical variable  
**Variable Domain:** [-1,1]  


```
## [1] "mean_time_Body_Gyro_st_dev_X, mean_time_Body_Gyro_st_dev_Y, mean_time_Body_Gyro_st_dev_Z"
```

These variables are the averages of the estimated standard deviations of the measurements, in the time domain, of the body's orientation component along the x, y, and z-axes for each given activity and for each subject.  
**Variable Type:** Continuous numerical variable  
**Variable Domain:** [-1,1]  


```
## [1] "mean_time_Body_GyroJerk_mean_X, mean_time_Body_GyroJerk_mean_Y, mean_time_Body_GyroJerk_mean_Z"
```

These variables are the averages of the estimated means of the measurements, in the time domain, of the angular velocity component (jerk signal derived from orientation information) of the body along the x, y, and z-axes for each given activity and for each subject.  
**Variable Type:** Continuous numerical variable  
**Variable Domain:** [-1,1]  


```
## [1] "mean_time_Body_GyroJerk_st_dev_X, mean_time_Body_GyroJerk_st_dev_Y, mean_time_Body_GyroJerk_st_dev_Z"
```

These variables are the averages of the estimated standard deviations of the measurements, in the time domain, of the angular velocity (jerk signal derived from orientation information) component of the body along the x, y, and z-axes for each given activity and for each subject.  
**Variable Type:** Continuous numerical variable  
**Variable Domain:** [-1,1]  


```
## [1] "mean_time_Body_AccMagnitude_mean"
```

This variable is the average of the estimated means of the magnitudes of the measurements, in the time domain, of the acceleration component of the body for each given activity and for each subject. The magnitudes here are calculated using the Euclidean norm of the tri-axial measurements.  
**Variable Type:** Continuous numerical variable  
**Variable Domain:** [-1,1]  


```
## [1] "mean_time_Body_AccMagnitude_st_dev"
```

This variable is the average of the estimated standard deviations of the magnitudes of the measurements, in the time domain, of the acceleration component of the body for each given activity and for each subject. The magnitudes here are calculated using the Euclidean norm of the tri-axial measurements.    
**Variable Type:** Continuous numerical variable  
**Variable Domain:** [-1,1]  


```
## [1] "mean_time_Gravity_AccMagnitude_mean"
```

This variable is the average of the estimated means of the magnitudes of the measurements, in the time domain, of the acceleration component due to gravity for each given activity and for each subject. The magnitudes here are calculated using the Euclidean norm of the tri-axial measurements.  
**Variable Type:** Continuous numerical variable  
**Variable Domain:** [-1,1]  


```
## [1] "mean_time_Gravity_AccMagnitude_st_dev"
```

This variable is the average of the estimated standard deviations of the magnitude of the measurements, in the time domain, of the acceleration component due to gravity for each given activity and for each subject. The magnitudes here are calculated using the Euclidean norm of the tri-axial measurements.  
**Variable Type:** Continuous numerical variable  
**Variable Domain:** [-1,1]  


```
## [1] "mean_time_Body_AccJerkMagnitude_mean"
```

This variable is the average of the estimated means of the magnitudes of the measurements, in the time domain, of the acceleration jerk component of the body (linear acceleration) for each given activity and for each subject. The magnitudes here are calculated using the Euclidean norm of the tri-axial measurements.  
**Variable Type:** Continuous numerical variable  
**Variable Domain:** [-1,1]  


```
## [1] "mean_time_Body_AccJerkMagnitude_st_dev"
```

This variable is the average of the estimated standard deviations of the magnitudes of the measurements, in the time domain, of the acceleration jerk component of the body (linear acceleration) for each given activity and for each subject. The magnitudes here are calculated using the Euclidean norm of the tri-axial measurements.    
**Variable Type:** Continuous numerical variable  
**Variable Domain:** [-1,1] 


```
## [1] "mean_time_Body_GyroMagnitude_mean"
```

This variable is the average of the estimated means of the magnitudes of the measurements, in the time domain, of the orientation component of the body for each given activity and for each subject. The magnitudes here are calculated using the Euclidean norm of the tri-axial measurements.  
**Variable Type:** Continuous numerical variable  
**Variable Domain:** [-1,1]  


```
## [1] "mean_time_Body_GyroMagnitude_st_dev"
```

This variable is the average of the estimated standard deviations of the magnitudes of the measurements, in the time domain, of the orientation component of the body for each given activity and for each subject. The magnitudes here are calculated using the Euclidean norm of the tri-axial measurements.    
**Variable Type:** Continuous numerical variable  
**Variable Domain:** [-1,1] 


```
## [1] "mean_time_Body_GyroJerkMagnitude_mean"
```

This variable is the average of the estimated means of the magnitudes of the measurements, in the time domain, of the angular velocity (jerk signal) component of the body for each given activity and for each subject. The magnitudes here are calculated using the Euclidean norm of the tri-axial measurements.  
**Variable Type:** Continuous numerical variable  
**Variable Domain:** [-1,1]  


```
## [1] "mean_time_Body_GyroJerkMagnitude_st_dev"
```

This variable is the average of the estimated standard deviations of the magnitudes of the measurements, in the time domain, of the angular velocity (jerk signal) component of the body for each given activity and for each subject. The magnitudes here are calculated using the Euclidean norm of the tri-axial measurements.    
**Variable Type:** Continuous numerical variable  
**Variable Domain:** [-1,1] 

<br/><br/>

**FREQUENCY DOMAIN VARIABLES**  

```
## [1] "mean_freq_Body_Acc_mean_X, mean_freq_Body_Acc_mean_Y, mean_freq_Body_Acc_mean_Z"
```

These variables are the averages of the estimated means of the measurements, in the frequency domain (calculated by applying a Fast Fourier Transform), of the acceleration component of the body in the x, y, and z-axes respectively, for each given activity and for each subject.  
**Variable Type:** Continuous numerical variable  
**Variable Domain:** [-1,1]  


```
## [1] "mean_freq_Body_Acc_st_dev_X, mean_freq_Body_Acc_st_dev_Y, mean_freq_Body_Acc_st_dev_Z"
```

These variables are the averages of the estimated standard deviations of the measurements, in the frequency domain (calculated by applying a Fast Fourier Transform), of the acceleration component of the body along the x-axis, y-axis, and z-axis respectively, for each given activity and for each subject.  
**Variable Type:** Continuous numerical variable  
**Variable Domain:** [-1,1]  









<br/>




<br/>




<br/>

**Citations:**
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
