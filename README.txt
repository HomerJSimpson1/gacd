## Coursera Class: Getting and Cleaning Data
## Class Project
## Filename: README.txt
## 

The Getting and Cleaning Data Coursera Course Project involved preparing a tidy data set from the raw data downloaded from the following URL:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

This data was collected by a group at the University of California at Irvine.  The URL of the website for their project is:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The code for the project can be found in the run_analysis.R file, also in this repo, as well as the Codebook for the project.

The code assumes, as per the course project instructions, that the top level folder for the data is "UCI HAR Dataset" and that it is located in your working directory, with the same internal structure as provided when downloading the data.  e.g. The top level directory ("UCI HAR Dataset") contains the "test" directory, the "train" directory, the "activity_labels.txt" file, the "features.txt" file, the "features_info.txt" file, and the "README.txt" file.

The checkpkg() helper function below may require, if the plyr package is not installed/loaded, that the user opens R as an administrator.

I used several helper functions, which are defined after the main function definition.  These functions are:
  (1) readfils()
  (2) checkpkg()
  (3) featNames()

The code of the main function starts off defining the top level directory, the directory location for the test data, and the directory for the training data.

The code then calls a helper function ("featNames()"), which accepts the top level directory for the data as a parameter, to read in and then modify the original column names, by expanding some of the abbreviations, eliminating parentheses, etc.

Then the activity ids and labels are read into a data frame.  

Now it's time to read in the test and training data, using a data frame to store each of the data sets.  This is accomplished using the readfils() helper function, which reads the data (x_data, y_data, and subject) into a data frame, adds the column names, and then combines the columns into one data frame using the R function cbind().

These two data frames (test and train) are then combined using the R function rbind() to "stack" the two data frames "on top of one another."

I then extract only the columns of interest, which are the data where a mean or standard deviation of the raw data was performed, the subjectId, and the activityId.  I replace the activityId with the activityLabel and reorder the data set.

The final step in finalizing the data into our tidy data set is to take the mean of the data for each subject for each activity.  In order to do this, I use the ddply() function from the plyr package.  In order to ensure that the plyr package is installed and loaded on the client computer, I use the "checkpkg()" helper function.
ASSUMPTION: The above step of installing the plyr package may require the user to be logged in as an administrator.

The last step is to write out to a file the tidy data set I created.  I chose to create both a .csv and .txt output, although the Coursera class project site will only accept the .txt version.

The last line of the function is to return the data set to the caller, in case I want to perform any further analysis or processing on the tidy data set.
