##Code Book For the Coursera Getting and Cleaning Data

##### Original Experiment Description:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (**WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, 
SITTING, STANDING, LAYING**) wearing a smartphone (**Samsung Galaxy S II**) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular 
velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the 
volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The 
sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is 
assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time 
and frequency domain. 

##### Project Tasks Description:

From the original Data Set we have to:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

** *Note: All Feature in the tidy data set are grouped by Activity and Subject and were calculated the Average* **

#### Tidy Data Set Features Description:

1. **Activity**:
The activity of the subject testing. Valid Values are: **WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, 
SITTING, STANDING, LAYING**

2. **Subject**:
An integer representing the subject from wich data are collected. Valid values are integer from 1:30

3. **tBodyAcc.mean.X**:
The Mean of the Body Accelerometer Signal
for the component X in the Time Domain.Values are normalized and bounded within [-1,1]. 
*Note: The acceleration signal was separated into body and gravity acceleration signals 
using a low pass Butterworth filter with a corner frequency of 0.3 Hz.*


4. **tBodyAcc.mean.Y**:
The Mean of the Body Accelerometer Signal
for the component Y in the Time Domain.Values are normalized and bounded within [-1,1]. 
*Note: The acceleration signal was separated into body and gravity acceleration signals 
using a low pass Butterworth filter with a corner frequency of 0.3 Hz.*


5. **tBodyAcc.mean.Z**:
The Mean of the Body Accelerometer Signal
 for the component Z in the Time Domain.Values are normalized and bounded within [-1,1]. 
*Note: The acceleration signal was separated into body and gravity acceleration signals 
using a low pass Butterworth filter with a corner frequency of 0.3 Hz.*


6. **tBodyAcc.std.X**:
The Standard Deviation of the Body Accelerometer Signal
for the component X in the Time Domain.Values are normalized and bounded within [-1,1]. 
*Note: The acceleration signal was separated into body and gravity acceleration signals 
using a low pass Butterworth filter with a corner frequency of 0.3 Hz.*


7. **tBodyAcc.std.Y**:
The Standard Deviation of the Body Accelerometer Signal
for the component Y in the Time Domain.Values are normalized and bounded within [-1,1]. 
*Note: The acceleration signal was separated into body and gravity acceleration signals 
using a low pass Butterworth filter with a corner frequency of 0.3 Hz.*


8. **tBodyAcc.std.Z**:
The Standard Deviation of the Body Accelerometer Signal
 for the component Z in the Time Domain.Values are normalized and bounded within [-1,1]. 
*Note: The acceleration signal was separated into body and gravity acceleration signals 
using a low pass Butterworth filter with a corner frequency of 0.3 Hz.*


9. **tGravityAcc.mean.X**:
The Mean of the Gravity Accelerometer Signal
for the component X in the Time Domain.Values are normalized and bounded within [-1,1]. 
*Note: The acceleration signal was separated into body and gravity acceleration signals 
using a low pass Butterworth filter with a corner frequency of 0.3 Hz.*


10. **tGravityAcc.mean.Y**:
The Mean of the Gravity Accelerometer Signal
for the component Y in the Time Domain.Values are normalized and bounded within [-1,1]. 
*Note: The acceleration signal was separated into body and gravity acceleration signals 
using a low pass Butterworth filter with a corner frequency of 0.3 Hz.*


11. **tGravityAcc.mean.Z**:
The Mean of the Gravity Accelerometer Signal
 for the component Z in the Time Domain.Values are normalized and bounded within [-1,1]. 
*Note: The acceleration signal was separated into body and gravity acceleration signals 
using a low pass Butterworth filter with a corner frequency of 0.3 Hz.*


12. **tGravityAcc.std.X**:
The Standard Deviation of the Gravity Accelerometer Signal
for the component X in the Time Domain.Values are normalized and bounded within [-1,1]. 
*Note: The acceleration signal was separated into body and gravity acceleration signals 
using a low pass Butterworth filter with a corner frequency of 0.3 Hz.*


