###Codebook

###Raw data
The raw data contained measurements from various signals from the devices when the subjects were performing a set of activities. There were a total of 30 subjects used for the study, who performed the following activities:
* WALKING
* WALKING_UPSTAIRS
* WALKING_DOWNSTAIRS
* SITTING
* STANDING
* LAYING

The raw data had recordings for the following signals:
* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

Futhermore, the following variables were calculated for the above signals
* mean()		: Mean value
* std()			: Standard deviation
* mad()			: Median absolute deviation 
* max()			: Largest value in array
* min()			: Smallest value in array
* sma()			: Signal magnitude area
* energy()		: Energy measure. Sum of the squares divided by the number of values. 
* iqr()			: Interquartile range 
* entropy()		: Signal entropy
* arCoeff()		: Autorregresion coefficients with Burg order equal to 4
* correlation()	: correlation coefficient between two signals
* maxInds()		: index of the frequency component with largest magnitude
* meanFreq()	: Weighted average of the frequency components to obtain a mean frequency
* skewness()	: skewness of the frequency domain signal 
* kurtosis()	: kurtosis of the frequency domain signal 
* bandsEnergy()	: Energy of a frequency interval within the 64 bins of the FFT of each window.
* angle()		: Angle between to vectors.

In all, there were 10299 measurements for 561 signals. Finally, the raw data was divided into training and testing set in approximately 70:30 breakdown.

###Tidy data
The above raw data was cleaned using the run_analysis.R script and it produced an aggregated subset of the raw data above in the file subjectactivitymeasurements_tidy.txt. The cleaned data contains the mean of the mean and standard deviation signals listed above for all 30 candidates for all six activities.

