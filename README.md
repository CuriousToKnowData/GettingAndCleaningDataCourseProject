# GettingAndCleaningDataCourseProject
Peer review project 

**Details of the data**
Source: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
Official Description of the data: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

#Process to get and clean the data

A. Steps to be executed before running the script run_analysis.R
1. Download the data from the source into a folder on the laptop/machine
2. Unzip the data into the data folder.

The run_analysis.R script includes the following code:

B. Reading data to clean it up
1. Read the following data sets from the data folder
    a. activity_labels.txt
    b. features.txt
    c. y_train.txt
    d. y_test.txt
    e. subject_train.txt
    f. subject_test.txt
    g. X_train.txt
    h. X_test.txt
2. Rename data columns with meaningful names for data sets listed from 'a' to 'f'
3. Get the all the feature names and rename the data sets in 'g' and 'h' with appropriate names
4. Select columns that indicate the mean and standard deviation (dropping the rest of the columns)
5. Combine the data sets to get the train and test data

C. Getting the summary data set as a tidy data
1. Group the data by subject and activity and get the mean and standard deviation for all the other columns




