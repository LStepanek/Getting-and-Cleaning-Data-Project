Getting-and-Cleaning-Data-Project
=================================

A "Getting and Cleaning Data" Coursera Class Repository.

Description of a "flow" of the run_analysis.R script. For other details, see the script and CodeBook in this repository.

Firstly, working directories containing "UCI HAR Dataset" directory, is set with the setwd() call. The "UCI HAR Dataset" file is nested, it consists of two directories, "train" and "test" ones. The setwd() call is repeated in order to set the working directory to "train" and "test" directory.

Then the "subject_test.txt", "X_test.txt" and "y_test.txt" are loaded with the call read.table() and separator "" from the directory "test", and the files "subject_train.txt", "X_train.txt" and "y_train.txt" are loaded with the same call from the directory "train".

Names of variables were loaded from "features.txt" file located in "UCI HAR Dataset" directory (with the same call as above) and the labels describing activities were loaded from the same directory.

The "test_set" dataframe is created by the means of merging "subject_test.txt", "X_test.txt" and "y_test.txt", respectively by the call cbind(). The class the test set is "data.frame".

The "train_set" dataframe is created by the same way.

The bothe "test_set" and "train_set" dataframes are merged into one large dataframe called "data_set" with using of call rbind(). Names of columns of the "data_set" dataframe are concatenated as "subject" label, names of variables from the features and an "activity" label.

Then, a dataframe which is free of (does not include) "meanFreq" variables is created from the original "data_set" dataframe. The way to do this is with the grep() call and with using regular expression. The call for creating the new dataframe called "data" is of form

data<-data_set[,-grep("^(.*)meanFreq(.*)$",colnames(data_set))]

After that, the variables that include "mean" (but not meanFreq) or "std" string in their names are extracted with using grep() and regular expressions.


# which variables do include mean or std?
# checking the indices of the variables including mean or std
# updated "data" dataframe in order to include only "mean" or "std" variables and "subject" and "activity" variable

# final data frame

# "tidy data", with the average of each variable for each activity and each subject
# colnames of "tidy" dataframe
# rownames of "tidy" dataframe
# saving the "tidy" dataframe as a text table
# using descriptive labels for "activity" variable of the "data" dataframe





