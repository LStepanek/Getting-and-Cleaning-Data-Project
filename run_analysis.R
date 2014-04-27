# setting a working directory
setwd("C:/Users/Lubomír Štěpánek/Documents/Data Science Specialization/Getting and Cleaning Data/Week 3/UCI HAR Dataset/test")

# loading test sets
x_test<-read.table("X_test.txt",sep="")
y_test<-read.table("y_test.txt",sep="")
subj_test<-read.table("subject_test.txt",sep="")

str(x_test)
str(y_test)
str(subj_test)

# setting a working directory
setwd("C:/Users/Lubomír Štěpánek/Documents/Data Science Specialization/Getting and Cleaning Data/Week 3/UCI HAR Dataset/train")

# loading train sets
x_train<-read.table("X_train.txt",sep="")
y_train<-read.table("y_train.txt",sep="")
subj_train<-read.table("subject_train.txt",sep="")

# setting a working directory
setwd("C:/Users/Lubomír Štěpánek/Documents/Data Science Specialization/Getting and Cleaning Data/Week 3/UCI HAR Dataset")

# loading names of variables of the test and train sets
features<-read.table("features.txt",sep="")
features[,2]<-as.character(features[,2])

# loading names of values describing activities
act_labels<-read.table("activity_labels.txt",sep="")

str(x_train)
str(y_train)
str(subj_train)

# merging of the test and train set into dataframes
test_set<-cbind(subj_test,x_test,y_test)
train_set<-cbind(subj_train,x_train,y_train)

str(test_set)
str(train_set)

# creating one dataframe of the test and train sets
data_set<-rbind(test_set,train_set)
colnames(data_set)<-c("subject",features[,2],"activity")

# substracting of dataframe which is free of (does not include) "meanFreq" variables into new dataframe called "data"
data<-data_set[,-grep("^(.*)meanFreq(.*)$",colnames(data_set))]

# which variables do include mean or std?
colnames(data)[grep("^(.*)mean(.*)$",colnames(data))]
colnames(data)[grep("^(.*)std(.*)$",colnames(data))]

# checking the indices of the variables including mean or std
c(grep("^(.*)mean(.*)$",colnames(data)),grep("^(.*)std(.*)$",colnames(data)))

# updated "data" dataframe in order to include only "mean" or "std" variables and "subject" and "activity" variable
str(data[,c(1,c(grep("^(.*)mean(.*)$",colnames(data)),grep("^(.*)std(.*)$",colnames(data))),dim(data)[2])])

# final data frame
data<-data[,c(1,c(grep("^(.*)mean(.*)$",colnames(data)),grep("^(.*)std(.*)$",colnames(data))),dim(data)[2])]

str(data)

# "tidy data", with the average of each variable for each activity and each subject
tidy<-NULL
tidy<-as.data.frame(tidy)
row<-NULL
for(i in 1:30){
for(j in 1:6){
for(k in 2:67){
row<-c(row,mean(data[data$subject==i&data$activity==j,k]))
}
tidy<-rbind(tidy,row)
row<-NULL
}
}

str(tidy)

# colnames of "tidy" dataframe
colnames(tidy)<-colnames(data_set)[c(grep("^(.*)mean(.*)$",colnames(data)),grep("^(.*)std(.*)$",colnames(data)))]

# rownames of "tidy" dataframe
rownames<-NULL
for(i in 1:30){
for(j in 1:6){
if(j==1){a<-"WALKING"}
if(j==2){a<-"WALKING_UPSTAIRS"}
if(j==3){a<-"WALKING_DOWNSTAIRS"}
if(j==4){a<-"SITTING"}
if(j==5){a<-"STANDING"}
if(j==6){a<-"LAYING"}
rownames<-c(rownames,paste("subject",i,":",a,sep=""))
}
}

rownames(tidy)<-rownames

# saving the "tidy" dataframe as a text table
write.table(tidy,file="tidy_data.txt")


# using descriptive labels for "activity" variable of the "data" dataframe
for(i in 1:length(data$activity)){
if(data$activity[i]==1){data$activity[i]<-"WALKING"}
if(data$activity[i]==2){data$activity[i]<-"WALKING_UPSTAIRS"}
if(data$activity[i]==3){data$activity[i]<-"WALKING_DOWNSTAIRS"}
if(data$activity[i]==4){data$activity[i]<-"SITTING"}
if(data$activity[i]==5){data$activity[i]<-"STANDING"}
if(data$activity[i]==6){data$activity[i]<-"LAYING"}
}

str(data)
head(data)
tail(data)



