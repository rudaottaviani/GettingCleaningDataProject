
# run_analysis.R Script Description


#### This script is used to produce the tidy data set for **the Coursera *Getting and Cleaning Data* Project**


##### From the data set in [Samsung DataSet] (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

##### The script has to:
1. Merges the training and the test sets to create one data set 
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

I assume that every measure is indipendent. The output of the script is a **wide** tidy

The script require the packages **dplyr** and **data.table**.

##### These are the steps of the script:

* Declaration of the variables containings the name of the files used by the script

```R
        features <- "features.txt"
        subjectsFiles <- c("train/subject_train.txt", "test/subject_test.txt")
        xFiles <- c("train/X_train.txt","test/X_test.txt")
        yFiles <- c("train/Y_train.txt", "test/Y_test.txt")
        activityFile <- "activity_labels.txt"
```

* define a function named **isMSCol** that return true if the parameter x contains the 
String *mean()* or *std()*.

```R
        isMSCol <- function(x) { x %like% "mean\\(\\)" | x %like% "std\\(\\)" }
```

* The **ft** DataFrame is composed reading the **features** data set and using *isMSCol* function to create 2 columns **cc** and **fn** with the data type and the names of the subset of **X** raw dataset needed by the project.
  * ***Note**: the cc and fn columns contains **NULL** in the columns that will not be imported. Using **NULL** as data type
specification for a column in the colClasses parameter of read.table function exclude the column in the import process*

```R
        ft <- read.table(features, sep = " ") %>%
                mutate(cc = ifelse(isMSCol(V2), "numeric", "NULL"),
                       fn = ifelse(isMSCol(V2), gsub("[()]","", V2), "NULL"))    
```

* subjects test and train data has been merged using *bind_rows* and the result is "Selected" to produce a 
new data frame **Subjects** with one column named **Subject**.

```R
        Subjects <- lapply(subjectsFiles, read.table) %>% 
                bind_rows() %>%
                select(Subject=V1)
```
* In the **Activity** DataFrame there  are 2 columns the first column is the cod value
of the activity and the second column is the name of the activiy. this data set is used
to decode the activities in the tidy Data Frame

```R
        Activities <- read.table(activityFile)
```

* X Data are collected merging with *bind_rows* the test and train Data Sets. Using the optional
parameter **colClasses** of *read.table* and passing to it the **cc** column of the **ft** Data Frame, in a single operation and reducing the memory usage, we load only the required columns for the project: *mean* and *std* Data.
The parameter col.names, using the **fn** column of **ft** Data Frame, is used to assign correct variable names to the 
XData Data Frame.

```R
        DataX <- lapply(xFiles, read.table, colClasses = ft$cc, col.names = ft$fn ) %>%
                bind_rows()
```

* Y train and test data are merged together and, using a *left_join* operator, are joined with the Activity Data Frame to decode the activity labels. Finally the activity code is exluded from the resulted Data Frame

```R
        DataY <- lapply(yFiles, read.table) %>%
                bind_rows() %>%
                left_join(Activities, by = "V1") %>% 
                select(-V1, Activity=V2) 
```

* The **tidyPt4** (*tidy data set for the project point 4*) Data Frame is created using *bind_columns* with the **DataX**, **DataY** and **Subjects** Data Frame. **bind_columns** preserve row order

```R
        tidyPt4 <- bind_cols(DataX, DataY, Subjects)
```

* the **tidyPt5** Data Frame is create from the tidyPt4, grouping by **Activity** and **Subject** using the *group_by* function. The result, using *summarise_each* and *mean* produce the project desired output.

```R
        tidyPt5 <- group_by(tidyPt4, Activity, Subject) %>%
                summarise_each(funs(mean))
```

* Finally with *write.table* the script write the **tidy.txt** file

```R
        write.table(tidy, "tidy.txt", row.name=FALSE)
```
