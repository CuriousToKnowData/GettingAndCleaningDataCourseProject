# GettingAndCleaningDataCourseProject
Peer review project 

# Details of the data**

Source: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
Official Description of the data: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

# Process to get and clean the data

**A. Steps to be executed before running the script run_analysis.R**
1. Download the data from the source into a folder on the laptop/machine
2. Unzip the data into the data folder.

The run_analysis.R script includes the following code:

**B. Reading relevant data
1. Read the following data sets from the data folder
    a. activity_labels.txt
    b. features.txt
    c. y_train.txt
    d. y_test.txt
    e. subject_train.txt
    f. subject_test.txt
    g. X_train.txt
    h. X_test.txt

**C. Cleaning the data
1. Rename data columns with meaningful names for data sets listed from 'a' to 'f'
2. Get the all the feature names and rename the data sets in 'g' and 'h' with appropriate names
3. Select columns that indicate the mean and standard deviation (dropping the rest of the columns)
4. Combine the data sets to get the complete train data using the indetified join keys in the respective data frames : subject, activity, metrics
5. Combine the data sets to get the complete test data  using the identified join keys in the respective data frames : subject, activity, metrics
6. Combine train and test data sets (which have the same dimenstion, structure and column names) to get the final data set.
   
**D. Getting the summary data set as a tidy data
1. Group the data by subject and activity and get the mean and standard deviation for all the other columns




