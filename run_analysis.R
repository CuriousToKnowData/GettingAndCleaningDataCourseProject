library(dplyr)
library(utils)
library(tibble)

#Read data and name column appropriately
#activity lables data
activity_labels <- read.table("~/Documents/explorations/datasciencecoursera/data/uci_har_dataset/activity_labels.txt", quote="\"", comment.char="")
names(activity_labels) = c("activity_id", "activity")
head(activity_labels)

#features data
features <- read.table("~/Documents/explorations/datasciencecoursera/data/uci_har_dataset/features.txt", quote="\"", comment.char="")
names(features) = c("feature_id", "feature")
head(features)

#train data
X_train <- read.table("~/Documents/explorations/datasciencecoursera/data/uci_har_dataset/train/X_train.txt", quote="\"", comment.char="")
y_train <- read.table("~/Documents/explorations/datasciencecoursera/data/uci_har_dataset/train/y_train.txt", quote="\"", comment.char="")

#subject data train
subject_train <- read.table("~/Documents/explorations/datasciencecoursera/data/uci_har_dataset/train/subject_train.txt", quote="\"", comment.char="")

#test data
X_test <- read.table("~/Documents/explorations/datasciencecoursera/data/uci_har_dataset/test/X_test.txt", quote="\"", comment.char="")
y_test <- read.table("~/Documents/explorations/datasciencecoursera/data/uci_har_dataset/test/y_test.txt", quote="\"", comment.char="")

#subject data test
subject_test <- read.table("~/Documents/explorations/datasciencecoursera/data/uci_har_dataset/test/subject_test.txt", quote="\"", comment.char="")

#get train with labels
names(y_train) <- c("activity_id")
head(y_train)
table(y_train)

y_train_with_labels = merge(y_train, activity_labels, by = "activity_id")
table(y_train_with_labels$activity)

#get test with labels
names(y_test) <- c("activity_id")
head(y_test)
table(y_test)
y_test_with_labels = merge(y_test, activity_labels, by = "activity_id")
table(y_test_with_labels$activity)

names(subject_test) = c("subject")
head(subject_test)

names(subject_train) = c("subject")
head(subject_train)

#get column names in right format and update train and test data with column names
names(X_train) = c(dQuote(features$feature))
head(X_train)

names(X_test) = c(dQuote(features$feature))
head(X_test)
names(X_test) = gsub(("”"), "", names(X_test)) 
names(X_test) = gsub(("“"), "", names(X_test)) 
names(X_train) = gsub(("”"), "", names(X_train)) 
names(X_train) = gsub(("“"), "", names(X_train))
X_train = X_train[ , grepl( "mean\\(\\)" , names( X_train ) ) | grepl( "std" , names( X_train ) ) ]
X_test = X_test[ , grepl( "mean\\(\\)" , names( X_test ) ) | grepl( "std" , names( X_test ) ) ]

#get complete train and test data 
test = cbind(subject_test, X_test, y_test_with_labels)
train = cbind(subject_train,X_train, y_train_with_labels) 
complete_data = rbind(train, test)
View(complete_data)
names(complete_data)

#get the summarised tiday data in shape
library(tibble)
tidy_data = tibble(complete_data)
library(dplyr)
result = tidy_data%>%
  group_by(subject, activity)%>%
  summarise_all(funs(mean,sd))
result = tibble(result)

write.table(result, "./GettingAndCleaningDataCourseProject/result_cleaned_data.txt", col.names = TRUE, row.names =  FALSE)
