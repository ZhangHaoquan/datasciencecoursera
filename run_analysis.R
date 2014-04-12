if(!file.exists("./data")){dir.create("./data")}
setInternet2(use=T)
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile="./data/UCI_HAR.zip")
unzip("./data/UCI_HAR.zip",exdir="./data")

## Extracting the relevant features (means and standard deviatoins)
features         <- read.table("./data/UCI HAR Dataset/features.txt",header=F)
sub.features     <- grep("*[Mm]ean|[Ss]td", as.character(features[,2]),value=T)
sub.features     <- gsub("\\(\\)","",sub.features)
sub.features.ind <- grep("*[Mm]ean|[Ss]td", as.character(features[,2]))

## Extracting labels to relabel the y variable
act.labels       <- read.table("./data/UCI HAR Dataset/activity_labels.txt",col.names=c("y","labels"))

## x - features, y - dependent variable, s - subjects
train.x <- read.table("./data/UCI HAR Dataset/train/X_train.txt",header=F)[,sub.features.ind]
train.y <- read.table("./data/UCI HAR Dataset/train/y_train.txt",header=F)
train.s <- read.table("./data/UCI HAR Dataset/train/subject_train.txt",header=F)
train   <- cbind(train.y,train.s,train.x)

test.x  <- read.table("./data/UCI HAR Dataset/test/X_test.txt",header=F)[,sub.features.ind]
test.y  <- read.table("./data/UCI HAR Dataset/test/y_test.txt",header=F)
test.s  <- read.table("./data/UCI HAR Dataset/test/subject_test.txt",header=F)
test    <- cbind(test.y,test.s,test.x)

full_data           <- rbind(train,test)
colnames(full_data) <- c("y","subject",sub.features)
full_data$y         <- merge(data.frame(y = full_data$y),act.labels,by.x="y",by.y="y")[,2]

full_data_by_activity        <- split(full_data,f=full_data$y)
full_data_by_activity        <- sapply(full_data_by_activity,function(x){as.numeric(colMeans(x[,-c(1,2)]))})
full_data_by_activity        <- as.data.frame(full_data_by_activity,row.names = sub.features)
names(full_data_by_activity) <- tolower(names(full_data_by_activity))

full_data_by_subject         <- split(full_data,f=full_data$subject)
full_data_by_subject         <- sapply(full_data_by_subject,function(x){as.numeric(colMeans(x[,-c(1,2)]))})
full_data_by_subject         <- as.data.frame(full_data_by_subject,row.names = sub.features)
names(full_data_by_subject)  <- paste("subject",names(full_data_by_subject))
measurement                  <- paste("avg",row.names(full_data_by_subject))
full_data_subjectAndActivity <- cbind(measurement,full_data_by_activity,full_data_by_subject)

write.table(full_data                   ,"./data/full_data.txt",row.names=F)
write.table(full_data_subjectAndActivity,"./data/full_data_bySubjectAndActivity.txt",row.names=F)

