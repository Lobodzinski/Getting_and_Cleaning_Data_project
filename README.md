### Introduction:

Author: 		Bogdan Lobodzinski

GitHub repo:		https://github.com/Lobodzinski/Getting_and_Cleaning_Data_project

description of the project:
Project is a part of the exercises for the course: Getting & Cleaning Data Coursera Course
from Johns Hopkins University
provided by: Jeff Leek, PhD, Roger D. Peng, PhD, Brian Caffo, PhD
Description of the task one can find on the URL:
https://class.coursera.org/getdata-013/human_grading/view/courses/973500/assessments/3/submissions

#### The task:
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set.
The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series
of yes/no questions related to the project. You will be required to submit:
1) a tidy data set as described below,
2) a link to a Github repository with your script for performing the analysis,
and
3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md.
You should also include a README.md in the repo with your scripts.
This repo explains how all of the scripts work and how they are connected.

One of the most exciting areas in all of data science right now is wearable computing - see for example this article (missing link).
Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users.
The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone.
A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

You should create one R script called run_analysis.R that does the following.

    1. Merges the training and the test sets to create one data set.
    2. Extracts only the measurements on the mean and standard deviation for each measurement.
    3. Uses descriptive activity names to name the activities in the data set
    4. Appropriately labels the data set with descriptive variable names.

    5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


#### Description:

All the above points (1-5) are realized by the script `run_analysis.R` available in this repo.
For a proper work, before start of the script `run_analysis.R`, you should:
-  download the zipped data 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
to your working directory
```
wget https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
```
- unzip the file
```
unzip getdata%2Fprojectfiles%2FUCI\ HAR\ Dataset.zip
```
- rename the directory 
```
mv UCI\ HAR\ Dataset UCI_HAR_Dataset
```
- start the script `run_analysis.R`,
- the submission data (point 5 of the task) are saved in a form of csv and txtx data as files `submission.csv`,`submission.txt` respectively .

The repo contains also the file `CodeBook.md` which is 
a code book that describes the variables and the data.
The operations on the data are available inside the script `run_analysis.R`.
The code book (`CodeBook.md`) is a compilation of info files available from the project description:
`features_info.txt` and `features.txt` available in the project data.

