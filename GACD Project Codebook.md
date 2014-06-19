CODEBOOK FOR GETTING AND CLEANING DATA PROJECT
========================================================

The Getting and Cleaning Data Coursera Course Project involved preparing a tidy data set from the raw data downloaded from the following URL:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

This data was collected by a group at the University of California at Irvine.  The URL of the website for their project is:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones


Below are the column names in the tidy data set (both the original name and the descriptive variable name I applied):


```
##                  Descriptive Variable Name      Original Variable Name
## 1                                subjectId                   subjectId
## 2                            activityLabel               activityLabel
## 3                mean-time-Body-Acc-mean-X           tBodyAcc-mean()-X
## 4                mean-time-Body-Acc-mean-Y           tBodyAcc-mean()-Y
## 5                mean-time-Body-Acc-mean-Z           tBodyAcc-mean()-Z
## 6              mean-time-Body-Acc-st_dev-X            tBodyAcc-std()-X
## 7              mean-time-Body-Acc-st_dev-Y            tBodyAcc-std()-Y
## 8              mean-time-Body-Acc-st_dev-Z            tBodyAcc-std()-Z
## 9             mean-time-Gravity-Acc-mean-X        tGravityAcc-mean()-X
## 10            mean-time-Gravity-Acc-mean-Y        tGravityAcc-mean()-Y
## 11            mean-time-Gravity-Acc-mean-Z        tGravityAcc-mean()-Z
## 12          mean-time-Gravity-Acc-st_dev-X         tGravityAcc-std()-X
## 13          mean-time-Gravity-Acc-st_dev-Y         tGravityAcc-std()-Y
## 14          mean-time-Gravity-Acc-st_dev-Z         tGravityAcc-std()-Z
## 15           mean-time-Body-AccJerk-mean-X       tBodyAccJerk-mean()-X
## 16           mean-time-Body-AccJerk-mean-Y       tBodyAccJerk-mean()-Y
## 17           mean-time-Body-AccJerk-mean-Z       tBodyAccJerk-mean()-Z
## 18         mean-time-Body-AccJerk-st_dev-X        tBodyAccJerk-std()-X
## 19         mean-time-Body-AccJerk-st_dev-Y        tBodyAccJerk-std()-Y
## 20         mean-time-Body-AccJerk-st_dev-Z        tBodyAccJerk-std()-Z
## 21              mean-time-Body-Gyro-mean-X          tBodyGyro-mean()-X
## 22              mean-time-Body-Gyro-mean-Y          tBodyGyro-mean()-Y
## 23              mean-time-Body-Gyro-mean-Z          tBodyGyro-mean()-Z
## 24            mean-time-Body-Gyro-st_dev-X           tBodyGyro-std()-X
## 25            mean-time-Body-Gyro-st_dev-Y           tBodyGyro-std()-Y
## 26            mean-time-Body-Gyro-st_dev-Z           tBodyGyro-std()-Z
## 27          mean-time-Body-GyroJerk-mean-X      tBodyGyroJerk-mean()-X
## 28          mean-time-Body-GyroJerk-mean-Y      tBodyGyroJerk-mean()-Y
## 29          mean-time-Body-GyroJerk-mean-Z      tBodyGyroJerk-mean()-Z
## 30        mean-time-Body-GyroJerk-st_dev-X       tBodyGyroJerk-std()-X
## 31        mean-time-Body-GyroJerk-st_dev-Y       tBodyGyroJerk-std()-Y
## 32        mean-time-Body-GyroJerk-st_dev-Z       tBodyGyroJerk-std()-Z
## 33        mean-time-Body-AccMagnitude-mean          tBodyAccMag-mean()
## 34      mean-time-Body-AccMagnitude-st_dev           tBodyAccMag-std()
## 35     mean-time-Gravity-AccMagnitude-mean       tGravityAccMag-mean()
## 36   mean-time-Gravity-AccMagnitude-st_dev        tGravityAccMag-std()
## 37    mean-time-Body-AccJerkMagnitude-mean      tBodyAccJerkMag-mean()
## 38  mean-time-Body-AccJerkMagnitude-st_dev       tBodyAccJerkMag-std()
## 39       mean-time-Body-GyroMagnitude-mean         tBodyGyroMag-mean()
## 40     mean-time-Body-GyroMagnitude-st_dev          tBodyGyroMag-std()
## 41   mean-time-Body-GyroJerkMagnitude-mean     tBodyGyroJerkMag-mean()
## 42 mean-time-Body-GyroJerkMagnitude-st_dev      tBodyGyroJerkMag-std()
## 43               mean-freq-Body-Acc-mean-X           fBodyAcc-mean()-X
## 44               mean-freq-Body-Acc-mean-Y           fBodyAcc-mean()-Y
## 45               mean-freq-Body-Acc-mean-Z           fBodyAcc-mean()-Z
## 46             mean-freq-Body-Acc-st_dev-X            fBodyAcc-std()-X
## 47             mean-freq-Body-Acc-st_dev-Y            fBodyAcc-std()-Y
## 48             mean-freq-Body-Acc-st_dev-Z            fBodyAcc-std()-Z
## 49           mean-freq-Body-AccJerk-mean-X       fBodyAccJerk-mean()-X
## 50           mean-freq-Body-AccJerk-mean-Y       fBodyAccJerk-mean()-Y
## 51           mean-freq-Body-AccJerk-mean-Z       fBodyAccJerk-mean()-Z
## 52         mean-freq-Body-AccJerk-st_dev-X        fBodyAccJerk-std()-X
## 53         mean-freq-Body-AccJerk-st_dev-Y        fBodyAccJerk-std()-Y
## 54         mean-freq-Body-AccJerk-st_dev-Z        fBodyAccJerk-std()-Z
## 55              mean-freq-Body-Gyro-mean-X          fBodyGyro-mean()-X
## 56              mean-freq-Body-Gyro-mean-Y          fBodyGyro-mean()-Y
## 57              mean-freq-Body-Gyro-mean-Z          fBodyGyro-mean()-Z
## 58            mean-freq-Body-Gyro-st_dev-X           fBodyGyro-std()-X
## 59            mean-freq-Body-Gyro-st_dev-Y           fBodyGyro-std()-Y
## 60            mean-freq-Body-Gyro-st_dev-Z           fBodyGyro-std()-Z
## 61        mean-freq-Body-AccMagnitude-mean          fBodyAccMag-mean()
## 62      mean-freq-Body-AccMagnitude-st_dev           fBodyAccMag-std()
## 63    mean-freq-Body-AccJerkMagnitude-mean  fBodyBodyAccJerkMag-mean()
## 64  mean-freq-Body-AccJerkMagnitude-st_dev   fBodyBodyAccJerkMag-std()
## 65       mean-freq-Body-GyroMagnitude-mean     fBodyBodyGyroMag-mean()
## 66     mean-freq-Body-GyroMagnitude-st_dev      fBodyBodyGyroMag-std()
## 67   mean-freq-Body-GyroJerkMagnitude-mean fBodyBodyGyroJerkMag-mean()
## 68 mean-freq-Body-GyroJerkMagnitude-st_dev  fBodyBodyGyroJerkMag-std()
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
## [1] "mean-time-Body-Acc-mean-X"
```


This variable is the average of the measurements, in the time domain, of the acceleration componentof the body in the x-direction for each given activity and for each subject.  
The units for this variable are .
