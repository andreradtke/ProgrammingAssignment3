require(dplyr)
require(reshape2)


# 1. Import and merge training and test data

    # Read test dataset
    test_data <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
    test_activity_id <- read.table("./data/UCI HAR Dataset/test/y_test.txt")
    test_subject_id <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")
    
    # Read train dataset
    train_data <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
    train_activity_id <- read.table("./data/UCI HAR Dataset/train/y_train.txt")
    train_subject_id <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")
    
    # Merge both datasets
    merged_data <- bind_rows(test_data, train_data)
    merged_activity_id <- bind_rows(test_activity_id, train_activity_id)
    merged_subject_id <- bind_rows(test_subject_id, train_subject_id)
    activity_dataset <- cbind(merged_activity_id, merged_subject_id, merged_data)

    # Memory clean up
    rm(test_data, test_activity_id, test_subject_id)
    rm(train_data, train_activity_id, train_subject_id)
    rm(merged_data, merged_activity_id, merged_subject_id)
    
    
# 2. Replace acivity IDs with activity names and add feature labels to all variables
    
    # Read activities, features and rename their variables
    activity_labels <- read.table("./data/UCI HAR Dataset/activity_labels.txt")
    names(activity_labels) <- c("activity_id", "activity")
    
    features <- read.table("./data/UCI HAR Dataset/features.txt")
    names(features) <- c("features_id", "features_names")
    
    # Add variables names to dataset
    names(activity_dataset) <- c("activity_id", "subject_id", lapply(features$features_names, as.character))

    # Rename activities in dataset
    activity_dataset <- merge(activity_labels, activity_dataset, all.x = TRUE)
    activity_dataset <- activity_dataset %>% select(-activity_id)
    
    # Memory clean up
    rm(features, activity_labels)

    
# 3. Select a subset of the data and rename variables for clarity
    
    # Create list of variable names to select data subset
    activity_dataset_names <- names(activity_dataset)
    activity_subset_names <- activity_dataset_names[grep("mean\\(\\)|std\\(\\)", activity_dataset_names)]
    activity_subset_names <- c("activity", "subject_id", activity_subset_names)
    
    activity_subset <- select(activity_dataset, one_of(activity_subset_names))
    
    # Rename variables for better understanding
    activity_subset_names <- gsub("-mean\\(\\)", "_mean", activity_subset_names)
    activity_subset_names <- gsub("-std\\(\\)", "_standardDeviation", activity_subset_names)
    activity_subset_names <- gsub("BodyBody", "Body", activity_subset_names)
    activity_subset_names <- gsub('tBodyAcc', 'bodyAcceleration_timeSample_', activity_subset_names)
    activity_subset_names <- gsub('tBodyGyro', 'bodyRotation_timeSample_', activity_subset_names)
    activity_subset_names <- gsub('tGravityAcc', 'gravityAcceleration_timeSample_', activity_subset_names)
    activity_subset_names <- gsub('fBodyAcc', 'bodyAcceleration_frequencySample_', activity_subset_names)
    activity_subset_names <- gsub('fBodyGyro', 'bodyRotation_frequencySample_', activity_subset_names)
    activity_subset_names <- gsub('Jerk', '_jerk_', activity_subset_names)
    activity_subset_names <- gsub('Mag', '_magnitude_', activity_subset_names)
    activity_subset_names <- gsub('-', '_', activity_subset_names)
    activity_subset_names <- gsub('_+', '_', activity_subset_names)
    names(activity_subset) <- activity_subset_names
    
    # Export subset to tab delimited file
    write.table(activity_subset, file = "activity_subset.txt", sep = "\t")
    
    # Memory clean up
    rm(activity_dataset, activity_dataset_names, activity_subset_names)
    
    
# 4. Summarize the subset and rename the variables accordingly
    
    # Calculate the mean for each variable grouped by activity and subject
    activity_subset_averages <- melt(activity_subset, id = c("activity", "subject_id"))
    activity_subset_averages <- dcast(activity_subset_averages, activity + subject_id ~variable, mean)
    
    # Rename summary variables
    activity_subset_averages_names <- names(activity_subset_averages)
    activity_subset_averages_names <- gsub("timeSample", "totalTime", activity_subset_averages_names)
    activity_subset_averages_names <- gsub("frequencySample", "totalFrequency", activity_subset_averages_names)
    activity_subset_averages_names <- gsub("standard", "meanStandard", activity_subset_averages_names)
    names(activity_subset_averages) <- activity_subset_averages_names
    
    # Export summary to tab delimited file
    write.table(activity_subset_averages, file = "activity_subset_averages.txt", sep = "\t")
    
    # Memory clean up
    rm(activity_subset_averages_names)