
# run_analysis.R Scritp Description


#### This script is used to produce the tidy data set for **the Coursera *Getting and Cleaning Data* Project**


##### From the data set in [Samsung DataSet] (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip Samsung Data Set)

##### The script has to:
1. Merges the training and the test sets to create one data set 
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


##### These are the steps of the script:

* define a function named **isMSCol** that return true if the parameter x contains the 
String *mean()* or *std()*.

```R
        isMSCol <- function(x) { x %like% "mean\\(\\)" | x %like% "std\\(\\)" }
```

* The **ft** DataFrame is composed reading the **features** data set and using *isMSCol* function to create 2 columns **cc** and **fn** with the data type and the names of the subset of **X** raw data needed by the project.
***Note**: the cc and fn columns contains **NULL** in the columns that will not be imported*

```R
        ft <- read.table("features.txt", sep = " ") %>%
                mutate(cc = ifelse(isMSCol(V2), "numeric", "NULL"),
                       fn = ifelse(isMSCol(V2), gsub("[()]","", V2), "NULL"))   
```

* subjects test and train data has been merged using bind_rows and the result is a 
new data frame **Subjects** with one column name **Subject**.

```R
        Subjects <- bind_rows(lapply(subjectsFiles, read.table)) %>% 
                                select(Subject=V1)
```
* In the Activity DataFrame there  are 2 columns the first column is the cod value
of the activity and the second column is the name of the activiy. this data set is used
to decode the activities in the tidy Data Frame

```R
        Activities <- read.table(activityFile)
```

* X Data are collected merging with *row_bind* the test and train Data Sets. Using the optional
parameter **colClasses** of *read.table* and passing to it the **cc** column of the **ft** Data Frame, in a single operation and reducing the memory usage, we have only the required columns for the project: *mean* and *std* Data.

```R
        DataX <- bind_rows(
                lapply(xFiles, read.table, colClasses = ft$cc, col.names = ft$fn ))
```

* Y train and test data are merged together and using a *left_join* operator is joined with the Activity Data Frame to decode the activity labels. Finally the activity code is exluded from the resulted Data Frame

```R
        DataY <- bind_rows(lapply(yFiles, read.table)) %>%
                        left_join(Activities, by = "V1") %>% 
                                select(-V1, Activity=V2) 
```

* The **tidyPt4** (*tidy data set for the project point 4*) Data Frame is created using *bind_columns* with the **DataX**, **DataY** and **Subjects** Data Frame

```R
        tidyPt4 <- bind_cols(DataX, DataY, Subjects)
```

* the **tidyPt5** Data Frame is create from the tidyPt4, grouping by **Activity** and **Subject** using the *group_by* function. The result, using *summarise_each* and *mean* produce the project desired output.

```R
        tidyPt5 <- tidyPt4 %>%
                group_by(Activity, Subject) %>%
                        summarise_each(funs(mean))
```

* Finally with *write.table* the script write the **tidy.txt** file

```R
        write.table(tidy, "tidy.txt", row.name=FALSE)
```
