run_analysis <- function() {
  ## Analyze the data for the Getting and Cleaning Data Coursera Class Project.

  ## REMOVE THIS IF-THEN STATEMENT BEFORE SUBMITTING!!!!!!!!!!!!!!!
  if(getwd() != "C:/Temp/data/unzipped") {
    setwd("C:/Temp/data/unzipped")
  }

  topdir <- "UCI HAR Dataset"
  testloc <- paste(topdir, "/test", sep="")
  trainloc <- paste(topdir, "/train", sep="")
  
  ## Add the column names, starting from the original data set (located in the "features" file)
  ## and making a few slight modifications.
  xcolumnnames <- featNames(topdir)
  
  ## Activities List
  activs <- read.table(paste(topdir,"/activity_labels.txt",sep=""))
  activlabs <- activs[,2]
  names(activs) <- c("activityId", "activityLabel")

  ## Read in the test and training data sets
  test <- readfils(testloc, "test", xcolumnnames)
  train <- readfils(trainloc, "train", xcolumnnames)

  ## Combine the test and training data sets
  combined <- rbind(test, train)

  ## Extract only the columns that are mean or standard deviation of a measure (also included the
  ## subject identifier and the activity identifier).
  meansd <- sapply(names(combined), function(x) any(grep(paste(c('activityId','subjectId','-mean','st_dev'),collapse='|'), x)))
  combmnsd <- combined[,meansd]
  
  ## Remove the meanFreq columns 
  meansd <- sapply(names(combmnsd), function(x) any(!grepl('meanFreq', x)))
  combmnsd <- combmnsd[,meansd]

  ## Add activity labels
  mergemnsd <- merge(combmnsd, activs, by.x="activityId", by.y="activityId")

  ## Reorder the columns of the above data set
  mergemnsd <- mergemnsd[c(2,1,ncol(mergemnsd),3:(ncol(mergemnsd)-1))]  

  
  ## Create a second tidy data set to calculate the mean for each variable for each activity and each subject.

  ## Check to see if the plyr package is installed, as it is required for the ddply() function.
  checkpkg("plyr")

  ## Use the ddply function from the plyr package to apply the mean function to each of the columns
  ## (except for the subjectId and activityLabel columns)
  tidymeans <- ddply(mergemnsd, c("subjectId", "activityLabel"), function(x) sapply(x[4:ncol(x)], mean))

  ## Save the tidy data into a file.  I chose to save both .csv and .txt file versions.
  write.table(tidymeans, file="tidydata.txt", sep="\t", row.names=FALSE)
  write.table(tidymeans, file="tidydata.csv", sep=",", row.names=FALSE)

  ## Return the tidy data set to the caller.
  return(tidymeans)
}



readfils <- function(sourceDir, testOrTrain, colmnnames) {
  ## Function for reading in files and labeling the columns, then combining the data using cbind()
  xfil <- read.table(paste(sourceDir, "/X_", testOrTrain, ".txt", sep=""))

  names(xfil) <- colmnnames
  yfil <- read.table(paste(sourceDir, "/y_", testOrTrain, ".txt", sep=""))
  names(yfil) <- "activityId"
  subj <- read.table(paste(sourceDir, "/subject_", testOrTrain, ".txt", sep=""))
  names(subj) <- "subjectId"

  result <- cbind(subj, yfil, xfil)
  return(result)
}



checkpkg <- function(packageName){
  ## Function to check to see if a required package is installed and loaded.
  if (!require(packageName, character.only=TRUE))
    {
      install.packages(packageName, repos=url("http://cran.us.r-project.org"), dependencies=TRUE)
      if (!require(packageName, character.only=TRUE)) { stop("Package not found.") }
    }
}


featNames <- function(toplevdir) {
  ## Use the original column names from the original data set (located in the "features" file.
  xcolnames <- read.table(paste(toplevdir, "/features.txt", sep=""))
  xcolnames <- xcolnames[,2]

  ## Use gsub() to replace various components of the feature names.
  xcolnames <- gsub("^f", "mean-freq-", xcolnames)
  xcolnames <- gsub("^t", "mean-time-", xcolnames)
  xcolnames <- gsub("BodyBody", "Body-", xcolnames)
  xcolnames <- gsub("Body", "Body-", xcolnames)
  xcolnames <- gsub("Gravity", "Gravity-", xcolnames)
  xcolnames <- gsub("Mag", "Magnitude", xcolnames)
  xcolnames <- gsub("mean\\(\\)", "mean", xcolnames)
  xcolnames <- gsub("std\\(\\)", "st_dev", xcolnames)
  xcolnames <- gsub("--", "-", xcolnames)
  
  return(xcolnames)
}
