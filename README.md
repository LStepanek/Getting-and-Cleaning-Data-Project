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

After that, the variables that include "mean" (but not meanFreq) or "std" string in their names are extracted with using grep() and regular expressions:

colnames(data)[grep("^(.*)mean(.*)$",colnames(data))]
colnames(data)[grep("^(.*)std(.*)$",colnames(data))]


The "data" dataframe is then updated in order to include only "subject" variable, then "mean" or "std" labeled variables and last the "activity" labeled variable.

A dataframe which follows tidy data model is created now. Is called "tidy" and its columns (variables) are the same variables with the "data" dataframe columns, Its rows are avereage values of each variable for each activity and each subject.

The "tidy" dataframe is created by the "for" loop (see the script). The colnames of the dataframe are the same as colnames of "data" dataframe, rownames are different. The rownames ar created by the same loop "for" as the "tidy" dataframe is and by the paste() call.


Finally the "tidy" dataframe is saved into "tidy_data.txt" file.

The last step is labeling values of "activtiy" variable by its describing names, it is performed with the "for" loop which replaces the numbers 1-6 by the correct names of the activity.

At the end, the processed "data" dataframe is saved into a file called "processed_data_frame.txt".


