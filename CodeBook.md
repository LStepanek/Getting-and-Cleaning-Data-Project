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

tidy = a dataframe 

row = 

For more details, see the script "run_analysis.R".