13. **tGravityAcc.std.Y**:
The Standard Deviation of the Gravity Accelerometer Signal
for the component Y in the Time Domain.Values are normalized and bounded within [-1,1]. 
*Note: The acceleration signal was separated into body and gravity acceleration signals 
using a low pass Butterworth filter with a corner frequency of 0.3 Hz.*


14. **tGravityAcc.std.Z**:
The Standard Deviation of the Gravity Accelerometer Signal
 for the component Z in the Time Domain.Values are normalized and bounded within [-1,1]. 
*Note: The acceleration signal was separated into body and gravity acceleration signals 
using a low pass Butterworth filter with a corner frequency of 0.3 Hz.*


15. **tBodyAccJerk.mean.X**:
The Mean of the Jerk in Body Accelerometer Signal
for the component X in the Time Domain.Values are normalized and bounded within [-1,1]. 
*Note: The Jerk signal is obtained from the body linear acceleration 
and angular velocity derived in time.* *. The acceleration signal was separated into body and gravity acceleration signals 
using a low pass Butterworth filter with a corner frequency of 0.3 Hz.*


16. **tBodyAccJerk.mean.Y**:
The Mean of the Jerk in Body Accelerometer Signal
for the component Y in the Time Domain.Values are normalized and bounded within [-1,1]. 
*Note: The Jerk signal is obtained from the body linear acceleration 
and angular velocity derived in time.* *. The acceleration signal was separated into body and gravity acceleration signals 
using a low pass Butterworth filter with a corner frequency of 0.3 Hz.*


17. **tBodyAccJerk.mean.Z**:
The Mean of the Jerk in Body Accelerometer Signal
 for the component Z in the Time Domain.Values are normalized and bounded within [-1,1]. 
*Note: The Jerk signal is obtained from the body linear acceleration 
and angular velocity derived in time.* *. The acceleration signal was separated into body and gravity acceleration signals 
using a low pass Butterworth filter with a corner frequency of 0.3 Hz.*


18. **tBodyAccJerk.std.X**:
The Standard Deviation of the Jerk in Body Accelerometer Signal
for the component X in the Time Domain.Values are normalized and bounded within [-1,1]. 
*Note: The Jerk signal is obtained from the body linear acceleration 
and angular velocity derived in time.* *. The acceleration signal was separated into body and gravity acceleration signals 
using a low pass Butterworth filter with a corner frequency of 0.3 Hz.*


19. **tBodyAccJerk.std.Y**:
The Standard Deviation of the Jerk in Body Accelerometer Signal
for the component Y in the Time Domain.Values are normalized and bounded within [-1,1]. 
*Note: The Jerk signal is obtained from the body linear acceleration 
and angular velocity derived in time.* *. The acceleration signal was separated into body and gravity acceleration signals 
using a low pass Butterworth filter with a corner frequency of 0.3 Hz.*


20. **tBodyAccJerk.std.Z**:
The Standard Deviation of the Jerk in Body Accelerometer Signal
 for the component Z in the Time Domain.Values are normalized and bounded within [-1,1]. 
*Note: The Jerk signal is obtained from the body linear acceleration 
and angular velocity derived in time.* *. The acceleration signal was separated into body and gravity acceleration signals 
using a low pass Butterworth filter with a corner frequency of 0.3 Hz.*


21. **tBodyGyro.mean.X**:
The Mean of the Body Gyroscopical Signal
for the component X in the Time Domain.Values are normalized and bounded within [-1,1]. 


22. **tBodyGyro.mean.Y**:
The Mean of the Body Gyroscopical Signal
for the component Y in the Time Domain.Values are normalized and bounded within [-1,1]. 


23. **tBodyGyro.mean.Z**:
The Mean of the Body Gyroscopical Signal
 for the component Z in the Time Domain.Values are normalized and bounded within [-1,1]. 


