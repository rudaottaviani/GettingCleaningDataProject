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
        
        Subjects <- lapply(subjectsFiles, read.table) %>% 
                bind_rows() %>%
                select(Subject=V1)
        
        Activities <- read.table(activityFile)
        
        DataX <- lapply(xFiles, read.table, colClasses = ft$cc, col.names = ft$fn ) %>%
                bind_rows()
        
        DataY <- lapply(yFiles, read.table) %>%
                bind_rows() %>%
                left_join(Activities, by = "V1") %>% 
                select(-V1, Activity=V2) 
        
        tidyPt4 <- bind_cols(DataX, DataY, Subjects) 
        
        tidyPt5 <- group_by(tidyPt4, Activity, Subject) %>%
                summarise_each(funs(mean))
        
        write.table(tidyPt5, "tidy.txt", row.name=FALSE)
}

analysis()