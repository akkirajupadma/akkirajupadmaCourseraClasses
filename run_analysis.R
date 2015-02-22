feature_names <- read.table("features.txt")
activity_labels <- read.table("activity_labels.txt")
subject_train <- read.table("subject_train.txt")
subject_test <- read.table("subject_test.txt")

#acc_x_train <- read.table("body_acc_x_train.txt")
#acc_y_train <- read.table("body_acc_y_train.txt")
#acc_z_train <- read.table("body_acc_z_train.txt")
#gyro_x_train <- read.table("body_gyro_z_train.txt")
#gyro_y_train <- read.table("body_gyro_y_train.txt")
#gyro_z_train <- read.table("body_gyro_z_train.txt")
#total_acc_x_train <- read.table("total_acc_x_train.txt")
#total_acc_y_train <- read.table("total_acc_y_train.txt")
#total_acc_z_train <- read.table("total_acc_z_train.txt")

#acc_x_test <- read.table("body_acc_x_test.txt")
#acc_y_test <- read.table("body_acc_y_test.txt")
#acc_z_test <- read.table("body_acc_z_test.txt")
#gyro_x_test <- read.table("body_gyro_z_test.txt")
#gyro_y_test <- read.table("body_gyro_y_test.txt")
#gyro_z_test <- read.table("body_gyro_z_test.txt")
#total_acc_x_test <- read.table("total_acc_x_test.txt")
#total_acc_y_test <- read.table("total_acc_y_test.txt")
#total_acc_z_test <- read.table("total_acc_z_test.txt")

x_train <- read.table("X_train.txt")
y_train <- read.table("y_train.txt")
x_test  <- read.table("X_test.txt")
y_test  <- read.table("y_test.txt")


xx_traintest <- data.frame(x_train)
xx_traintest <- rbind(xx_traintest, x_test)
xx_colmeans <- sapply(xx_traintest,mean)
xx_colsd    <- sapply(xx_traintest,sd)

yy_traintest <- data.frame(y_train)
yy_traintest <- rbind(yy_traintest, y_test)

subject_traintest <- data.frame(subject_train)
subject_traintest <- rbind(subject_traintest, subject_test)

#subject_traintest_size <- dim(subject_traintest)[1]

#new_subject_traintest <- ""
#for (i in 1:subject_traintest_size) {
#	new_subject_traintest <- c(new_subject_traintest, paste("subject", subject_traintest$V1[i],sep=""))
#	}
#yy_traintest_size <- dim(yy_traintest)[1]
#new_yy_traintest <- data.frame()

#for (i in 1:yy_traintest_size) {
#	if (yy_traintest$V1[i] == 1) {
#	 new_yy_traintest <- rbind(new_yy_traintest,"WALKING")
#	}
#	else if (yy_traintest$V1[i] == 2) {
#	 new_yy_traintest <- rbind(new_yy_traintest, "WALKING_UPSTAIRS")
#	}
#	else if (yy_traintest$V1[i] == 3) {
#	 new_yy_traintest <- rbind(new_yy_traintest, "WALKING_DOWNSTAIRS")
#	}
#	else if (yy_traintest$V1[i] == 4) {
#	 new_yy_traintest <- rbind(new_yy_traintest, "SITTING")
#	}
#      else if (yy_traintest$V1[i] == 5) {
#	 new_yy_traintest <- rbind(new_yy_traintest, "STANDING")
#	}
#	else if (yy_traintest$V1[i] == 6) {
#	 new_yy_traintest <- rbind(new_yy_traintest,str("LAYING")
#	}
#}
#yy_traintest_copy = yy_traintest
#yy_traintest_copy[yy_traintest_copy==1]="WALKING"
#yy_traintest_copy[yy_traintest_copy==2]="WALKING_UPSTAIRS"
#yy_traintest_copy[yy_traintest_copy==3]="WALKING_DOWNSTAIRS"
#yy_traintest_copy[yy_traintest_copy==4]="SITTING"
#yy_traintest_copy[yy_traintest_copy==5]="STANDING"
#yy_traintest_copy[yy_traintest_copy==6]="LAYING"

#new_yy_traintest = yy_traintest_copy


#final_subject_traintest_names <- data.frame()

#for(i in 1:subject_traintest_size) {
#	final_subject_traintest_names <- rbind(final_subject_traintest_names,paste(new_subject_traintest[i],new_yy_traintest[i,]))
#	}
	

#frame1 <- data.frame()
#frame2 <- data.frame()
#frame3 <- data.frame()
#frame4 <- data.frame()
#frame5 <- data.frame()
#frame6 <- data.frame()

