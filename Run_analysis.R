
#STEP 1: Create file paths for test data. Note: I have used data.table and included intertial signals. 
# Please change filepath objects based on your directories for the UCI files.

#Test Data
filepath1 <- "C:/Users/samuel.baird/OneDrive - Cardinal Health/Documents/R Programming/Course3_Quiz_Data/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/subject_test.txt" #participants
filepath2 <- "C:/Users/samuel.baird/OneDrive - Cardinal Health/Documents/R Programming/Course3_Quiz_Data/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/Inertial Signals/total_acc_x_test.txt" #smartphone acceleration on x axis
filepath3 <- "C:/Users/samuel.baird/OneDrive - Cardinal Health/Documents/R Programming/Course3_Quiz_Data/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/Inertial Signals/total_acc_y_test.txt" #smartphone acceleration on y axis
filepath4 <- "C:/Users/samuel.baird/OneDrive - Cardinal Health/Documents/R Programming/Course3_Quiz_Data/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/Inertial Signals/total_acc_z_test.txt" #smartphone acceleration on z axis
filepath5 <- "C:/Users/samuel.baird/OneDrive - Cardinal Health/Documents/R Programming/Course3_Quiz_Data/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/Inertial Signals/body_acc_x_test.txt"  #body acceleration on x axis
filepath6 <- "C:/Users/samuel.baird/OneDrive - Cardinal Health/Documents/R Programming/Course3_Quiz_Data/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/Inertial Signals/body_acc_y_test.txt"  #body acceleration on y axis
filepath7 <- "C:/Users/samuel.baird/OneDrive - Cardinal Health/Documents/R Programming/Course3_Quiz_Data/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/Inertial Signals/body_acc_z_test.txt"  #body acceleratio  on z axis
filepath8 <- "C:/Users/samuel.baird/OneDrive - Cardinal Health/Documents/R Programming/Course3_Quiz_Data/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/Inertial Signals/body_gyro_x_test.txt" #body angular velocity on x axis
filepath9 <- "C:/Users/samuel.baird/OneDrive - Cardinal Health/Documents/R Programming/Course3_Quiz_Data/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/Inertial Signals/body_gyro_y_test.txt" #body angular velocity on y axis
filepath10 <- "C:/Users/samuel.baird/OneDrive - Cardinal Health/Documents/R Programming/Course3_Quiz_Data/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/Inertial Signals/body_gyro_z_test.txt"#body angular velocity on z axis
filepath11 <- "C:/Users/samuel.baird/OneDrive - Cardinal Health/Documents/R Programming/Course3_Quiz_Data/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/X_test.txt"
filepath12 <- "C:/Users/samuel.baird/OneDrive - Cardinal Health/Documents/R Programming/Course3_Quiz_Data/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/y_test.txt"
filepath13 <- "C:/Users/samuel.baird/OneDrive - Cardinal Health/Documents/R Programming/Course3_Quiz_Data/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/activity_labels.txt"

# STEP 2: Create data tables of test data
library(data.table)

#Subjects
subjectest <- data.table(fread(filepath1, sep = "\t", header = F))
test_participants <- unique(subjectest$V1) # 9 participants

#Phone acceleration (x axis)
x_phone_acc <- data.table(fread(filepath2, sep = "\t", header = F))
# Verify row lengths
x_phone_acc_length <- sapply(strsplit(x_phone_acc$V1, " "), length)
barplot(table(x_phone_acc_length))
x_phone_acc_summ <- summary(x_phone_acc_length) #min: 128, max: 255

#Phone acceleration (y axis)
y_phone_acc <- data.table(fread(filepath3, sep = "\t", header = F))
# Verify row lengths
y_phone_acc_length <- sapply(strsplit(y_phone_acc$V1, " "), length)
barplot(table(y_phone_acc_length))
y_phone_acc_summ <- summary(y_phone_acc_length) #min: 128, max: 255

#Phone acceleration (z axis)
z_phone_acc <- data.table(fread(filepath4, sep = "\t", header = F))
# Verify row lengths
z_phone_acc_length <- sapply(strsplit(z_phone_acc$V1, " "), length)
barplot(table(z_phone_acc_length))
z_phone_acc_summ <- summary(z_phone_acc_length) #min: 128, max: 255

