## Study Design

---

The source data for this analysis was collected from the UCI Machine Lerning Repository and is composed of experimetns conducted with 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.

The data can be retrived from:  
<http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>


## Variables

---

All recorded data in the original set is normalized and bounded within [-1,1] range.

The following datasets are produced by this analysis.

### activity_subset

---

The variables in this dataset are only an extract from the original dataset, and have been renamed for clarity.

Variable Name|Description|Remarks
-------|-------|------
activity|Name of the activity performed by each volunteer.|Activities available in the dataset:</br>WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING and LAYING.
subject_id|ID assigned to each volunteer during the experiment.|Integer number from 1 to 30.
bodyAcceleration_timeSample_mean_X</br>bodyAcceleration_timeSample_mean_Y</br>bodyAcceleration_timeSample_mean_Z|Mean of body acceleration in the X, Y and Z axis for a given time frame.|Renamed *tBodyAcc-mean()-X*, *tBodyAcc-mean()-Y* and *tBodyAcc-mean()-Z* from the oiginal dataset.
bodyAcceleration_timeSample_standardDeviation_X</br>bodyAcceleration_timeSample_standardDeviation_Y</br>bodyAcceleration_timeSample_standardDeviation_Z|Standard deviation of body acceleration in the X, Y and Z axis for a given time frame.|Renamed *tBodyAcc-std()-X*, *tBodyAcc-std()-Y* and *tBodyAcc-std()-Z* from the oiginal dataset.
gravityAcceleration_timeSample_mean_X</br>gravityAcceleration_timeSample_mean_Y</br>gravityAcceleration_timeSample_mean_Z|Mean of gravity acceleration in the X, Y and Z axis for a given time frame.|Renamed *tGravityAcc-mean()-X*, *tGravityAcc-mean()-Y* and *tGravityAcc-mean()-Z* from the oiginal dataset.
gravityAcceleration_timeSample_standardDeviation_X</br>gravityAcceleration_timeSample_standardDeviation_Y</br>gravityAcceleration_timeSample_standardDeviation_Z|Standard deviation of gravity acceleration in the X, Y and Z axis for a given time frame.|Renamed *tGravityAcc-std()-X*, *tGravityAcc-std()-Y* and *tGravityAcc-std()-Z* from the oiginal dataset.
bodyAcceleration_timeSample_jerk_mean_X</br>bodyAcceleration_timeSample_jerk_mean_Y</br>bodyAcceleration_timeSample_jerk_mean_Z|Mean of body jerk in the X, Y and Z axis for a given time frame.|Renamed *tBodyAccJerk-mean()-X*, *tBodyAccJerk-mean()-Y* and *tBodyAccJerk-mean()-Z* from the oiginal dataset.
bodyAcceleration_timeSample_jerk_standardDeviation_X</br>bodyAcceleration_timeSample_jerk_standardDeviation_Y</br>bodyAcceleration_timeSample_jerk_standardDeviation_Z|Standard deviation of body jerk in the X, Y and Z axis for a given time frame.|Renamed *tBodyAccJerk-std()-X*, *tBodyAccJerk-std()-Y* and *tBodyAccJerk-std()-Z* from the oiginal dataset.
bodyRotation_timeSample_mean_X</br>bodyRotation_timeSample_mean_Y</br>bodyRotation_timeSample_mean_Z|Mean of body rotation around the X, Y and Z axis for a given time frame.|Renamed *tBodyGyro-mean()-X*, *tBodyGyro-mean()-Y* and *tBodyGyro-mean()-Z* from the oiginal dataset.
bodyRotation_timeSample_standardDeviation_X</br>bodyRotation_timeSample_standardDeviation_Y</br>bodyRotation_timeSample_standardDeviation_Z|Standard deviation of body rotation around the X, Y and Z axis for a given time frame.|Renamed *tBodyGyro-std()-X*, *tBodyGyro-std()-Y* and *tBodyGyro-std()-Z* from the oiginal dataset.
bodyRotation_timeSample_jerk_mean_X</br>bodyRotation_timeSample_jerk_mean_Y</br>bodyRotation_timeSample_jerk_mean_Z|Mean of body rotation jerk for a given time frame.|Renamed *tBodyGyroJerk-mean()-X*, *tBodyGyroJerk-mean()-Y* and *tBodyGyroJerk-mean()-Z* from the oiginal dataset.
bodyRotation_timeSample_jerk_standardDeviation_X</br>bodyRotation_timeSample_jerk_standardDeviation_Y</br>bodyRotation_timeSample_jerk_standardDeviation_Z|Standard deviation of body rotation jerk for a given time frame.|Renamed *tBodyGyroJerk-std()-X*, *tBodyGyroJerk-std()-Y* and *tBodyGyroJerk-std()-Z* from the oiginal dataset.
bodyAcceleration_timeSample_magnitude_mean|Mean of body acceleration magnitude for a given time frame.|Renamed *tBodyAccMag-mean()* from the oiginal dataset.
bodyAcceleration_timeSample_magnitude_standardDeviation|Standard deviation of body acceleration magnitude for a given time frame.|Renamed *tBodyAccMag-std()* from the oiginal dataset.
gravityAcceleration_timeSample_magnitude_mean|Mean of gravity acceleration magnitude for a given time frame.|Renamed *tGravityAccMag-mean()* from the oiginal dataset.
gravityAcceleration_timeSample_magnitude_standardDeviation|Standard deviation of gravity acceleration magnitude for a given time frame.|Renamed *tGravityAccMag-std()* from the oiginal dataset.
bodyAcceleration_timeSample_jerk_magnitude_mean|Mean of body jerk magnitude for a given time frame.|Renamed *tBodyAccJerkMag-mean()* from the oiginal dataset.
bodyAcceleration_timeSample_jerk_magnitude_standardDeviation|Standard deviation of body acceleration magniute derived in time for a period of time.|Renamed *tBodyAccJerkMag-std()* from the oiginal dataset.
bodyRotation_timeSample_magnitude_mean|Mean of body rotation magnitude for a given time frame.|Renamed *tBodyGyroMag-mean()* from the oiginal dataset.
bodyRotation_timeSample_magnitude_standardDeviation|Standard deviation of body rotation magnitude for a given time frame.|Renamed *tBodyGyroMag-std()* from the oiginal dataset.
bodyRotation_timeSample_jerk_magnitude_mean|Mean of body rotation jerk for a given time frame.|Renamed *tBodyGyroJerkMag-mean()* from the oiginal dataset.
bodyRotation_timeSample_jerk_magnitude_standardDeviation|Standard deviation of body rotation jerk for a given time frame.|Renamed *tBodyGyroJerk-std()* from the oiginal dataset.
bodyAcceleration_frequencySample_standardDeviation_X</br>bodyAcceleration_frequencySample_standardDeviation_Y</br>bodyAcceleration_frequencySample_standardDeviation_Z|Standard deviation of fast fourrier transform of body acceleration in the X, Y and Z axis for a given time frame.|Renamed *fBodyAcc-std()-X*, *fBodyAcc-std()-Y* and *fBodyAcc-std()-Z* from the oiginal dataset.
bodyAcceleration_frequencySample_jerk_mean_X</br>bodyAcceleration_frequencySample_jerk_mean_Y</br>bodyAcceleration_frequencySample_jerk_mean_Z|Mean of fast fourrier transform of body jerk in the X, Y and Z axis for a given time frame.|Renamed *fBodyAccJerk-mean()-X*, *fBodyAccJerk-mean()-Y* and *fBodyAccJerk-mean()-Z* from the oiginal dataset.
bodyAcceleration_frequencySample_jerk_standardDeviation_X</br>bodyAcceleration_frequencySample_jerk_standardDeviation_Y</br>bodyAcceleration_frequencySample_jerk_standardDeviation_Z|Standard deviation of fast fourrier transform of body jerk in the X, Y and Z axis for a given time frame.|Renamed *fBodyAccJerk-std()-X*, *fBodyAccJerk-std()-Y* and *fBodyAccJerk-std()-Z* from the oiginal dataset.
bodyRotation_frequencySample_mean_X</br>bodyRotation_frequencySample_mean_Y</br>bodyRotation_frequencySample_mean_Z|Mean of fast fourrier transform of body rotation around the X, Y and Z axis for a given time frame.|Renamed *fBodyGyro-mean()-X*, *fBodyGyro-mean()-Y* and *fBodyGyro-mean()-Z* from the oiginal dataset.
bodyRotation_frequencySample_standardDeviation_X</br>bodyRotation_frequencySample_standardDeviation_Y</br>bodyRotation_frequencySample_standardDeviation_Z|Standard deviation of fast fourrier transform of body rotation around the X, Y and Z axis for a given time frame.|Renamed *fBodyGyro-std()-X*, *fBodyGyro-std()-Y* and *fBodyGyro-std()-Z* from the oiginal dataset.
bodyAcceleration_frequencySample_magnitude_mean|Mean of fast fourrier transform of body acceleration magnitude for a given time frame.|Renamed *fBodyAccMag-mean()* from the oiginal dataset.
bodyAcceleration_frequencySample_magnitude_standardDeviation|Standard deviation of fast fourrier transform of body acceleration magnitude for a given time frame.|Renamed *fBodyAccMag-std()* from the oiginal dataset.
bodyAcceleration_frequencySample_jerk_magnitude_mean|Mean of fast fourrier transform of body jerk magnitude for a given time frame.|Renamed *fBodyBodyAccJerkMag-mean()* from the oiginal dataset.
bodyAcceleration_frequencySample_jerk_magnitude_standardDeviation|Standard deviation of fast fourrier transform of body jerk magniute for a given time frame.|Renamed *fBodyBodyAccJerkMag-std()* from the oiginal dataset.
bodyRotation_frequencySample_magnitude_mean|Mean of fast fourrier transform of body rotation magnitude for a given time frame.|Renamed *fBodyBodyGyroMag-mean()* from the oiginal dataset.
bodyRotation_frequencySample_magnitude_standardDeviation|Standard deviation of fast fourrier transform of body rotation magnitude for a given time frame.|Renamed *fBodyBodyGyroMag-std()* from the oiginal dataset.
bodyRotation_frequencySample_jerk_magnitude_mean|Mean of fast fourrier transform of body rotation jerk magnitude for a given time frame.|Renamed *fBodyBodyGyroJerkMag-mean()* from the oiginal dataset.
bodyRotation_frequencySample_jerk_magnitude_standardDeviation|Standard deviation of fast fourrier transform of body rotation jerk magnitude for a given time frame.|Renamed *fBodyBodyGyroJerkMag-std()* from the oiginal dataset.


### activity_subset_averages

---

Each of the previous variables was grouped by activity and volunteer and the mean value calculated for all the time samples and frequency samples available.

The resulting dataset has the same variables, which have been renamed to reflect the summarization that has been performed. The following naming convention was applied:

* *timeSample* was replaced by *totalTime*.
* *frequencySample* was replaced by *totalFrequency*.
* *standardDeviation* was replaced by *meanStandardDeviation*.


## Analysis

---