24. **tBodyGyro.std.X**:
The Standard Deviation of the Body Gyroscopical Signal
for the component X in the Time Domain.Values are normalized and bounded within [-1,1]. 


25. **tBodyGyro.std.Y**:
The Standard Deviation of the Body Gyroscopical Signal
for the component Y in the Time Domain.Values are normalized and bounded within [-1,1]. 


26. **tBodyGyro.std.Z**:
The Standard Deviation of the Body Gyroscopical Signal
 for the component Z in the Time Domain.Values are normalized and bounded within [-1,1]. 


27. **tBodyGyroJerk.mean.X**:
The Mean of the Body Gyroscopical Jerk Signal
for the component X in the Time Domain.Values are normalized and bounded within [-1,1]. 
*Note: The Jerk signal is obtained from the body linear acceleration 
and angular velocity derived in time.*


28. **tBodyGyroJerk.mean.Y**:
The Mean of the Body Gyroscopical Jerk Signal
for the component Y in the Time Domain.Values are normalized and bounded within [-1,1]. 
*Note: The Jerk signal is obtained from the body linear acceleration 
and angular velocity derived in time.*


29. **tBodyGyroJerk.mean.Z**:
The Mean of the Body Gyroscopical Jerk Signal
 for the component Z in the Time Domain.Values are normalized and bounded within [-1,1]. 
*Note: The Jerk signal is obtained from the body linear acceleration 
and angular velocity derived in time.*


30. **tBodyGyroJerk.std.X**:
The Standard Deviation of the Body Gyroscopical Jerk Signal
for the component X in the Time Domain.Values are normalized and bounded within [-1,1]. 
*Note: The Jerk signal is obtained from the body linear acceleration 
and angular velocity derived in time.*


31. **tBodyGyroJerk.std.Y**:
The Standard Deviation of the Body Gyroscopical Jerk Signal
for the component Y in the Time Domain.Values are normalized and bounded within [-1,1]. 
*Note: The Jerk signal is obtained from the body linear acceleration 
and angular velocity derived in time.*


32. **tBodyGyroJerk.std.Z**:
The Standard Deviation of the Body Gyroscopical Jerk Signal
 for the component Z in the Time Domain.Values are normalized and bounded within [-1,1]. 
*Note: The Jerk signal is obtained from the body linear acceleration 
and angular velocity derived in time.*


33. **tBodyAccMag.mean**:
The Mean of the Body Accelerometer Magnitude Signal
 in the Time Domain.Values are normalized and bounded within [-1,1]. 
*Note: The magnitude of The three-dimensional signals (X,Y,Z) 
were calculated using the Euclidean norm.* *. The acceleration signal was separated into body and gravity acceleration signals 
using a low pass Butterworth filter with a corner frequency of 0.3 Hz.*


34. **tBodyAccMag.std**:
The Standard Deviation of the Body Accelerometer Magnitude Signal
 in the Time Domain.Values are normalized and bounded within [-1,1]. 
*Note: The magnitude of The three-dimensional signals (X,Y,Z) 
were calculated using the Euclidean norm.* *. The acceleration signal was separated into body and gravity acceleration signals 
using a low pass Butterworth filter with a corner frequency of 0.3 Hz.*


35. **tGravityAccMag.mean**:
The Mean of the Gravity Accelerometer Magnitude Signal
 in the Time Domain.Values are normalized and bounded within [-1,1]. 
*Note: The magnitude of The three-dimensional signals (X,Y,Z) 
were calculated using the Euclidean norm.* *. The acceleration signal was separated into body and gravity acceleration signals 
using a low pass Butterworth filter with a corner frequency of 0.3 Hz.*


36. **tGravityAccMag.std**:
The Standard Deviation of the Gravity Accelerometer Magnitude Signal
 in the Time Domain.Values are normalized and bounded within [-1,1]. 
