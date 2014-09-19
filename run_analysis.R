#Part 1
library(dplyr)
xtestfile <- read.table("./data/X_test.txt")
xtrainfile <- read.table("./data/X_train.txt")
xfile <- rbind(xtestfile, xtrainfile)               #merge test and train data files

featuresdf <- read.table("./data/features.txt", colClasses="character")
featuresvector <- c(featuresdf[,2])         		#create vector of column names
xfile <- setNames(xfile, featuresvector)	        #set column names

subjecttest <- data.frame(subject = as.numeric(readLines("./data/subject_test.txt")))	   #read and create df of subject names - test file
subjecttrain <- data.frame(subject = as.numeric(readLines("./data/subject_train.txt")))    #read and create df of subject names - train file
subjectdf <- rbind(subjecttest, subjecttrain)                                              #merge test and train subject files

activitytest <- data.frame(activity = as.numeric(readLines("./data/y_test.txt")))		   #read and create df of activity names - test file
activitytrain <- data.frame(activity = as.numeric(readLines("./data/y_train.txt")))    	   #read and create df of activity names - train file
activitydf <- rbind(activitytest, activitytrain)                                           #merge test and train activity files

xfile <- cbind(subjectdf, activitydf, xfile)	     #merge all 3 files - data, subject and activity

#Part2
meanstddf <- xfile[,c("subject","activity",c(grep("mean\\()|std\\()",featuresvector,value=TRUE)))]  #extract mean and std cols only    

#Part 3
labels <- read.table("./data/activity_labels.txt", colClasses='character')    	
labels[,1] <- as.numeric(labels[,1])
mergefile <- merge(labels, meanstddf, by.x="V1", by.y="activity", all=FALSE)        #change activity labels to its descriptive names
mergefile <- select(mergefile, -V1)
colnames(mergefile)[1] <- "activity"

#Part4
colnames(mergefile) <- gsub("-*|\\()","",colnames(mergefile))                       #edit variable names to be descriptive
colnames(mergefile) <- gsub("BodyBody","Body",colnames(mergefile))                  #remove extra characters and words from variable names

#Part 5
namevec <- colnames(mergefile)[3:ncol(mergefile)]                                                    #create and write to a file
mergefile.means <- aggregate(mergefile[namevec], by = mergefile[c("activity","subject")], FUN=mean)  #tidy dataset with averages
write.table(mergefile.means,"./data/tidydataset.txt",row.names=F)                                    #grouped by activity and subject

#data5 <- read.table("./data/tidydataset.txt", header = TRUE)
#View(data5)