#Body acceleration (x axis)
x_body_acc <- data.table(fread(filepath5, sep = "\t", header = F))
#Verify row lengths
x_body_acc_length <- sapply(strsplit(x_body_acc$V1, " "), length)
barplot(table(x_body_acc_length))
x_body_acc_summ <- summary(x_body_acc_length) #min: 128, max: 245

#Body acceleration (y axis)
y_body_acc <- data.table(fread(filepath6, sep = "\t", header = F))
#Verify row lengths
y_body_acc_length <- sapply(strsplit(y_body_acc$V1, " "), length)
barplot(table(y_body_acc_length))
y_body_acc_sum <- summary(y_body_acc_length) #min: 129, max: 255

#Body acceleration (z axis)
z_body_acc <- data.table(fread(filepath7, sep = "\t", header = F))
#Verify row lengths
z_body_acc_length <- sapply(strsplit(z_body_acc$V1, " "), length)
barplot(table(z_body_acc_length))
z_body_acc_sum <- summary(z_body_acc_length) #min: 128, max: 253

#Body velocity (x axis)
x_body_vel <- data.table(fread(filepath8, sep = "\t", header = F))
#Verify row lengths
x_body_vel_length <- sapply(strsplit(x_body_vel$V1, " "), length)
barplot(table(x_body_vel_length))
x_body_vel_summ <- summary(x_body_vel_length) #min: 128, max: 255

#Body velocity (y axis)
y_body_vel <- data.table(fread(filepath9, sep = "\t", header = F))
#Verify row lengths
y_body_vel_length <- sapply(strsplit(y_body_vel$V1, " "), length)
barplot(table(y_body_vel_length))
y_body_vel_summ <- summary(y_body_vel_length) #min: 128, max: 255

#Body velocity (z axis)
z_body_vel <- data.table(fread(filepath10, sep = "\t", header = F))
#Verify row lengths
z_body_vel_length <- sapply(strsplit(z_body_vel$V1, " "), length)
barplot(table(z_body_vel_length))
z_body_vel_summ <- summary(z_body_vel_length) #min: 128, max: 255

#Test sets
x_test <- data.table(fread(filepath11, sep = "\t", header = F))
#Verify row lengths
x_test_length <- sapply(strsplit(x_test$V1, " "), length)
barplot(table(x_test_length))
x_test_summ <- summary(x_test_length) #min: 630, max: 798

#Coded activity types
y_test <- data.table(fread(filepath12, sep = "\t", header = F))
#Verify row lengths
unique(y_test$V1)
names(y_test) <- "activity_type"
names(y_test)

#Activity labels
test_labels <- data.table(fread(filepath13, sep = " ", header = F))
names(test_labels) <- c("activity_type", "activity_type_detailed")
names(test_labels)

#Summary list of summary stats for each data set
test_summary_list <- list(x_phone_acc_summ, y_phone_acc_summ, z_phone_acc_summ,
                          x_body_acc_summ, y_body_acc_sum, z_body_acc_sum,
                          x_body_vel_summ, y_body_vel_summ, z_body_vel_summ,
                          x_test_summ)

# STEP 3: Merge test data using cbind
test_data <- as.data.table(cbind(subjectest,
                                 y_test,
                                 x_phone_acc,
                                 y_phone_acc,
                                 z_phone_acc,
                                 x_body_acc,
                                 y_body_acc,
                                 z_body_acc,
                                 x_body_vel,
                                 y_body_vel,
                                 z_body_vel,
                                 x_test))

# Rename variables to be more descriptive 
names(test_data) <- c("subject_id", "activity_type", "x_phone_acc",
                             "y_phone_acc", "z_phone_acc", "x_body_acc",
                             "y_body_acc", "z_body_acc", "x_body_vel",
                             "y_body_vel", "z_body_vel", "x_test_sets")
names(test_data) #verify that names have been used in the merged data table

# STEP 4: Merge activity labels to correspond with the activity type in the merged data table
merged_test_data <- merge(x = test_data, y = test_labels, by.x = "activity_type", 
                          by.y = "activity_type")

#merged_test_data[, "activity_type_detailed" := V2] #rename V2 to activity_type_detailed
#names(merged_test_data)
#merged_test_data[, V2 := NULL] # Remove V2 column
#names(merged_test_data) #Verify that names are appropriate

