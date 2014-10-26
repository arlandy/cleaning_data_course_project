getrawdata<-function(dirname="course_project"){
    dsname="UCI_HAR_Dataset.zip"
    oldwd<-getwd()
    tryCatch({
        relativePath=paste(".",dirname,sep = "/")
        if(!file.exists(relativePath)){
            dir.create(dirname)
        }
        setwd(relativePath)
        download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", method = "curl",destfile = dsname)
        unzip(dsname)
        file.remove(dsname)
    }, finally = {
        setwd(oldwd)
    })
}

mergeY<-function(dirname="course_project"){
    oldwd<-getwd()
    
    tryCatch({
        relativePath=paste(".",dirname,"UCI HAR Dataset", sep = "/")    
        setwd(relativePath)

        yTrain <- read.table("./train/y_train.txt")
        yTest <- read.table("./test/y_test.txt")
        activities<-read.table("./activity_labels.txt",sep = " ")
        binded<-rbind(yTest, yTrain)

        names(binded) <- "activity"
        binded$activity = factor(binded$activity,labels = as.vector(activities[,2]))

        binded
    }, finally = {
        setwd(oldwd)
    })
}

mergeX<-function(dirname="course_project"){
    oldwd<-getwd()
    
    tryCatch({
        relativePath=paste(".",dirname,"UCI HAR Dataset", sep = "/")    
        setwd(relativePath)

        xTrain <- read.table("./train/X_train.txt")
        xTest <- read.table("./test/X_test.txt")
        features <- read.table("./features.txt")
        binded<-rbind(xTest, xTrain)
        names(binded)<-as.vector(features[,2])
        colIndexes<-grep(pattern =  "mean\\(\\)|std\\(\\)", x = names(binded))
        binded[, colIndexes]
    }, finally = {
        setwd(oldwd)
    })
}

mergeSubject<-function(dirname="course_project"){
    oldwd<-getwd()
    
    tryCatch({
        relativePath=paste(".",dirname,"UCI HAR Dataset", sep = "/")    
        setwd(relativePath)
        
        subjectTrain <- read.table("./train/subject_train.txt")
        subjectTest <- read.table("./test/subject_test.txt")

        binded<-rbind(subjectTest, subjectTrain)
        names(binded)<-"subjectID"
        
        binded
    }, finally = {
        setwd(oldwd)
    })
}

library(reshape2)
#downloads and unzips data
getrawdata()

merged<-cbind(mergeSubject(), mergeY(), mergeX())
melted <- reshape2::melt(merged, id=c("subjectID","activity"))
rm(merged)
casted <- reshape2::dcast(melted, subjectID + activity ~ variable, fun = mean)
write.table(casted, "tidydata.txt", row.names=FALSE)