*Note: The magnitude of The three-dimensional signals (X,Y,Z) 
were calculated using the Euclidean norm.* *. The acceleration signal was separated into body and gravity acceleration signals 
using a low pass Butterworth filter with a corner frequency of 0.3 Hz.*


37. **tBodyAccJerkMag.mean**:
The Mean of the Body Accelerometer Jerk Magnitude Signal
 in the Time Domain.Values are normalized and bounded within [-1,1]. 
*Note: The magnitude of The three-dimensional signals (X,Y,Z) 
were calculated using the Euclidean norm.* *. The acceleration signal was separated into body and gravity acceleration signals 
using a low pass Butterworth filter with a corner frequency of 0.3 Hz.*


38. **tBodyAccJerkMag.std**:
The Standard Deviation of the Body Accelerometer Jerk Magnitude Signal
 in the Time Domain.Values are normalized and bounded within [-1,1]. 
*Note: The magnitude of The three-dimensional signals (X,Y,Z) 
were calculated using the Euclidean norm.* *. The acceleration signal was separated into body and gravity acceleration signals 
using a low pass Butterworth filter with a corner frequency of 0.3 Hz.*


39. **tBodyGyroMag.mean**:
The Mean of the Body Gyroscopical Magnitude Signal
 in the Time Domain.Values are normalized and bounded within [-1,1]. 
*Note: The magnitude of The three-dimensional signals (X,Y,Z) 
were calculated using the Euclidean norm.*


40. **tBodyGyroMag.std**:
The Standard Deviation of the Body Gyroscopical Magnitude Signal
 in the Time Domain.Values are normalized and bounded within [-1,1]. 
*Note: The magnitude of The three-dimensional signals (X,Y,Z) 
were calculated using the Euclidean norm.*


41. **tBodyGyroJerkMag.mean**:
The Mean of the Body Gyroscopical Jerk Magnitude Signal
 in the Time Domain.Values are normalized and bounded within [-1,1]. 
*Note: The magnitude of The three-dimensional signals (X,Y,Z) 
were calculated using the Euclidean norm.*


42. **tBodyGyroJerkMag.std**:
The Standard Deviation of the Body Gyroscopical Jerk Magnitude Signal
 in the Time Domain.Values are normalized and bounded within [-1,1]. 
*Note: The magnitude of The three-dimensional signals (X,Y,Z) 
were calculated using the Euclidean norm.*


43. **fBodyAcc.mean.X**:
The Mean of the Body Accelerometer Signal
for the component X in the Frequency Domain.Values are normalized and bounded within [-1,1]. 
*Note: The acceleration signal was separated into body and gravity acceleration signals 
using a low pass Butterworth filter with a corner frequency of 0.3 Hz.*


44. **fBodyAcc.mean.Y**:
The Mean of the Body Accelerometer Signal
for the component Y in the Frequency Domain.Values are normalized and bounded within [-1,1]. 
*Note: The acceleration signal was separated into body and gravity acceleration signals 
using a low pass Butterworth filter with a corner frequency of 0.3 Hz.*


45. **fBodyAcc.mean.Z**:
The Mean of the Body Accelerometer Signal
 for the component Z in the Frequency Domain.Values are normalized and bounded within [-1,1]. 
*Note: The acceleration signal was separated into body and gravity acceleration signals 
using a low pass Butterworth filter with a corner frequency of 0.3 Hz.*


46. **fBodyAcc.std.X**:
The Standard Deviation of the Body Accelerometer Signal
for the component X in the Frequency Domain.Values are normalized and bounded within [-1,1]. 
*Note: The acceleration signal was separated into body and gravity acceleration signals 
using a low pass Butterworth filter with a corner frequency of 0.3 Hz.*


47. **fBodyAcc.std.Y**:
The Standard Deviation of the Body Accelerometer Signal
for the component Y in the Frequency Domain.Values are normalized and bounded within [-1,1]. 
*Note: The acceleration signal was separated into body and gravity acceleration signals 
using a low pass Butterworth filter with a corner frequency of 0.3 Hz.*