#for (i in 1:10299) {
#if (yy_traintest[i,] == 1) {
# frame1 <- rbind (frame1, xx_traintest[i,])
#}
#else if (yy_traintest[i,] == 2) {
#frame2 <- rbind (frame2, xx_traintest[i,])
#}
#else if (yy_traintest[i,] == 3) {
#frame3 <- rbind (frame3, xx_traintest[i,])
#}
#else if (yy_traintest[i,] == 4) {
#frame4 <- rbind (frame4, xx_traintest[i,])
#}
#else if (yy_traintest[i,] == 5) {
#frame5 <- rbind (frame5, xx_traintest[i,])
#}
#else if (yy_traintest[i,] == 6) {
#frame6 <- rbind (frame6, xx_traintest[i,])
#}
#}

#frame1_mean <- sapply(frame1,mean)
#frame1_sd   <- sapply(frame1,sd)
#frame2_mean <- sapply(frame2,mean)
#frame2_sd   <- sapply(frame2,sd)
#frame3_mean <- sapply(frame3,mean)
#frame3_sd   <- sapply(frame3,sd)
#frame4_mean <- sapply(frame4,mean)
#frame4_sd   <- sapply(frame4,sd)
#frame5_mean <- sapply(frame5,mean)
#frame5_sd   <- sapply(frame5,sd)
#frame6_mean <- sapply(frame6,mean)
#frame6_sd   <- sapply(frame6,sd)

#tidy_DF <- data.frame()
#tidy_DF <- cbind(frame1_mean)
#tidy_DF <- cbind(tidy_DF, frame1_sd)
#tidy_DF <- cbind(tidy_DF, frame2_mean)
#tidy_DF <- cbind(tidy_DF, frame2_sd)
#tidy_DF <- cbind(tidy_DF, frame3_mean)
#tidy_DF <- cbind(tidy_DF, frame3_sd)
#tidy_DF <- cbind(tidy_DF, frame4_mean)
#tidy_DF <- cbind(tidy_DF, frame4_sd)

#tidy_DF <- cbind(tidy_DF, frame5_mean)
#tidy_DF <- cbind(tidy_DF, frame5_sd)
#tidy_DF <- cbind(tidy_DF, frame6_mean)
#tidy_DF <- cbind(tidy_DF, frame6_sd)

#)



#tidy_DF <- data.frame()
#tidy_DF <- rbind(frame1)
#tidy_DF <- rbind(tidy_DF, frame2)
#tidy_DF <- rbind(tidy_DF, frame3)
#tidy_DF <- rbind(tidy_DF, frame4)
#tidy_DF <- rbind(tidy_DF,frame5)
#tidy_DF <- rbind(tidy_DF, frame6)
#names(tidy_DF) <- new_feature_names



untidy_DF <- xx_traintest
untidy_DF <-cbind(untidy_DF, SUBJECTID=subject_traintest)
untidy_DF <-cbind(untidy_DF, ACTIVITYNAME=yy_traintest)

new_feature_names = feature_names$V2
new_feature_names <- c(as.character(new_feature_names),"SUBJECTID","ACTIVITYNAME")
a1 <- gsub("\\(","",new_feature_names)
a2 <- gsub("\\)","",a1)
a3 <- gsub("\\,","To",a2)
clean_feature_names <- gsub("\\-","_",a3)

names(untidy_DF) <- clean_feature_names
tidy_DF <- data.frame()
for (i in 1:6) {
 for (j in 1:30) {
	tidy_DF <- rbind(tidy_DF,sapply(untidy_DF[(untidy_DF$SUBJECTID==j & untidy_DF$ACTIVITYNAME==i),],mean))
	}
	}
names(tidy_DF) <- clean_feature_names


new_tidy_DF = tidy_DF
new_tidy_DF$ACTIVITYNAME[new_tidy_DF$ACTIVITYNAME==1]="WALKING"
new_tidy_DF$ACTIVITYNAME[new_tidy_DF$ACTIVITYNAME==2]="WALKING_UPSTAIRS"
new_tidy_DF$ACTIVITYNAME[new_tidy_DF$ACTIVITYNAME==3]="WALKING_DOWNSTAIRS"
new_tidy_DF$ACTIVITYNAME[new_tidy_DF$ACTIVITYNAME==4]="SITTING"
new_tidy_DF$ACTIVITYNAME[new_tidy_DF$ACTIVITYNAME==5]="STANDING"
new_tidy_DF$ACTIVITYNAME[new_tidy_DF$ACTIVITYNAME==6]="LAYING"	
 
write.table(new_tidy_DF, file="padma_tidy_DF1.txt", row.name=FALSE)

