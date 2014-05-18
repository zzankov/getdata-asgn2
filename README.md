### Getting and Cleaning Data Assignment - Coursera.org
# Assignment 2
**************

## Introduction
This assignment uses data from the [UC Irvine Machine Learning Repository](http://archive.ics.uci.edu/ml/), a popular repository for machine learning datasets. In particular, we will be using the "Human Activity Recognition Using Smartphones" dataset which is available at:
* **Official website** [Human Activity Recognition Using Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
* **Project Data** Instructor's link to the [dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

## Goal
The aim of this assignment is to take a raw dataset from the links above, process it and transform it into a new data set conforming the *tidy data* standard. You can find the R code used to process the data in the repository named ***run_analysis.R***. 

Other files included in the repository are this README file along with a codebook describing the tidy dataset and its components, and the tidy dataset itself.

The main purpose of this README file is to outline the contents and describe how the ***run_analysis.R*** performs.

## Script description
The script has the following flow:

* Check if the zip file or the default extraction folder are present in the current working directory. The check is done in order to fetch and unzip the data if it is not yet present. 

```r
# If the zip file is not present do not run the function
# --------------------------------------------------------------------------
if (!file.exists("getdata-projectfiles-UCI HAR Dataset.zip") & !file.exists("UCI HAR Dataset")) {
    url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    # download.file(url,'getdata-projectfiles-UCI HAR
    # Dataset.zip',method='wget') unzip('getdata-projectfiles-UCI HAR
    # Dataset.zip')
    stop(paste("Data file not present in current working directory. Please download the zip file from", 
        url))
} else if (!file.exists("UCI HAR Dataset")) {
    unzip("getdata-projectfiles-UCI HAR Dataset.zip")
}
```


* Load the different data components into R (e.g. features, subjects, independent and dependent variables)

```r
# Load components of the data set
# -----------------------------------------------------------------------------
act.lab <- read.table("./UCI HAR Dataset/activity_labels.txt", as.is = T)
feat <- read.table("./UCI HAR Dataset/features.txt")
subj.train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
train.X <- read.table("./UCI HAR Dataset/train/X_train.txt")
train.Y <- read.table("./UCI HAR Dataset/train/y_train.txt")
subj.test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
test.X <- read.table("./UCI HAR Dataset/test/X_test.txt")
test.Y <- read.table("./UCI HAR Dataset/test/y_test.txt")
```


* Put the loaded data together. Also included here is the step of assigning the original feature names to the independent variables

```r
# assign features names
# -----------------------------------------------------------------------------
names(train.X) <- feat[, 2]
names(test.X) <- feat[, 2]

# assigning legible activities labels
# -----------------------------------------------------------------------------
train.Y <- factor(train.Y$V1, levels = act.lab$V1, labels = act.lab$V2)
test.Y <- factor(test.Y$V1, levels = act.lab$V1, labels = act.lab$V2)

# putting the data together
# -----------------------------------------------------------------------------
train <- cbind(train.X, activity = train.Y, subject = subj.train)
test <- cbind(test.X, activity = test.Y, subject = subj.test)
cdata <- rbind(train, test)
mean.cols <- grep("[Mm]ean", names(cdata))
std.cols <- grep("[Ss]td", names(cdata))
cdata <- cdata[, c(mean.cols, std.cols, 562, 563)]
cdata <- transform(cdata, V1 = factor(V1))
```


* Edit original feature names to make them easier to read and interpret. The CamelCase convention is used here which does not conform 100% to the instructor's suggestions. Referring to the course forum a few people agree with the idea that it is easier to read variables that are a blend of upper and lower case rather than lower only especially when we are also trying to avoid any potentially problematic characters such as parentheses, comas, hyphens and underscores.

```r
# assigning legible feature names using CamelCase
# -----------------------------------------------------------------------------
table.names <- make.names(names(cdata))
table.names[length(table.names)] <- "subject"
table.names <- gsub("tB", "time.B", table.names)
table.names <- gsub("tG", "time.G", table.names)
table.names <- gsub("fB", "frequency.B", table.names)
table.names <- gsub("[/.]", "", table.names)
names(cdata) <- table.names
```


* Aggregate the data into a summary of variable averages per activity type and per subject. An additional but not crucial at all (in fact more of a personal preference) step is to clear the global envornment leaving only the final tidy dataset loaded

```r
# Get tidy data table summarizing variable means by activity and subject
# -----------------------------------------------------------------------------
tidy <- aggregate(. ~ activity + subject, data = cdata, FUN = mean)

# clear gobal environment leaving only the tidy data
# -----------------------------------------------------------------------------
rm(list = ls()[!ls() == "tidy"])
```


* The final step is to export the tidy data into the current working directory. The exported file will be named "***tidy.txt***" and it will be in a tab delimited format. It can be easity read into R using the *read.table()* function

```r
# Export tidy data into the current working directory and return it
# -----------------------------------------------------------------------------
write.table(tidy, "./tidy.txt", sep = "\t")
```


## Original data overview
Tri-axial raw measurements from an accelerometer and a gyroscope. The acceleration signal was broken down into **body** acceleration and **gravity** acceleration. Furthermore **jerk** and **magnitude** values were derived from the signals. Some of these signals were also passed through a Fast Furier Transform which translates the measurements to frequencies. Hence, the final set of features falls into two main categories - ***time*** domain and ***frequency*** domain.
Using these signals a number of variables such as standard deviation, mean, correlations, etc. The end result is a large dataset with 561 features and about 10000 examples. As this data is intended for machine learning purposes it is further split into a **training** and a **test** sets. Also included in the data are *activities* and *subjects* corresponding to each example

## Tidy data set



### Layout
The tidy data summarizes specific variables (in agreement with the assignment requirements 86 out of 561 variables were retained excluding *subjects* and *activity*) by averageing them by activity per subject.

```r
tidy[1:20, 1:4]
```

```
##              activity subject timeBodyAccmeanX timeBodyAccmeanY
## 1             WALKING       1           0.2773        -0.017384
## 2    WALKING_UPSTAIRS       1           0.2555        -0.023953
## 3  WALKING_DOWNSTAIRS       1           0.2892        -0.009919
## 4             SITTING       1           0.2612        -0.001308
## 5            STANDING       1           0.2789        -0.016138
## 6              LAYING       1           0.2216        -0.040514
## 7             WALKING       2           0.2764        -0.018595
## 8    WALKING_UPSTAIRS       2           0.2472        -0.021412
## 9  WALKING_DOWNSTAIRS       2           0.2776        -0.022661
## 10            SITTING       2           0.2771        -0.015688
## 11           STANDING       2           0.2779        -0.018421
## 12             LAYING       2           0.2814        -0.018159
## 13            WALKING       3           0.2756        -0.017177
## 14   WALKING_UPSTAIRS       3           0.2608        -0.032411
## 15 WALKING_DOWNSTAIRS       3           0.2924        -0.019355
## 16            SITTING       3           0.2572        -0.003503
## 17           STANDING       3           0.2800        -0.014338
## 18             LAYING       3           0.2755        -0.018956
## 19            WALKING       4           0.2786        -0.014840
## 20   WALKING_UPSTAIRS       4           0.2709        -0.031980
```

As there are 30 subjects and 6 different activities we end up with a table with  rows and  columns in total. This data is much easier to load into the memory as it is only 501.09 KB.
### Data and Variables Used
The raw readings from the accelerometer and gyroscope were **ignored entirely** in deriving the tidy data set. The reason for this is that the information from this data is retained by and contained within the variables of the train and test data blocks.
From all 561 dependent variables in the data 86 were kept for the tidy data set. Each of the retained varialbes are either a mean or a standard deviation estimation.
All variables with the exception of 'activity' and 'subject' are numeric.

```r
str(tidy[, 1:10])
```

```
## 'data.frame':	180 obs. of  10 variables:
##  $ activity            : Factor w/ 6 levels "WALKING","WALKING_UPSTAIRS",..: 1 2 3 4 5 6 1 2 3 4 ...
##  $ subject             : Factor w/ 30 levels "1","2","3","4",..: 1 1 1 1 1 1 2 2 2 2 ...
##  $ timeBodyAccmeanX    : num  0.277 0.255 0.289 0.261 0.279 ...
##  $ timeBodyAccmeanY    : num  -0.01738 -0.02395 -0.00992 -0.00131 -0.01614 ...
##  $ timeBodyAccmeanZ    : num  -0.1111 -0.0973 -0.1076 -0.1045 -0.1106 ...
##  $ timeGravityAccmeanX : num  0.935 0.893 0.932 0.832 0.943 ...
##  $ timeGravityAccmeanY : num  -0.282 -0.362 -0.267 0.204 -0.273 ...
##  $ timeGravityAccmeanZ : num  -0.0681 -0.0754 -0.0621 0.332 0.0135 ...
##  $ timeBodyAccJerkmeanX: num  0.074 0.1014 0.0542 0.0775 0.0754 ...
##  $ timeBodyAccJerkmeanY: num  0.028272 0.019486 0.02965 -0.000619 0.007976 ...
```

```r
levels(tidy[, 1])
```

```
## [1] "WALKING"            "WALKING_UPSTAIRS"   "WALKING_DOWNSTAIRS"
## [4] "SITTING"            "STANDING"           "LAYING"
```

```r
levels(tidy[, 2])
```

```
##  [1] "1"  "2"  "3"  "4"  "5"  "6"  "7"  "8"  "9"  "10" "11" "12" "13" "14"
## [15] "15" "16" "17" "18" "19" "20" "21" "22" "23" "24" "25" "26" "27" "28"
## [29] "29" "30"
```


### Variable names
#### Factor variables
As noted earlier the first two variables are factors representing activity and subject. These variables have the names:

```
## [1] "activity" "subject"
```


#### Numeric varialbes
The names of all numeric variables are layed out in a unified manner starting  with the '*domain*' (time or frequency), followed by *component* (Body or Gravity), followed by *device* (accelerometer or gyroscope), followed by type of estimation (jerk, magnitute, etc), followed by type of calculation (mean or standard deviation). 

```r
grep("^timeBody", names(tidy), value = T)
```

```
##  [1] "timeBodyAccmeanX"        "timeBodyAccmeanY"       
##  [3] "timeBodyAccmeanZ"        "timeBodyAccJerkmeanX"   
##  [5] "timeBodyAccJerkmeanY"    "timeBodyAccJerkmeanZ"   
##  [7] "timeBodyGyromeanX"       "timeBodyGyromeanY"      
##  [9] "timeBodyGyromeanZ"       "timeBodyGyroJerkmeanX"  
## [11] "timeBodyGyroJerkmeanY"   "timeBodyGyroJerkmeanZ"  
## [13] "timeBodyAccMagmean"      "timeBodyAccJerkMagmean" 
## [15] "timeBodyGyroMagmean"     "timeBodyGyroJerkMagmean"
## [17] "timeBodyAccstdX"         "timeBodyAccstdY"        
## [19] "timeBodyAccstdZ"         "timeBodyAccJerkstdX"    
## [21] "timeBodyAccJerkstdY"     "timeBodyAccJerkstdZ"    
## [23] "timeBodyGyrostdX"        "timeBodyGyrostdY"       
## [25] "timeBodyGyrostdZ"        "timeBodyGyroJerkstdX"   
## [27] "timeBodyGyroJerkstdY"    "timeBodyGyroJerkstdZ"   
## [29] "timeBodyAccMagstd"       "timeBodyAccJerkMagstd"  
## [31] "timeBodyGyroMagstd"      "timeBodyGyroJerkMagstd"
```

```r
grep("^timeG", names(tidy), value = T)
```

```
## [1] "timeGravityAccmeanX"   "timeGravityAccmeanY"   "timeGravityAccmeanZ"  
## [4] "timeGravityAccMagmean" "timeGravityAccstdX"    "timeGravityAccstdY"   
## [7] "timeGravityAccstdZ"    "timeGravityAccMagstd"
```

```r
grep("^frequencyBody", names(tidy), value = T)
```

```
##  [1] "frequencyBodyAccmeanX"               
##  [2] "frequencyBodyAccmeanY"               
##  [3] "frequencyBodyAccmeanZ"               
##  [4] "frequencyBodyAccmeanFreqX"           
##  [5] "frequencyBodyAccmeanFreqY"           
##  [6] "frequencyBodyAccmeanFreqZ"           
##  [7] "frequencyBodyAccJerkmeanX"           
##  [8] "frequencyBodyAccJerkmeanY"           
##  [9] "frequencyBodyAccJerkmeanZ"           
## [10] "frequencyBodyAccJerkmeanFreqX"       
## [11] "frequencyBodyAccJerkmeanFreqY"       
## [12] "frequencyBodyAccJerkmeanFreqZ"       
## [13] "frequencyBodyGyromeanX"              
## [14] "frequencyBodyGyromeanY"              
## [15] "frequencyBodyGyromeanZ"              
## [16] "frequencyBodyGyromeanFreqX"          
## [17] "frequencyBodyGyromeanFreqY"          
## [18] "frequencyBodyGyromeanFreqZ"          
## [19] "frequencyBodyAccMagmean"             
## [20] "frequencyBodyAccMagmeanFreq"         
## [21] "frequencyBodyBodyAccJerkMagmean"     
## [22] "frequencyBodyBodyAccJerkMagmeanFreq" 
## [23] "frequencyBodyBodyGyroMagmean"        
## [24] "frequencyBodyBodyGyroMagmeanFreq"    
## [25] "frequencyBodyBodyGyroJerkMagmean"    
## [26] "frequencyBodyBodyGyroJerkMagmeanFreq"
## [27] "frequencyBodyAccstdX"                
## [28] "frequencyBodyAccstdY"                
## [29] "frequencyBodyAccstdZ"                
## [30] "frequencyBodyAccJerkstdX"            
## [31] "frequencyBodyAccJerkstdY"            
## [32] "frequencyBodyAccJerkstdZ"            
## [33] "frequencyBodyGyrostdX"               
## [34] "frequencyBodyGyrostdY"               
## [35] "frequencyBodyGyrostdZ"               
## [36] "frequencyBodyAccMagstd"              
## [37] "frequencyBodyBodyAccJerkMagstd"      
## [38] "frequencyBodyBodyGyroMagstd"         
## [39] "frequencyBodyBodyGyroJerkMagstd"
```

Note that variables representing a total measurement for all axis end here. If the readings are of a particular axis the variable ends on one of the letters X, Y or Z. 

```r
# number of variables measuring a specific axis
# -----------------------------------------------------------------------------
table(grepl("[XYZ]$", names(tidy)))
```

```
## 
## FALSE  TRUE 
##    31    57
```

One last set of variables measures the angle between two measurements

```r
# angle measuring variables
# -----------------------------------------------------------------------------
grep("^angle", names(tidy), value = T)
```

```
## [1] "angletimeBodyAccMeangravity"         
## [2] "angletimeBodyAccJerkMeangravityMean" 
## [3] "angletimeBodyGyroMeangravityMean"    
## [4] "angletimeBodyGyroJerkMeangravityMean"
## [5] "angleXgravityMean"                   
## [6] "angleYgravityMean"                   
## [7] "angleZgravityMean"
```


## Final remarks
This concludes the README. The tidy dataset is essentially a summarization of the raw data. An additional CodeBook file contains a brief summary of the variables and their distribution