48. **fBodyAcc.std.Z**:
The Standard Deviation of the Body Accelerometer Signal
 for the component Z in the Frequency Domain.Values are normalized and bounded within [-1,1]. 
*Note: The acceleration signal was separated into body and gravity acceleration signals 
using a low pass Butterworth filter with a corner frequency of 0.3 Hz.*


49. **fBodyAccJerk.mean.X**:
The Mean of the Jerk in Body Accelerometer Signal
for the component X in the Frequency Domain.Values are normalized and bounded within [-1,1]. 
*Note: The Jerk signal is obtained from the body linear acceleration 
and angular velocity derived in time.* *. The acceleration signal was separated into body and gravity acceleration signals 
using a low pass Butterworth filter with a corner frequency of 0.3 Hz.*


50. **fBodyAccJerk.mean.Y**:
The Mean of the Jerk in Body Accelerometer Signal
for the component Y in the Frequency Domain.Values are normalized and bounded within [-1,1]. 
*Note: The Jerk signal is obtained from the body linear acceleration 
and angular velocity derived in time.* *. The acceleration signal was separated into body and gravity acceleration signals 
using a low pass Butterworth filter with a corner frequency of 0.3 Hz.*


51. **fBodyAccJerk.mean.Z**:
The Mean of the Jerk in Body Accelerometer Signal
 for the component Z in the Frequency Domain.Values are normalized and bounded within [-1,1]. 
*Note: The Jerk signal is obtained from the body linear acceleration 
and angular velocity derived in time.* *. The acceleration signal was separated into body and gravity acceleration signals 
using a low pass Butterworth filter with a corner frequency of 0.3 Hz.*


52. **fBodyAccJerk.std.X**:
The Standard Deviation of the Jerk in Body Accelerometer Signal
for the component X in the Frequency Domain.Values are normalized and bounded within [-1,1]. 
*Note: The Jerk signal is obtained from the body linear acceleration 
and angular velocity derived in time.* *. The acceleration signal was separated into body and gravity acceleration signals 
using a low pass Butterworth filter with a corner frequency of 0.3 Hz.*


53. **fBodyAccJerk.std.Y**:
The Standard Deviation of the Jerk in Body Accelerometer Signal
for the component Y in the Frequency Domain.Values are normalized and bounded within [-1,1]. 
*Note: The Jerk signal is obtained from the body linear acceleration 
and angular velocity derived in time.* *. The acceleration signal was separated into body and gravity acceleration signals 
using a low pass Butterworth filter with a corner frequency of 0.3 Hz.*


54. **fBodyAccJerk.std.Z**:
The Standard Deviation of the Jerk in Body Accelerometer Signal
 for the component Z in the Frequency Domain.Values are normalized and bounded within [-1,1]. 
*Note: The Jerk signal is obtained from the body linear acceleration 
and angular velocity derived in time.* *. The acceleration signal was separated into body and gravity acceleration signals 
using a low pass Butterworth filter with a corner frequency of 0.3 Hz.*


55. **fBodyGyro.mean.X**:
The Mean of the Body Gyroscopical Signal
for the component X in the Frequency Domain.Values are normalized and bounded within [-1,1]. 


56. **fBodyGyro.mean.Y**:
The Mean of the Body Gyroscopical Signal
for the component Y in the Frequency Domain.Values are normalized and bounded within [-1,1]. 


57. **fBodyGyro.mean.Z**:
The Mean of the Body Gyroscopical Signal
 for the component Z in the Frequency Domain.Values are normalized and bounded within [-1,1]. 


58. **fBodyGyro.std.X**:
The Standard Deviation of the Body Gyroscopical Signal
for the component X in the Frequency Domain.Values are normalized and bounded within [-1,1]. 