# STEP 5: Create mean and SD columns
# Create column of means and SD for phone acceleration (x)
merged_test_data[, x_phone_acc_mu :=sapply(strsplit(x_phone_acc, " "), 
                                          function(x) mean(as.numeric(x),
                                                           na.rm = TRUE))]

merged_test_data[, x_phone_acc_sd :=sapply(strsplit(x_phone_acc, " "), 
                                          function(x) sd(as.numeric(x), 
                                                           na.rm = TRUE))]
# Create column of means and SD for phone acceleration (y)
merged_test_data[, y_phone_acc_mu :=sapply(strsplit(y_phone_acc, " "), 
                                           function(x) mean(as.numeric(x),
                                                            na.rm = TRUE))]

merged_test_data[, y_phone_acc_sd :=sapply(strsplit(y_phone_acc, " "), 
                                           function(x) sd(as.numeric(x), 
                                                          na.rm = TRUE))]
# Create column of means and SD for phone acceleration (z)
merged_test_data[, z_phone_acc_mu :=sapply(strsplit(z_phone_acc, " "), 
                                           function(x) mean(as.numeric(x),
                                                            na.rm = TRUE))]

merged_test_data[, z_phone_acc_sd :=sapply(strsplit(z_phone_acc, " "), 
                                           function(x) sd(as.numeric(x), 
                                                          na.rm = TRUE))]
# Create column of means and SD for body acceleration (x)
merged_test_data[, x_body_acc_mu :=sapply(strsplit(x_body_acc, " "), 
                                          function(x) mean(as.numeric(x),
                                                           na.rm = TRUE))]

merged_test_data[, x_body_acc_sd :=sapply(strsplit(x_body_acc, " "), 
                                          function(x) sd(as.numeric(x), 
                                                           na.rm = TRUE))]
# Create column of means and SD for body acceleration (y)
merged_test_data[, y_body_acc_mu :=sapply(strsplit(y_body_acc, " "), 
                                          function(x) mean(as.numeric(x),
                                                           na.rm = TRUE))]

merged_test_data[, y_body_acc_sd :=sapply(strsplit(y_body_acc, " "), 
                                          function(x) sd(as.numeric(x), 
                                                         na.rm = TRUE))]
# Create column of means and SD for body acceleration (z)
merged_test_data[, z_body_acc_mu :=sapply(strsplit(z_body_acc, " "), 
                                          function(x) mean(as.numeric(x),
                                                           na.rm = TRUE))]

merged_test_data[, z_body_acc_sd :=sapply(strsplit(z_body_acc, " "), 
                                          function(x) sd(as.numeric(x), 
                                                         na.rm = TRUE))]
# Create column of means and SD for body velocity (x)
merged_test_data[, x_body_vel_mu :=sapply(strsplit(x_body_vel, " "), 
                                          function(x) mean(as.numeric(x),
                                                           na.rm = TRUE))]

merged_test_data[, x_body_vel_sd :=sapply(strsplit(x_body_vel, " "), 
                                          function(x) sd(as.numeric(x), 
                                                           na.rm = TRUE))]
# Create column of means and SD for body velocity (y)
merged_test_data[, y_body_vel_mu :=sapply(strsplit(y_body_vel, " "), 
                                          function(x) mean(as.numeric(x),
                                                           na.rm = TRUE))]

merged_test_data[, y_body_vel_sd :=sapply(strsplit(y_body_vel, " "), 
                                          function(x) sd(as.numeric(x), 
                                                         na.rm = TRUE))]
# Create column of means and SD for body velocity (z)
merged_test_data[, z_body_vel_mu :=sapply(strsplit(z_body_vel, " "), 
                                          function(x) mean(as.numeric(x),
                                                           na.rm = TRUE))]

merged_test_data[, z_body_vel_sd :=sapply(strsplit(z_body_vel, " "), 
                                          function(x) sd(as.numeric(x), 
                                                         na.rm = TRUE))]

# Create column of means and SD for test sets
merged_test_data[, x_test_sets_mu :=sapply(strsplit(x_test_sets, " "),
                                           function(x) mean(as.numeric(x),
                                                            na.rm = TRUE))]

merged_test_data[, x_test_sets_sd :=sapply(strsplit(x_test_sets, " "),
                                           function(x) sd(as.numeric(x),
                                                          na.rm = TRUE))]

