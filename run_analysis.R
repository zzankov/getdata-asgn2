run_analysis <- function() {
    # If the zip file is not present do not run the function 
    # --------------------------------------------------------------------------
    if(!file.exists("getdata-projectfiles-UCI HAR Dataset.zip")&
           !file.exists("UCI HAR Dataset")) {
        url <- 
            "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
        # download.file(url,"getdata-projectfiles-UCI HAR Dataset.zip",method='wget')
        # unzip("getdata-projectfiles-UCI HAR Dataset.zip")
        stop(paste("Data file not present in current working directory. Please download the zip file from",url))
    } else if(!file.exists("UCI HAR Dataset")) {
        unzip("getdata-projectfiles-UCI HAR Dataset.zip")
    }
    
    # Load components of the data set
    # --------------------------------------------------------------------------
    act.lab <- read.table("./UCI HAR Dataset/activity_labels.txt",as.is=T)
    feat <- read.table("./UCI HAR Dataset/features.txt")
    subj.train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
    train.X <- read.table("./UCI HAR Dataset/train/X_train.txt")
    train.Y <- read.table("./UCI HAR Dataset/train/y_train.txt")
    subj.test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
    test.X <- read.table("./UCI HAR Dataset/test/X_test.txt")
    test.Y <- read.table("./UCI HAR Dataset/test/y_test.txt")
    
    # assign features names
    # --------------------------------------------------------------------------
    names(train.X) <- feat[,2]
    names(test.X) <- feat[,2]
    
    # assigning legible activities labels
    # --------------------------------------------------------------------------
    train.Y <- factor(train.Y$V1,levels = act.lab$V1, labels = act.lab$V2)
    test.Y <- factor(test.Y$V1,levels = act.lab$V1, labels = act.lab$V2)
    
    # putting the data together
    # --------------------------------------------------------------------------
    train <- cbind(train.X,activity = train.Y,subject = subj.train)
    test <- cbind(test.X, activity = test.Y,subject = subj.test)
    cdata <- rbind(train,test)
    mean.cols <- grep('[Mm]ean',names(cdata))
    std.cols <- grep('[Ss]td',names(cdata))
    names(cdata[,c(mean.cols,std.cols,562,563)])
    cdata <- cdata[,c(mean.cols,std.cols,562,563)]
    cdata <- transform(cdata,V1 = factor(V1))
    
    # assigning legible feature names using CamelCase
    # --------------------------------------------------------------------------
    table.names <- make.names(names(cdata))
    table.names[length(table.names)] <- 'subject'
    table.names <- gsub("tB","time.B",table.names)
    table.names <- gsub("tG","time.G",table.names)
    table.names <- gsub("fB","frequency.B",table.names)
    table.names <- gsub("[/.]","",table.names)
    names(cdata) <- table.names
    
    
    # Get tidy data table summarizing variable means by activity and subject
    # --------------------------------------------------------------------------
    tidy <- aggregate(.~activity + subject,data=cdata,FUN=mean)
    
    # clear gobal environment leaving only the tidy data
    # --------------------------------------------------------------------------
    #rm(list=ls()[!ls()=='tidy'])
    
    # Export tidy data
    # --------------------------------------------------------------------------
    write.table(tidy,"./tidy.txt",sep = "\t")
    tidy
}