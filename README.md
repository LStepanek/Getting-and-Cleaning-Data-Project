Getting-and-Cleaning-Data-Project
=================================

A "Getting and Cleaning Data" Coursera Class Repository.

Description of a "flow" of the run_analysis.R script. For other details, see the script in thir repository.

Firstly, working directories containing "UCI HAR Dataset" directory, is set with the setwd() call. The "UCI HAR Dataset" file is nested, it consists of two directories, "train" and "test" ones. The setwd() call is repeated in order to set the working directory to "train" and "test" directory.

Then the "subject_test.txt", "X_test.txt" and "y_test.txt"

setting a working directory
loading test sets
setting a working directory
loading train sets
setting a working directory

# loading names of variables of the test and train sets
# loading names of values describing activities

# merging of the test and train set into dataframes


# creating one dataframe of the test and train sets
# substracting of dataframe which is free of (does not include) "meanFreq" variables into new dataframe called "data"
# which variables do include mean or std?
# checking the indices of the variables including mean or std
# updated "data" dataframe in order to include only "mean" or "std" variables and "subject" and "activity" variable

# final data frame

# "tidy data", with the average of each variable for each activity and each subject
# colnames of "tidy" dataframe
# rownames of "tidy" dataframe
# saving the "tidy" dataframe as a text table
# using descriptive labels for "activity" variable of the "data" dataframe