#Reorder columns in merged data table with new variables
setcolorder(merged_test_data,neworder = c("subject_id", "activity_type",
                                          "activity_type_detailed", "x_phone_acc",
                                          "x_phone_acc_mu", "x_phone_acc_sd",
                                          "y_phone_acc", "y_phone_acc_mu", 
                                          "y_phone_acc_sd","z_phone_acc", 
                                          "z_phone_acc_mu","z_phone_acc_sd", 
                                          "x_body_acc","x_body_acc_mu", 
                                          "x_body_acc_sd","y_body_acc",
                                          "y_body_acc_mu", "y_body_acc_sd",
                                          "z_body_acc", "z_body_acc_mu", 
                                          "z_body_acc_sd","x_body_vel",
                                          "x_body_vel_mu", "x_body_vel_sd",
                                          "y_body_vel", "y_body_vel_mu", 
                                          "y_body_vel_sd","z_body_vel", 
                                          "z_body_vel_mu", "z_body_vel_sd",
                                          "x_test_sets", "x_test_sets_mu", 
                                          "x_test_sets_sd"))

# STEP 6: Create additional data table with mean values
merged_test_sets <- merged_test_data[, .(x_phone_acc_mu =mean(x_phone_acc_mu, 
                                                              na.rm = T),
                                         y_phone_acc_mu =mean(y_phone_acc_mu, 
                                                              na.rm = T),
                                         z_phone_acc_mu =mean(z_phone_acc_mu, 
                                                              na.rm = T),
                                         x_body_acc_mu =mean(x_body_acc_mu, 
                                                             na.rm = T),
                                         y_body_acc_mu =mean(x_body_acc_mu, 
                                                             na.rm = T),
                                         z_body_acc_mu =mean(z_body_acc_mu, 
                                                             na.rm = T),
                                         x_body_vel_mu =mean(x_body_vel_mu, 
                                                             na.rm = T),
                                         y_body_vel_mu =mean(y_body_vel_mu, 
                                                             na.rm = T),
                                         z_body_vel_mu =mean(z_body_vel_mu, 
                                                             na.rm = T),
                                         x_test_sets_mu =mean(x_test_sets_mu, 
                                                              na.rm = T)),
                                     keyby = .(subject_id, 
                                               activity_type_detailed)]

#############################Training Sets######################################


#STEP 1: Create filepaths for training data

#Training Data
filepath1.1 <- "C:/Users/samuel.baird/OneDrive - Cardinal Health/Documents/R Programming/Course3_Quiz_Data/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/subject_train.txt" #participants
filepath2.1 <- "C:/Users/samuel.baird/OneDrive - Cardinal Health/Documents/R Programming/Course3_Quiz_Data/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/Inertial Signals/total_acc_x_train.txt" #smartphone acceleration on x axis
filepath3.1 <- "C:/Users/samuel.baird/OneDrive - Cardinal Health/Documents/R Programming/Course3_Quiz_Data/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/Inertial Signals/total_acc_y_train.txt" #smartphone acceleration on y axis
filepath4.1 <- "C:/Users/samuel.baird/OneDrive - Cardinal Health/Documents/R Programming/Course3_Quiz_Data/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/Inertial Signals/total_acc_z_train.txt" #smartphone acceleration on z axis
filepath5.1 <- "C:/Users/samuel.baird/OneDrive - Cardinal Health/Documents/R Programming/Course3_Quiz_Data/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/Inertial Signals/body_acc_x_train.txt"  #body acceleration on x axis
filepath6.1 <- "C:/Users/samuel.baird/OneDrive - Cardinal Health/Documents/R Programming/Course3_Quiz_Data/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/Inertial Signals/body_acc_y_train.txt"  #body acceleration on y axis
filepath7.1 <- "C:/Users/samuel.baird/OneDrive - Cardinal Health/Documents/R Programming/Course3_Quiz_Data/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/Inertial Signals/body_acc_z_train.txt"  #body acceleration  on z axis
filepath8.1 <- "C:/Users/samuel.baird/OneDrive - Cardinal Health/Documents/R Programming/Course3_Quiz_Data/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/Inertial Signals/body_gyro_x_train.txt" #body angular velocity on x axis
filepath9.1 <- "C:/Users/samuel.baird/OneDrive - Cardinal Health/Documents/R Programming/Course3_Quiz_Data/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/Inertial Signals/body_gyro_y_train.txt" #body angular velocity on y axis
filepath10.1 <- "C:/Users/samuel.baird/OneDrive - Cardinal Health/Documents/R Programming/Course3_Quiz_Data/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/Inertial Signals/body_gyro_z_train.txt"#body angular velocity on z axis
filepath11.1 <- "C:/Users/samuel.baird/OneDrive - Cardinal Health/Documents/R Programming/Course3_Quiz_Data/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/X_train.txt"
filepath12.1 <- "C:/Users/samuel.baird/OneDrive - Cardinal Health/Documents/R Programming/Course3_Quiz_Data/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/y_train.txt"
filepath13.1 <- "C:/Users/samuel.baird/OneDrive - Cardinal Health/Documents/R Programming/Course3_Quiz_Data/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/activity_labels.txt"

