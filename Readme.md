###Readme

The subjectactivitymeasurements_tidy.txt file contains data from experiments conducted on 30 subjects performing a set of six activities while carrying a device that collected several signals. The raw data produced from the experiment contained 10299 measurements from 561 signals and was divided into training and test sets. 

This raw data was cleaned up using run_analysis.R script to provide an aggregated summary for only the mean and standard deviations signals and saved in subjectactivitymeasurements_tidy.txt. The script reads the training and test data and all relevant signal and activity labels and adds the proper labels to all the columns of raw data. It then extracts the mean and standard deviation signals. It then merges the training and test data and performs another column name cleanup. It finally calculates the mean for all signals for each subject and activity combination and saves the final tidy data file.

The final cleaned up data contains 180 rows (one observation each for 30 subjects times 6 activities) and 68 columns (1 column identifying the subject, 1 column identifying the activity and 66 columns containing the means of various mean and standard deviations of signals).