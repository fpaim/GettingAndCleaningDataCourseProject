# Code Book
This Code Book refers to the data generated in the run_analysis script rather than the original data downloaded to create the Project (which already contains information in the original data)
---
## Key variables
| Name | Type | Description          |
| ------------- | ----------- | ----------- |
| Subject | numeric | ID of the subject (1 to 30) |
| Activity      | char | Indicates the activity the subject was executing: Walking, Walking Upstairs, Walking Downstairs, Sitting, Standing, Laying |

---
## Mean Calculated variables (66 variables)
The script remove all original variables but those having mean() and std() as requested. Angle() variables are also removed.
The remaining variables are then averaged by the Subject and Activity key variables and follows:
Mean-Time-BodyAcceleration-Mean-X
Mean-Time-BodyAcceleration-Mean-Y
Mean-Time-BodyAcceleration-Mean-Z
Mean-Time-BodyAcceleration-StandardDeviation-X
Mean-Time-BodyAcceleration-StandardDeviation-Y
Mean-Time-BodyAcceleration-StandardDeviation-Z
Mean-Time-GravityAcceleration-Mean-X
Mean-Time-GravityAcceleration-Mean-Y
Mean-Time-GravityAcceleration-Mean-Z
Mean-Time-GravityAcceleration-StandardDeviation-X
Mean-Time-GravityAcceleration-StandardDeviation-Y
Mean-Time-GravityAcceleration-StandardDeviation-Z
Mean-Time-BodyAccelerationJerk-Mean-X
Mean-Time-BodyAccelerationJerk-Mean-Y
Mean-Time-BodyAccelerationJerk-Mean-Z
Mean-Time-BodyAccelerationJerk-StandardDeviation-X
Mean-Time-BodyAccelerationJerk-StandardDeviation-Y
Mean-Time-BodyAccelerationJerk-StandardDeviation-Z
Mean-Time-BodyGyroscope-Mean-X
Mean-Time-BodyGyroscope-Mean-Y
Mean-Time-BodyGyroscope-Mean-Z
Mean-Time-BodyGyroscope-StandardDeviation-X
Mean-Time-BodyGyroscope-StandardDeviation-Y
Mean-Time-BodyGyroscope-StandardDeviation-Z
Mean-Time-BodyGyroscopeJerk-Mean-X
Mean-Time-BodyGyroscopeJerk-Mean-Y
Mean-Time-BodyGyroscopeJerk-Mean-Z
Mean-Time-BodyGyroscopeJerk-StandardDeviation-X
Mean-Time-BodyGyroscopeJerk-StandardDeviation-Y
Mean-Time-BodyGyroscopeJerk-StandardDeviation-Z
Mean-Time-BodyAccelerationMagnitude-Mean
Mean-Time-BodyAccelerationMagnitude-StandardDeviation
Mean-Time-GravityAccelerationMagnitude-Mean
Mean-Time-GravityAccelerationMagnitude-StandardDeviation
Mean-Time-BodyAccelerationJerkMagnitude-Mean
Mean-Time-BodyAccelerationJerkMagnitude-StandardDeviation
Mean-Time-BodyGyroscopeMagnitude-Mean
Mean-Time-BodyGyroscopeMagnitude-StandardDeviation
Mean-Time-BodyGyroscopeJerkMagnitude-Mean
Mean-Time-BodyGyroscopeJerkMagnitude-StandardDeviation
Mean-Frequency-BodyAcceleration-Mean-X
Mean-Frequency-BodyAcceleration-Mean-Y
Mean-Frequency-BodyAcceleration-Mean-Z
Mean-Frequency-BodyAcceleration-StandardDeviation-X
Mean-Frequency-BodyAcceleration-StandardDeviation-Y
Mean-Frequency-BodyAcceleration-StandardDeviation-Z
Mean-Frequency-BodyAccelerationJerk-Mean-X
Mean-Frequency-BodyAccelerationJerk-Mean-Y
Mean-Frequency-BodyAccelerationJerk-Mean-Z
Mean-Frequency-BodyAccelerationJerk-StandardDeviation-X
Mean-Frequency-BodyAccelerationJerk-StandardDeviation-Y
Mean-Frequency-BodyAccelerationJerk-StandardDeviation-Z
Mean-Frequency-BodyGyroscope-Mean-X
Mean-Frequency-BodyGyroscope-Mean-Y
Mean-Frequency-BodyGyroscope-Mean-Z
Mean-Frequency-BodyGyroscope-StandardDeviation-X
Mean-Frequency-BodyGyroscope-StandardDeviation-Y
Mean-Frequency-BodyGyroscope-StandardDeviation-Z
Mean-Frequency-BodyAccelerationMagnitude-Mean
Mean-Frequency-BodyAccelerationMagnitude-StandardDeviation
Mean-Frequency-BodyBodyAccelerationJerkMagnitude-Mean
Mean-Frequency-BodyBodyAccelerationJerkMagnitude-StandardDeviation
Mean-Frequency-BodyBodyGyroscopeMagnitude-Mean
Mean-Frequency-BodyBodyGyroscopeMagnitude-StandardDeviation
Mean-Frequency-BodyBodyGyroscopeJerkMagnitude-Mean
Mean-Frequency-BodyBodyGyroscopeJerkMagnitude-StandardDeviation