# STEP 2: Create data tables of training data
library(data.table)

#Subjects
subjectrain <- data.table(fread(filepath1.1, sep = "\t", header = F))
train_participants <- unique(subjectrain$V1) # 21 participants

#Phone acceleration (x axis)
x_phone_acc <- data.table(fread(filepath2.1, sep = "\t", header = F))
# Verify row lengths
x_phone_acc_length <- sapply(strsplit(x_phone_acc$V1, " "), length)
barplot(table(x_phone_acc_length))
x_phone_acc_summ <- summary(x_phone_acc_length) #min: 128, max: 255

#Phone acceleration (y axis)
y_phone_acc <- data.table(fread(filepath3.1, sep = "\t", header = F))
# Verify row lengths
y_phone_acc_length <- sapply(strsplit(y_phone_acc$V1, " "), length)
barplot(table(y_phone_acc_length))
y_phone_acc_summ <- summary(y_phone_acc_length) #min: 128, max: 255

#Phone acceleration (z axis)
z_phone_acc <- data.table(fread(filepath4.1, sep = "\t", header = F))
# Verify row lengths
z_phone_acc_length <- sapply(strsplit(z_phone_acc$V1, " "), length)
barplot(table(z_phone_acc_length))
z_phone_acc_summ <- summary(z_phone_acc_length) #min: 128, max: 255

#Body acceleration (x axis)
x_body_acc <- data.table(fread(filepath5.1, sep = "\t", header = F))
#Verify row lengths
x_body_acc_length <- sapply(strsplit(x_body_acc$V1, " "), length)
barplot(table(x_body_acc_length))
x_body_acc_summ <- summary(x_body_acc_length) #min: 128, max: 255

#Body acceleration (y axis)
y_body_acc <- data.table(fread(filepath6.1, sep = "\t", header = F))
#Verify row lengths
y_body_acc_length <- sapply(strsplit(y_body_acc$V1, " "), length)
barplot(table(y_body_acc_length))
y_body_acc_sum <- summary(y_body_acc_length) #min: 128, max: 255

#Body acceleration (z axis)
z_body_acc <- data.table(fread(filepath7.1, sep = "\t", header = F))
#Verify row lengths
z_body_acc_length <- sapply(strsplit(z_body_acc$V1, " "), length)
barplot(table(z_body_acc_length))
z_body_acc_sum <- summary(z_body_acc_length) #min: 128, max: 255

#Body velocity (x axis)
x_body_vel <- data.table(fread(filepath8.1, sep = "\t", header = F))
#Verify row lengths
x_body_vel_length <- sapply(strsplit(x_body_vel$V1, " "), length)
barplot(table(x_body_vel_length))
x_body_vel_summ <- summary(x_body_vel_length) #min: 128, max: 255

#Body velocity (y axis)
y_body_vel <- data.table(fread(filepath9.1, sep = "\t", header = F))
#Verify row lengths
y_body_vel_length <- sapply(strsplit(y_body_vel$V1, " "), length)
barplot(table(y_body_vel_length))
y_body_vel_summ <- summary(y_body_vel_length) #min: 128, max: 255

#Body velocity (z axis)
z_body_vel <- data.table(fread(filepath10.1, sep = "\t", header = F))
#Verify row lengths
z_body_vel_length <- sapply(strsplit(z_body_vel$V1, " "), length)
barplot(table(z_body_vel_length))
z_body_vel_summ <- summary(z_body_vel_length) #min: 128, max: 255

