require("data.table")
require("dplyr")

analysis <- function()
{       
        features <- "features.txt"
        subjectsFiles <- c("train/subject_train.txt", "test/subject_test.txt")
        xFiles <- c("train/X_train.txt","test/X_test.txt")
        yFiles <- c("train/Y_train.txt", "test/Y_test.txt")
        activityFile <- "activity_labels.txt"
        
        isMSCol <- function(x) { x %like% "mean\\(\\)" | x %like% "std\\(\\)" }
        
        ft <- read.table(features, sep = " ") %>%
                mutate(cc = ifelse(isMSCol(V2), "numeric", "NULL"),
                       fn = ifelse(isMSCol(V2), gsub("[()]","", V2), "NULL"))      
        
        Subjects <- bind_rows(lapply(subjectsFiles, read.table)) %>% 
                        select(Subject=V1)
        
        Activities <- read.table(activityFile)
        
        DataX <- bind_rows(
                lapply(xFiles, read.table, colClasses = ft$cc, col.names = ft$fn ))
        
        DataY <- bind_rows(lapply(yFiles, read.table)) %>%
                        left_join(Activities, by = "V1") %>% 
                                select(-V1, Activity=V2) 
        
        tidyPt4 <- bind_cols(DataX, DataY, Subjects) 
        
        tidyPt5 <- tidyPt4 %>%
                group_by(Activity, Subject) %>%
                        summarise_each(funs(mean))
        
        write.table(tidyPt5, "tidy.txt", row.name=FALSE)
}

analysis()