The clean data contains the following 68 columns each with 180 observations:
* subjectId				  	 : ID of each of the subject. Range is 1 to 30
* activity					 : Name of the activity. The label is one of "WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING"
* tBodyAcc-mean()-X          : mean for this signal for a given subject and activity. Numerical Vector of 180 values.
* tBodyAcc-mean()-Y          : mean for this signal for a given subject and activity. Numerical Vector of 180 values.
* tBodyAcc-mean()-Z          : mean for this signal for a given subject and activity. Numerical Vector of 180 values.
* tGravityAcc-mean()-X       : mean for this signal for a given subject and activity. Numerical Vector of 180 values.
* tGravityAcc-mean()-Y       : mean for this signal for a given subject and activity. Numerical Vector of 180 values.
* tGravityAcc-mean()-Z       : mean for this signal for a given subject and activity. Numerical Vector of 180 values.
* tBodyAccJerk-mean()-X      : mean for this signal for a given subject and activity. Numerical Vector of 180 values.
* tBodyAccJerk-mean()-Y      : mean for this signal for a given subject and activity. Numerical Vector of 180 values.
* tBodyAccJerk-mean()-Z      : mean for this signal for a given subject and activity. Numerical Vector of 180 values.
* tBodyGyro-mean()-X         : mean for this signal for a given subject and activity. Numerical Vector of 180 values.
* tBodyGyro-mean()-Y         : mean for this signal for a given subject and activity. Numerical Vector of 180 values.
* tBodyGyro-mean()-Z         : mean for this signal for a given subject and activity. Numerical Vector of 180 values.
* tBodyGyroJerk-mean()-X     : mean for this signal for a given subject and activity. Numerical Vector of 180 values.
* tBodyGyroJerk-mean()-Y     : mean for this signal for a given subject and activity. Numerical Vector of 180 values.
* tBodyGyroJerk-mean()-Z     : mean for this signal for a given subject and activity. Numerical Vector of 180 values.
* tBodyAccMag-mean()         : mean for this signal for a given subject and activity. Numerical Vector of 180 values.
* tGravityAccMag-mean()      : mean for this signal for a given subject and activity. Numerical Vector of 180 values.
* tBodyAccJerkMag-mean()     : mean for this signal for a given subject and activity. Numerical Vector of 180 values.
* tBodyGyroMag-mean()        : mean for this signal for a given subject and activity. Numerical Vector of 180 values.
* tBodyGyroJerkMag-mean()    : mean for this signal for a given subject and activity. Numerical Vector of 180 values.
* fBodyAcc-mean()-X          : mean for this signal for a given subject and activity. Numerical Vector of 180 values.
* fBodyAcc-mean()-Y          : mean for this signal for a given subject and activity. Numerical Vector of 180 values.
* fBodyAcc-mean()-Z          : mean for this signal for a given subject and activity. Numerical Vector of 180 values.
* fBodyAccJerk-mean()-X      : mean for this signal for a given subject and activity. Numerical Vector of 180 values.
* fBodyAccJerk-mean()-Y      : mean for this signal for a given subject and activity. Numerical Vector of 180 values.
* fBodyAccJerk-mean()-Z      : mean for this signal for a given subject and activity. Numerical Vector of 180 values.
* fBodyGyro-mean()-X         : mean for this signal for a given subject and activity. Numerical Vector of 180 values.
* fBodyGyro-mean()-Y         : mean for this signal for a given subject and activity. Numerical Vector of 180 values.
* fBodyGyro-mean()-Z         : mean for this signal for a given subject and activity. Numerical Vector of 180 values.
* fBodyAccMag-mean()         : mean for this signal for a given subject and activity. Numerical Vector of 180 values.
* fBodyBodyAccJerkMag-mean() : mean for this signal for a given subject and activity. Numerical Vector of 180 values.
* fBodyBodyGyroMag-mean()    : mean for this signal for a given subject and activity. Numerical Vector of 180 values.
* fBodyBodyGyroJerkMag-mean(): mean for this signal for a given subject and activity. Numerical Vector of 180 values.
* tBodyAcc-std()-X           : mean for this signal for a given subject and activity. Numerical Vector of 180 values.
* tBodyAcc-std()-Y           : mean for this signal for a given subject and activity. Numerical Vector of 180 values.
* tBodyAcc-std()-Z           : mean for this signal for a given subject and activity. Numerical Vector of 180 values.
* tGravityAcc-std()-X        : mean for this signal for a given subject and activity. Numerical Vector of 180 values.
* tGravityAcc-std()-Y        : mean for this signal for a given subject and activity. Numerical Vector of 180 values.
* tGravityAcc-std()-Z        : mean for this signal for a given subject and activity. Numerical Vector of 180 values.
* tBodyAccJerk-std()-X       : mean for this signal for a given subject and activity. Numerical Vector of 180 values.
* tBodyAccJerk-std()-Y       : mean for this signal for a given subject and activity. Numerical Vector of 180 values.
* tBodyAccJerk-std()-Z       : mean for this signal for a given subject and activity. Numerical Vector of 180 values.
* tBodyGyro-std()-X          : mean for this signal for a given subject and activity. Numerical Vector of 180 values.
* tBodyGyro-std()-Y          : mean for this signal for a given subject and activity. Numerical Vector of 180 values.
* tBodyGyro-std()-Z          : mean for this signal for a given subject and activity. Numerical Vector of 180 values.
* tBodyGyroJerk-std()-X      : mean for this signal for a given subject and activity. Numerical Vector of 180 values.
* tBodyGyroJerk-std()-Y      : mean for this signal for a given subject and activity. Numerical Vector of 180 values.
* tBodyGyroJerk-std()-Z      : mean for this signal for a given subject and activity. Numerical Vector of 180 values.
* tBodyAccMag-std()          : mean for this signal for a given subject and activity. Numerical Vector of 180 values.
* tGravityAccMag-std()       : mean for this signal for a given subject and activity. Numerical Vector of 180 values.
* tBodyAccJerkMag-std()      : mean for this signal for a given subject and activity. Numerical Vector of 180 values.
* tBodyGyroMag-std()         : mean for this signal for a given subject and activity. Numerical Vector of 180 values.
* tBodyGyroJerkMag-std()     : mean for this signal for a given subject and activity. Numerical Vector of 180 values.
* fBodyAcc-std()-X           : mean for this signal for a given subject and activity. Numerical Vector of 180 values.
* fBodyAcc-std()-Y           : mean for this signal for a given subject and activity. Numerical Vector of 180 values.
* fBodyAcc-std()-Z           : mean for this signal for a given subject and activity. Numerical Vector of 180 values.
* fBodyAccJerk-std()-X       : mean for this signal for a given subject and activity. Numerical Vector of 180 values.
* fBodyAccJerk-std()-Y       : mean for this signal for a given subject and activity. Numerical Vector of 180 values.
* fBodyAccJerk-std()-Z       : mean for this signal for a given subject and activity. Numerical Vector of 180 values.
* fBodyGyro-std()-X          : mean for this signal for a given subject and activity. Numerical Vector of 180 values.
* fBodyGyro-std()-Y          : mean for this signal for a given subject and activity. Numerical Vector of 180 values.
* fBodyGyro-std()-Z          : mean for this signal for a given subject and activity. Numerical Vector of 180 values.
* fBodyAccMag-std()          : mean for this signal for a given subject and activity. Numerical Vector of 180 values.
* fBodyBodyAccJerkMag-std()  : mean for this signal for a given subject and activity. Numerical Vector of 180 values.
* fBodyBodyGyroMag-std()     : mean for this signal for a given subject and activity. Numerical Vector of 180 values.
* fBodyBodyGyroJerkMag-std() : mean for this signal for a given subject and activity. Numerical Vector of 180 values.