#Test sets
x_train <- data.table(fread(filepath11.1, sep = "\t", header = F))
#Verify row lengths
x_train_length <- sapply(strsplit(x_train$V1, " "), length)
barplot(table(x_train_length))
x_train_summ <- summary(x_train_length) #min: 629, max: 932

#Coded activity types
y_train <- data.table(fread(filepath12.1, sep = "\t", header = F))
#Verify row lengths
unique(y_train$V1)
names(y_train) <- "activity_type"
names(y_train)

#Activity labels
train_labels <- data.table(fread(filepath13.1, sep = " ", header = F))
names(train_labels) <- c("activity_type", "activity_type_detailed")
names(train_labels)

#Summary list of summary stats for each data set
train_summary_list <- list(x_phone_acc_summ, y_phone_acc_summ, z_phone_acc_summ,
                          x_body_acc_summ, y_body_acc_sum, z_body_acc_sum,
                          x_body_vel_summ, y_body_vel_summ, z_body_vel_summ,
                          x_train_summ)

# STEP 3: Merge train data using cbind
train_data <- as.data.table(cbind(subjectrain,
                                 y_train,
                                 x_phone_acc,
                                 y_phone_acc,
                                 z_phone_acc,
                                 x_body_acc,
                                 y_body_acc,
                                 z_body_acc,
                                 x_body_vel,
                                 y_body_vel,
                                 z_body_vel,
                                 x_train))

# Rename variables to be more descriptive 
names(train_data) <- c("subject_id", "activity_type", "x_phone_acc",
                      "y_phone_acc", "z_phone_acc", "x_body_acc",
                      "y_body_acc", "z_body_acc", "x_body_vel",
                      "y_body_vel", "z_body_vel", "x_train_sets")
names(train_data) #verify that names have been used in the merged data table

# STEP 4: Merge activity labels to correspond without the activity type in the merged data table
merged_train_data <- merge(x = train_data, y = train_labels, by.x = "activity_type", 
                          by.y = "activity_type")

# STEP 5: Create mean and SD columns
# Create column of means and SD for phone acceleration (x)
merged_train_data[, x_phone_acc_mu :=sapply(strsplit(x_phone_acc, " "), 
                                           function(x) mean(as.numeric(x),
                                                            na.rm = TRUE))]

merged_train_data[, x_phone_acc_sd :=sapply(strsplit(x_phone_acc, " "), 
                                           function(x) sd(as.numeric(x), 
                                                          na.rm = TRUE))]
# Create column of means and SD for phone acceleration (y)
merged_train_data[, y_phone_acc_mu :=sapply(strsplit(y_phone_acc, " "), 
                                           function(x) mean(as.numeric(x),
                                                            na.rm = TRUE))]

merged_train_data[, y_phone_acc_sd :=sapply(strsplit(y_phone_acc, " "), 
                                           function(x) sd(as.numeric(x), 
                                                          na.rm = TRUE))]
# Create column of means and SD for phone acceleration (z)
merged_train_data[, z_phone_acc_mu :=sapply(strsplit(z_phone_acc, " "), 
                                           function(x) mean(as.numeric(x),
                                                            na.rm = TRUE))]

merged_train_data[, z_phone_acc_sd :=sapply(strsplit(z_phone_acc, " "), 
                                           function(x) sd(as.numeric(x), 
                                                          na.rm = TRUE))]
# Create column of means and SD for body acceleration (x)
merged_train_data[, x_body_acc_mu :=sapply(strsplit(x_body_acc, " "), 
                                          function(x) mean(as.numeric(x),
                                                           na.rm = TRUE))]

merged_train_data[, x_body_acc_sd :=sapply(strsplit(x_body_acc, " "), 
                                          function(x) sd(as.numeric(x), 
                                                         na.rm = TRUE))]
# Create column of means and SD for body acceleration (y)
merged_train_data[, y_body_acc_mu :=sapply(strsplit(y_body_acc, " "), 
                                          function(x) mean(as.numeric(x),
                                                           na.rm = TRUE))]

merged_train_data[, y_body_acc_sd :=sapply(strsplit(y_body_acc, " "), 
                                          function(x) sd(as.numeric(x), 
                                                         na.rm = TRUE))]
