# akkirajupadmaCourseraClasses
classProjectTo run my script, have all the necessary files in wd 
in R studio, source ("run_analysis.R")
There should be padma_tidy_DF1.txt written out

To accomplish this,  I read all x_train and x_test files.
I merge them using rbind and saven in untidy_DF
I use cbind to add y_rain, y-test as columns
I read subject_train, subject_test, append together using rbind and
then add as column to the untidy_DF.
Then I extract SUBJECTID, ACTIVITYNAME paires by using untidy_DF[(untidy_DF$SUBJECTNAME==i & untidy_DF$SUBJECT_NAME==i),]
in a forloop and use sapply to compute mean.
Finally I end up with a table of 180 rows and 563 columns.
Then I replace ACTIVITYNAMES from number to 1-6 to names WALKING etc.
