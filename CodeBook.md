---
title: "Getting Data and Cleaning Cookbook for HAR Dataset"
date: 06-01-2024
output:
  html_document:
    keep_md: yes
---

## Project Description
This project demonstrates how to collect, work with, and clean a data set. The final deliverable is a prepared tidy data that can be used for later analysis. 
The complete deliverables include:
1) a tidy data set
2) a link to a Github repository with the script for performing the analysis
3) a code book that describes the variables, the data, and any transformations or work performed to clean up the data (this document)
4) a README.md in the repo along with the scripts. 

##Study design and data processing is included on the README.MD in the repo. This includes:
1.  Details of the data
2.  Process to get and clean the data
  A. Steps to be executed before running the script run_analysis.R
  B. Reading relevant data
  C. Cleaning the data
  D. Getting the summary data set as a tidy data
3. Original details of the data

##Description of the variables in the tiny_data.txt file
The tidy data set comprises of the summary of the HAR data set variables, but only for those variables that represented the mean and standard deviations, which is for **67 variables**.

The mean and the standard deviations are computed for all these 67 variables. This is identified by the keyword _mean or _sd suffxed at the end of the variable names.
**For example:
tBodyGyro-mean()-Z_mean : indicates the mean of the tBodyGyro_mean along the Z axis.
tBodyGyro-mean()-Z_sd : indicates the standard deviation of the tBodyGyro_mean along the Z axis.

## Sample set of the variables present in the final result (a tidy data set)
$ subject                         : int [1:40] 1 2 3 4 4 5 6 6 7 8...

$ activity                        : chr [1:40] "WALKING" "WALKING" "WALKING"  ...

$ tBodyAcc-mean()-X_mean          : num [1:40] 0.266 0.273 0.273 0.277 0.27 ...

$ tBodyAcc-mean()-Y_mean          : num [1:40] -0.0183 -0.0191 -0.0179 -0.0133 -0.0171 ...

$ tBodyAcc-mean()-Z_mean          : num [1:40] -0.108 -0.116 -0.106 -0.106 -0.11 ...

$ tBodyAcc-std()-X_mean           : num [1:40] -0.546 -0.606 -0.623 -0.684 -0.481 ...

$ tBodyAcc-std()-Y_mean           : num [1:40] -0.368 -0.429 -0.48 -0.59 -0.384 ...

$ tBodyAcc-std()-Z_mean           : num [1:40] -0.503 -0.589 -0.654 -0.742 -0.658 ...

$ tGravityAcc-mean()-X_mean       : num [1:40] 0.745 0.661 0.708 0.731 0.667 ...

$ tGravityAcc-mean()-Y_mean       : num [1:40] -0.0826 -0.1472 -0.0261 0.0723 0.1761 ...

$ tGravityAcc-mean()-Z_mean       : num [1:40] 0.0723 0.1349 0.0481 0.194 0.117 ...

$ tBodyAcc-mean()-X_sd            : num [1:40] 0.0835 0.0488 0.0609 0.0462 0.0717 ...

$ tBodyAcc-mean()-Y_sd            : num [1:40] 0.0519 0.0237 0.0359 0.0353 0.0329 ...

$ tBodyAcc-mean()-Z_sd            : num [1:40] 0.0752 0.046 0.0459 0.0562 0.0362 ...

$ tBodyAcc-std()-X_sd             : num [1:40] 0.393 0.402 0.38 0.36 0.431 ...

$ tBodyAcc-std()-Y_sd             : num [1:40] 0.506 0.541 0.46 0.389 0.433 ...

$ tBodyAcc-std()-Z_sd             : num [1:40] 0.394 0.403 0.297 0.237 0.256 ...
