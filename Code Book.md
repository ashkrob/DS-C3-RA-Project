##   OVERVIEW
	A group of 30 volunteers participated in the experiments where each person performed six activities
	(WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone on the waist. 
	3-axial linear acceleration and 3-axial angular velocity were captured by using phone's embedded accelerometer
	and gyroscope. 
	The experiment data was manually labeled and randomly partitioned into two sets:
		- 70% for generating the training data and
		- 30% for the test data
	By using various filters, the sensor signals (accelerometer and gyroscope) were pre-processed, sampled, and separated
	into body acceleration and gravity components. For each instance, a vector of features was obtained by calculating
	variables from the time and frequency domain.

	There are eight text files that comprise the source data collection being used to create a tidy dataset with the average
	of each mean and standard deviation variable that can be used for further analysis.
		1. X_test.txt
		2. X_train.txt
		3. y_test.txt
		4. y_train.txt
		5. subject_test.txt
		6. subject_train.txt
		7. features.txt
		8. activity_labels.txt

	**** Inertial Signals data, both test and train data, is the accelerometer and gyroscope 3-axial raw signals data
	and is out of scope for this project since only mean and standard deviation measurements for each measurement
	are being of interest.

	There is also an output file - a tidy dataset with the average of each mean and standard deviation variable
	for each activity and each subject that can be used for further analysis.
		9. tidydataset.txt
		
##   SOURCE DATA		
	1. X_test.txt - A 561-feature vector with time and frequency domain variables. It is a test set which contains 30%
		of all instances measured in the experiment. Each feature vector is a row on the text file.

	2. X_train.txt - A 561-feature vector with time and frequency domain variables. It is a train set which contains 70%
		of all instances measured in the experiment. Each feature vector is a row on the text file.
			
	3. y_test.txt - Contains labels for activities performed by each subject during the experiment.
		There are six activities labeled 1,2,3,4,5,6 for the feature vector in the test data set.
		
	4. y_train.txt - Contains labels for activities performed by each subject during the experiment.
		There are six activities labeled 1,2,3,4,5,6 for the feature vector in the train data set.

	5. subject_test.txt - Contains identifier of the subject who carried out the experiment for the test set of data.
		Values range is 1 through 30.

	6. subject_train.txt - Contains identifier of the subject who carried out the experiment for the train set of data.
		Value range is 1 through 30.
		
	7. features.txt - List of all features available. Contains set of variables that were estimated from time
		and frequency domain signals for each pattern of the 3-axial raw signals in the X, Y and Z directions.
		Although, it contains 561 variables, only 66 of these variables - only mean and standard deviation measurements -
		are used for further analysis according to the goal of the project.
		
	8. activity_labels.txt - Contains labels and descriptive names for activities performed by each subject
		during the experiment. Label values are 1 through 6 with descriptive names matching the performed activity.

To obtain tidy output data set, all testing and training data (X_test.txt and X_train.txt) was combined into one table
with list of available features (features.txt) added as a row at the top of the table to name variables.
Volunteer information (subject_test.txt and subject_train.txt) along with performed activities (y_test.txt and y_train.txt),
for both training and test data, were also added to the combined table. Then, combined data was subsetted
by extracting only measurements on the mean and standard deviation for each measurement. Furthermore, variable labels and
activity names were edited to use descriptive names. Finally, the data was summarized with the average of each variable
for each activity and each subject, and the resulting tidy data set was written into a file "tidydataset.txt"
		
##   OUTPUT FILE
	9. tidydataset.txt - Contains 68 Variables to provide data on the average of each variable for each activity
		and each subject.
	
	Note:	meanFreq() features which is a Weighted average of the frequency components to obtain a mean frequency
			are excluded from tidy data subset
			
File content								
------------
	1. subject		: Contains identifier of the subject who carried out the experiment.
					  Value - within [1,30].
	2. activity		: Lists the activity performed by each subject during the experiment using its descriptive name.
					  Value - (LAYING, STANDING, SITTING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS)
 
	-----	Time based variables denoted by "t"
	----- 	Values - within [-1,1]

	3. tBodyAccmeanX       : mean value of Body Acceleration signal along X axis
	4. tBodyAccmeanY       : mean value of Body Acceleration signal along Y axis
	5. tBodyAccmeanZ       : mean value of Body Acceleration signal along Z axis
	6. tBodyAccstdX        : standard deviation of Body Acceleration signal along X axis
	7. tBodyAccstdY        : standard deviation of Body Acceleration signal along Y axis
	8. tBodyAccstdZ        : standard deviation of Body Acceleration signal along Z axis
	9. tGravityAccmeanX    : mean value of Gravity Acceleration signal along X axis
	10. tGravityAccmeanY    : mean value of Gravity Acceleration signal along Y axis
	11. tGravityAccmeanZ    : mean value of Gravity Acceleration signal along Z axis
	12. tGravityAccstdX     : standard deviation of Gravity Acceleration signal along X axis
	13. tGravityAccstdY     : standard deviation of Gravity Acceleration signal along Y axis
	14. tGravityAccstdZ     : standard deviation of Gravity Acceleration signal along Z axis
	15. tBodyAccJerkmeanX   : mean value of Jerk signal along X axis obtained by deriving body linear acceleration in time 
	16. tBodyAccJerkmeanY   : mean value of Jerk signal along Y axis obtained by deriving body linear acceleration in time 
	17. tBodyAccJerkmeanZ   : mean value of Jerk signal along Z axis obtained by deriving body linear acceleration in time 
	18. tBodyAccJerkstdX    : standard deviation of Jerk signal along X axis obtained by deriving body linear acceleration in time 
	19. tBodyAccJerkstdY    : standard deviation of Jerk signal along Y axis obtained by deriving body linear acceleration in time 
	20. tBodyAccJerkstdZ    : standard deviation of Jerk signal along Z axis obtained by deriving body linear acceleration in time 
	21. tBodyGyromeanX      : mean value of Body Gyro signal along X axis
	22. tBodyGyromeanY      : mean value of Body Gyro signal along Y axis
	23. tBodyGyromeanZ      : mean value of Body Gyro signal along Z axis
	24. tBodyGyrostdX       : standard deviation of Body Gyro signal along X axis
	25. tBodyGyrostdY       : standard deviation of Body Gyro signal along Y axis
	26. tBodyGyrostdZ       : standard deviation of Body Gyro signal along Z axis
	27. tBodyGyroJerkmeanX  : mean value of Jerk signal along X axis obtained by deriving body angular velocity in time 
	28. tBodyGyroJerkmeanY  : mean value of Jerk signal along Y axis obtained by deriving body angular velocity in time 
	29. tBodyGyroJerkmeanZ  : mean value of Jerk signal along Z axis obtained by deriving body angular velocity in time 
	30. tBodyGyroJerkstdX   : standard deviation of Jerk signal along X axis obtained by deriving body angular velocity in time
	31. tBodyGyroJerkstdY   : standard deviation of Jerk signal along Y axis obtained by deriving body angular velocity in time
	32. tBodyGyroJerkstdZ   : standard deviation of Jerk signal along Z axis obtained by deriving body angular velocity in time
	33. tBodyAccMagmean     : mean value of the Magnitude of Body Acceleration
	34. tBodyAccMagstd      : standard deviation of the Magnitude of Body Acceleration
	35. tGravityAccMagmean  : mean value of the Magnitude of Gravity Acceleration
	36. tGravityAccMagstd   : standard deviation of the Magnitude of Gravity Acceleration
	37. tBodyAccJerkMagmean : mean value of the Magnitude of Jerk signal obtained by deriving body linear acceleration in time 
	38. tBodyAccJerkMagstd  : standard deviation of the Magnitude of Jerk signal obtained by deriving body linear acceleration in time 
	39. tBodyGyroMagmean    : mean value of the Magnitude of Body Gyro signal
	40. tBodyGyroMagstd     : standard deviation of the Magnitude of Body Gyro signal
	41. tBodyGyroJerkMagmean: mean value of the Magnitude of Jerk signal obtained by deriving body angular velocity in time 
	42. tBodyGyroJerkMagstd : standard deviation of the Magnitude of Jerk signal obtained by deriving body angular velocity in time 
 
	-----	Frequency based variables denoted by "f"
			Obtained by application of Fast Fourier Transform (FFT) to some of the signals
	-----	Values - within [-1,1]
  
	43. fBodyAccmeanX       : mean value of Body Acceleration signal along X axis (EFT)
	44. fBodyAccmeanY       : mean value of Body Acceleration signal along Y axis (EFT)
	45. fBodyAccmeanZ       : mean value of Body Acceleration signal along Z axis (EFT)
	46. fBodyAccstdX        : standard deviation of Body Acceleration signal along X axis (EFT)
	47. fBodyAccstdY        : standard deviation of Body Acceleration signal along Y axis (EFT)
	48. fBodyAccstdZ        : standard deviation of Body Acceleration signal along Z axis (EFT)
	49. fBodyAccJerkmeanX   : mean value of Jerk signal along X axis obtained by applying FFT to body linear acceleration 
	50. fBodyAccJerkmeanY   : mean value of Jerk signal along Y axis obtained by applying FFT to body linear acceleration 
	51. fBodyAccJerkmeanZ   : mean value of Jerk signal along Z axis obtained by applying FFT to body linear acceleration 	
	52. fBodyAccJerkstdX    : standard deviation value of Jerk signal along X axis obtained by applying FFT to body linear acceleration
	53. fBodyAccJerkstdY    : standard deviation value of Jerk signal along Y axis obtained by applying FFT to body linear acceleration
	54. fBodyAccJerkstdZ    : standard deviation value of Jerk signal along Z axis obtained by applying FFT to body linear acceleration
	55. fBodyGyromeanX      : mean value of Body Gyro signal along X axis (EFT)
	56. fBodyGyromeanY      : mean value of Body Gyro signal along Y axis (EFT)
	57. fBodyGyromeanZ      : mean value of Body Gyro signal along Z axis (EFT)
	58. fBodyGyrostdX       : standard deviation of Body Gyro signal along X axis (EFT)
	59. fBodyGyrostdY       : standard deviation of Body Gyro signal along Y axis (EFT)
	60. fBodyGyrostdZ       : standard deviation of Body Gyro signal along Z axis (EFT)
	61. fBodyAccMagmean     : mean value of the Magnitude of Body Acceleration (EFT)
	62. fBodyAccMagstd      : standard deviation of the Magnitude of Body Acceleration (EFT)
	63. fBodyAccJerkMagmean : mean value of the Magnitude of Jerk signal obtained by applying FFT to body linear acceleration
	64. fBodyAccJerkMagstd  : standard deviation of the Magnitude of Jerk signal obtained by applying FFT to body linear acceleration
	65. fBodyGyroMagmean    : mean value of the Magnitude of Body Gyro signal (EFT)
	66. fBodyGyroMagstd     : standard deviation of the Magnitude of Body Gyro signal (EFT)
	67. fBodyGyroJerkMagmean: mean value of the Magnitude of Jerk signal obtained by applying FFT to body angular velocity 
	68. fBodyGyroJerkMagstd : standard deviation of the Magnitude of Jerk signal obtained by applying FFT to body angular velocity