CODEBOOK FOR GETTING AND CLEANING DATA PROJECT
========================================================

The Getting and Cleaning Data Coursera Course Project involved preparing a tidy data set from the raw data downloaded from the following URL:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

This data was collected by a group at the University of California at Irvine.  The URL of the website for their project is:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

<br/>

<h3>OVERVIEW:</h3>  
From the information disseminated with the data, we learn that the data for this project were collected from the accelerometer and gyroscope of Samsung smart phones (Galaxy S II model) of 30 subjects (age range 19-48) while performing various activities.  Each subject performed 6 different activities: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, and LAYING.  The accelerometer and gyroscope data were used to determine 3-axial linear acceleration and 3-axial angular velocity of the subjects while performing their activities.  The resulting data was filtered, normalized (within bounds of [-1,1]), and randomly partitioned into training and test data.

Because the data was normalized, the units cancel, and the resulting variables in the data set are therefore unitless.

For our project, we used only a subset of the total data (which consisted of 561 variables plus the subject identifier and the activity identifier).  We selected for our tidy data set the subject id, the activity id (which we replaced with the activity label, as it is more informative), and 66 other variables which represent either the mean or standard deviation of a measurement.

For more details, see the above URL for the project's website.  

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


A more detailed description of each variable follows:


```
## [1] "subjectId"
```

There are 30 subjects in this study overall.  This ID uniquely identifies each subject.  
There are no units for this variable.


```
## [1] "activityLabel"
```

Each subject performed multiple activities.  This descriptive label uniquely identifies the activity that was being performed by the subject when the associated measurements were taken.  
There are no units for this variable.


```
## [1] "mean_time_Body_Acc_mean_X"
```

<<<<<<< HEAD

This variable is the average of the measurements, in the time domain, of the estimated mean of the acceleration componentof the body in the x-direction for each given activity and for each subject.  



```
## [1] "mean_time_Body_Acc_mean_Y"
```

This variable is the average of the measurements, in the time domain, of the estimated mean of the acceleration componentof the body along the y-axis for each given activity and for each subject.



```
## [1] "mean_time_Body_Acc_mean_Z"
```
=======
This variable is the average of the measurements, in the time domain, of the estimated mean of the acceleration component of the body in the x-direction for each given activity and for each subject.  
>>>>>>> c9d96f8c77d771b235eaedccf0d360b291d01e28

This variable is the average of the measurements, in the time domain, of the estimated mean of the acceleration componentof the body along the z-axis for each given activity and for each subject.




<br/>

<br/>



<br/>




<br/>

**Citations:**
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
