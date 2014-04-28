## Codebook

A list of created variables.

x_test = a dataframe including "X_test.txt" file

y_test = a dataframe including "y_test.txt" file

subj_test = a dataframe including "subject_test.txt" file

x_train = a dataframe including "X_train.txt" file

y_train = a dataframe including "y_train.txt" file

subj_train = a dataframe including "subject_train.txt" file

features = a dataframe including "features.txt" file

act_labels = a dataframe including "activity_labels.txt" file

test_set = a dataframe merged of the subj_test, x_test and y_test dataframes, respectively

train_set = a dataframe merged of the subj_train, x_train and y_train dataframes, respectively

data_set = a dataframe merged of the test_set and train_set dataframes, respectively

data = a dataframe extracted from "data_set" dataframe, does not include variables with "meanFreq" string in their names, does include only "subject" labeled variable, variables with "mean" (but nor "meanFreq") or "std" strings in their names originated from the "data_set" dataframe and the last, "activity" labeled variable.

tidy = a dataframe created from the "data" dataframe. The colnames of the dataframe are the same as colnames of "data" dataframe, rownames are different. The rownames are in the form "subject" + "number of the subject" + ":" + "activity of the subject". Columns (variables) of this dataframe are the same variables as the columns (variables) of the "data" dataframe, its rows are average values of each variable for each activity and each subject.

row = dummy variable (consists of means of each variable for one subject and one activity of this subject) in "for" loop by which "tidy" dataframe is created.

For more details, see the script "run_analysis.R".
