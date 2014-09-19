===========
This repo is part of Getting and Cleaning Data Course Project with a purpose to demonstrate
my ability to collect, work with, and clean a data set.
So the goal is to prepare tidy data that can be used for later analysis.

The final output dataset is tidy because it meets the principles of tidy data by having the following structure
	* Each variable measured is in one column
	* Each different observation of that variable is in a different row
	* There is only one file/table for each "kind" of variable - which in this case	is the mean and
		standard deviation of the features for variables from the time and frequency domain of a raw signal
	* This is only one file/table, therefore a column that allows it to be linked to other tables is not included 
	In addition to the four main components above
	* It also includes a row at the top of the file with variable names.
	* Variable names, although abbreviated, are human readable and do not contain any extra characters
===========
##This repo contains
	1. run_analysis.R script that takes in raw data and outputs a tidy dataset
		for further analysis
	2. Code Book that describes resulting tidy data set, as well as an overview of the source data used to obtain it

**** run_analysis.R script assumes that *****
	1. There is "data" folder in user's home directory
	2. The following raw data files are in the "data" folder in home directory
		- X_test.txt
		- X_train.txt
		- y_test.txt
		- y_train.txt
		- subject_test.txt
		- subject_train.txt
		- features.txt
		- activity_labels.txt

To complete the project task, run_analysis.R script does the following:
	* Reads in and combines x_test and x_train files into dataframe xfile by binding rows
	* Reads in features file and creates a vector with feature names
	* Renames columns in the combined xfile using names from features vector
	* Reads in and converts to numeric type subjects from subject_test and subject_train files
	* Combines test and train subjects in a dataframe using row binding
	* Reads in and converts to numeric type activity code from y_test and y_train files
	* Combines test and train activity codes in a dataframe using row binding
	* Using column bind, adds subject and activity data to xfile dataframe with measurement values
	* Subsets xfile using grep to match mean() and std() into a new meansstddf dataframe
	* Reads in activity data from activity_labels file and converts labels code
		to numeric type in labels dataframe
	* Merges descriptive activity names in labels with subset of the combined data file meanstddf
		by using merge on label codes as a key
	* Removes duplicate V1 column from resulting mergefile and renames V1 column to "activity" 
	* Using gsub, removes extra characters and duplicate words from column names of the combined and
		filtered mergefile
	* Creates vector namevec with column names for columns which will have a calculated average
	* Creates new tidy dataset mergefile.means by calculating averages for each variable
		and grouping by activity and subject, using aggregate function
	* Writes dataframe out to a tidydataset.txt file into "data" folder in home directory
		with write.table function
	* This file can be viewed in R Studio in 2 steps
		1. data5 <- read.table("./data/tidydataset.txt", header = TRUE)
		2. View(data5)