# Create column of means and SD for body acceleration (z)
merged_train_data[, z_body_acc_mu :=sapply(strsplit(z_body_acc, " "), 
                                          function(x) mean(as.numeric(x),
                                                           na.rm = TRUE))]

merged_train_data[, z_body_acc_sd :=sapply(strsplit(z_body_acc, " "), 
                                          function(x) sd(as.numeric(x), 
                                                         na.rm = TRUE))]
# Create column of means and SD for body velocity (x)
merged_train_data[, x_body_vel_mu :=sapply(strsplit(x_body_vel, " "), 
                                          function(x) mean(as.numeric(x),
                                                           na.rm = TRUE))]

merged_train_data[, x_body_vel_sd :=sapply(strsplit(x_body_vel, " "), 
                                          function(x) sd(as.numeric(x), 
                                                         na.rm = TRUE))]
# Create column of means and SD for body velocity (y)
merged_train_data[, y_body_vel_mu :=sapply(strsplit(y_body_vel, " "), 
                                          function(x) mean(as.numeric(x),
                                                           na.rm = TRUE))]

merged_train_data[, y_body_vel_sd :=sapply(strsplit(y_body_vel, " "), 
                                          function(x) sd(as.numeric(x), 
                                                         na.rm = TRUE))]
# Create column of means and SD for body velocity (z)
merged_train_data[, z_body_vel_mu :=sapply(strsplit(z_body_vel, " "), 
                                          function(x) mean(as.numeric(x),
                                                           na.rm = TRUE))]

merged_train_data[, z_body_vel_sd :=sapply(strsplit(z_body_vel, " "), 
                                          function(x) sd(as.numeric(x), 
                                                         na.rm = TRUE))]

# Create column of means and SD for train sets
merged_train_data[, x_train_sets_mu :=sapply(strsplit(x_train_sets, " "),
                                           function(x) mean(as.numeric(x),
                                                            na.rm = TRUE))]

merged_train_data[, x_train_sets_sd :=sapply(strsplit(x_train_sets, " "),
                                           function(x) sd(as.numeric(x),
                                                          na.rm = TRUE))]

#Reorder columns in merged data table with new variables
setcolorder(merged_train_data,neworder = c("subject_id", "activity_type",
                                          "activity_type_detailed", "x_phone_acc",
                                          "x_phone_acc_mu", "x_phone_acc_sd",
                                          "y_phone_acc", "y_phone_acc_mu", 
                                          "y_phone_acc_sd","z_phone_acc", 
                                          "z_phone_acc_mu","z_phone_acc_sd", 
                                          "x_body_acc","x_body_acc_mu", "x_body_acc_sd",
                                          "y_body_acc","y_body_acc_mu", "y_body_acc_sd",
                                          "z_body_acc", "z_body_acc_mu", "z_body_acc_sd",
                                          "x_body_vel","x_body_vel_mu", "x_body_vel_sd",
                                          "y_body_vel", "y_body_vel_mu", "y_body_vel_sd",
                                          "z_body_vel", "z_body_vel_mu", "z_body_vel_sd",
                                          "x_train_sets", "x_train_sets_mu", "x_train_sets_sd"))

# STEP 6: Create additional data table with mean values
merged_train_sets <- merged_train_data[, .(x_phone_acc_mu =mean(x_phone_acc_mu, 
                                                                na.rm = T),
                                         y_phone_acc_mu =mean(y_phone_acc_mu, 
                                                              na.rm = T),
                                         z_phone_acc_mu =mean(z_phone_acc_mu, 
                                                              na.rm = T),
                                         x_body_acc_mu =mean(x_body_acc_mu, 
                                                             na.rm = T),
                                         y_body_acc_mu =mean(x_body_acc_mu, 
                                                             na.rm = T),
                                         z_body_acc_mu =mean(z_body_acc_mu, 
                                                             na.rm = T),
                                         x_body_vel_mu =mean(x_body_vel_mu, 
                                                             na.rm = T),
                                         y_body_vel_mu =mean(y_body_vel_mu, 
                                                             na.rm = T),
                                         z_body_vel_mu =mean(z_body_vel_mu, 
                                                             na.rm = T),
                                         x_train_sets_mu =mean(x_train_sets_mu, 
                                                               na.rm = T)),
                                     keyby = .(subject_id, 
                                               activity_type_detailed)]

write.table(merged_test_data, row.names = FALSE)