59. **fBodyGyro.std.Y**:
The Standard Deviation of the Body Gyroscopical Signal
for the component Y in the Frequency Domain.Values are normalized and bounded within [-1,1]. 


60. **fBodyGyro.std.Z**:
The Standard Deviation of the Body Gyroscopical Signal
 for the component Z in the Frequency Domain.Values are normalized and bounded within [-1,1]. 


61. **fBodyAccMag.mean**:
The Mean of the Body Accelerometer Magnitude Signal
 in the Frequency Domain.Values are normalized and bounded within [-1,1]. 
*Note: The magnitude of The three-dimensional signals (X,Y,Z) 
were calculated using the Euclidean norm.* *. The acceleration signal was separated into body and gravity acceleration signals 
using a low pass Butterworth filter with a corner frequency of 0.3 Hz.*


62. **fBodyAccMag.std**:
The Standard Deviation of the Body Accelerometer Magnitude Signal
 in the Frequency Domain.Values are normalized and bounded within [-1,1]. 
*Note: The magnitude of The three-dimensional signals (X,Y,Z) 
were calculated using the Euclidean norm.* *. The acceleration signal was separated into body and gravity acceleration signals 
using a low pass Butterworth filter with a corner frequency of 0.3 Hz.*


63. **fBodyBodyAccJerkMag.mean**:
The Mean of the Body Acceleration Jerk Magnitude Signal
 in the Frequency Domain.Values are normalized and bounded within [-1,1]. 
*Note: The magnitude of The three-dimensional signals (X,Y,Z) 
were calculated using the Euclidean norm.* *. The acceleration signal was separated into body and gravity acceleration signals 
using a low pass Butterworth filter with a corner frequency of 0.3 Hz.*
**BodyBody is a Typos but were leave unchanged from the original Data Set**


64. **fBodyBodyAccJerkMag.std**:
The Standard Deviation of the Body Acceleration Jerk Magnitude Signal
 in the Frequency Domain.Values are normalized and bounded within [-1,1]. 
*Note: The magnitude of The three-dimensional signals (X,Y,Z) 
were calculated using the Euclidean norm.* *. The acceleration signal was separated into body and gravity acceleration signals 
using a low pass Butterworth filter with a corner frequency of 0.3 Hz.*
**BodyBody is a Typos but were leave unchanged from the original Data Set**


65. **fBodyBodyGyroMag.mean**:
The Mean of the Body Gyroscopical Magnitude Signal
 in the Frequency Domain.Values are normalized and bounded within [-1,1]. 
*Note: The magnitude of The three-dimensional signals (X,Y,Z) 
were calculated using the Euclidean norm.*
**BodyBody is a Typos but were leave unchanged from the original Data Set**


66. **fBodyBodyGyroMag.std**:
The Standard Deviation of the Body Gyroscopical Magnitude Signal
 in the Frequency Domain.Values are normalized and bounded within [-1,1]. 
*Note: The magnitude of The three-dimensional signals (X,Y,Z) 
were calculated using the Euclidean norm.*
**BodyBody is a Typos but were leave unchanged from the original Data Set**


67. **fBodyBodyGyroJerkMag.mean**:
The Mean of the Body Gyroscopical Jerk Magnitude Signal
 in the Frequency Domain.Values are normalized and bounded within [-1,1]. 
*Note: The magnitude of The three-dimensional signals (X,Y,Z) 
were calculated using the Euclidean norm.*
**BodyBody is a Typos but were leave unchanged from the original Data Set**


68. **fBodyBodyGyroJerkMag.std**:
The Standard Deviation of the Body Gyroscopical Jerk Magnitude Signal
 in the Frequency Domain.Values are normalized and bounded within [-1,1]. 
*Note: The magnitude of The three-dimensional signals (X,Y,Z) 
were calculated using the Euclidean norm.*
**BodyBody is a Typos but were leave unchanged from the original Data Set**