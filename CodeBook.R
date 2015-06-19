require(dplyr)

address <- "https://s3.amazonaws.com/coursera-uploads/user-4304538cdcb908807ca14fbe/973502/asst-3/75339f100fb611e5855d25210ba16071.txt"
address <- sub("^https", "http", address)
data <- read.table(url(address), header = TRUE)

isFreqDomain <- function(x) { grepl("f", x)}

isTimeDomain <- function(x) { grepl("t", x)}

isBody <- function(x) { substr(x, 2, 5) == "Body"}

isGravity <- function(x) { substr(x, 2, 8) == "Gravity"}

cbFunc <- function(x) { ifelse(grepl(".std", x), "The Standard Deviation of the ", ifelse(grepl(".mean", x), "The Mean of the ", ""))}

isAcc <- function(x) { ifelse(grepl("ACC", x), "The Acceleration of ", "")}

isJerk <- function(x) { ifelse(grepl("Jerk", x), "The Jerk of ", "")}

isGyro <- function(x) { ifelse(grepl("Gyroscopical values", x), "The Jerk of ", "")}

sComponent <- function(x) { 
        ifelse(grepl(".X", x), "X",
        ifelse(grepl(".Y", x), "Y",
        ifelse(grepl(".Z", x), "Z", "NONE")))                                
}

isBodyBody <- function(x){ grepl("BodyBody", x) }

cbVarHeader <- function(x) { paste(" **", x, "**:", sep = "") }

cbComponent <- function(x){ ifelse(grepl(".X", x), "for the component X", ifelse(grepl(".Y", x), "for the component Y", ifelse(grepl(".Z", x), " for the component Z", "")))}

names <- c(
        "BodyAcc",
        "GravityAcc",
        "BodyAccJerk",
        "BodyGyro",
        "BodyGyroJerk",
        "BodyAccMag",
        "GravityAccMag",
        "BodyAccJerkMag",
        "BodyGyroMag",
        "BodyGyroJerkMag",
        "BodyBodyAccJerkMag",
        "BodyBodyGyroMag",
        "BodyBodyGyroJerkMag"
)

descr <- c(
        "Body Accelerometer Signal",
        "Gravity Accelerometer Signal",
        "Jerk in Body Accelerometer Signal", 
        "Body Gyroscopical Signal",
        "Body Gyroscopical Jerk Signal",
        "Body Accelerometer Magnitude Signal",
        "Gravity Accelerometer Magnitude Signal",  
        "Body Accelerometer Jerk Magnitude Signal", 
        "Body Gyroscopical Magnitude Signal",
        "Body Gyroscopical Jerk Magnitude Signal",
        "Body Acceleration Jerk Magnitude Signal",
        "Body Gyroscopical Magnitude Signal", 
        "Body Gyroscopical Jerk Magnitude Signal"
        
)

nReplace <- data.frame(Names = names, descr = descr)
nReplace <- arrange(nReplace, desc(sapply(as.character(nReplace$Names), nchar)))

getDomain <- function(x)
{
        tmp <- ifelse(
                grepl("^t", x), " in the Time Domain.",
                ifelse(grepl("^f", x), " in the Frequency Domain.", ""))
        
}

getAddDescr <- function(x)
{
        tmp <- ""
        
        tmp <- ifelse(
                        grepl("Jerk", x),
                        "\n*Note: The Jerk signal is obtained from the body linear acceleration \nand angular velocity derived in time.*",
                        tmp)
        
        tmp <- ifelse(
                        grepl("Mag", x),
                        "\n*Note: The magnitude of The three-dimensional signals (X,Y,Z) \nwere calculated using the Euclidean norm.*",
                        tmp
                )
        
        tmp <- ifelse(
                        grepl("Acc", x) & (grepl("Mag", x) | grepl("Jerk", x)),
                        paste(tmp, "*. The acceleration signal was separated into body and gravity acceleration signals \nusing a low pass Butterworth filter with a corner frequency of 0.3 Hz.*"),
                        ifelse(grepl("Acc", x),
                               "\n*Note: The acceleration signal was separated into body and gravity acceleration signals \nusing a low pass Butterworth filter with a corner frequency of 0.3 Hz.*",
                               tmp
                               )
                )
        
        tmp
}

getTypos <- function(x){
        tmp <- ""
        
        tmp <- ifelse(
                grepl("BodyBody", x), 
                "\n**BodyBody is a Typos but were leave unchanged from the original Data Set**",
                tmp)
 
        tmp
}

cbVarFooter <- function() { "" }

cbn <- names(data)

vartypes <- function(x){  
       tmp <- gsub(".mean", "", x)
       tmp <- gsub(".std", "", tmp)
       tmp <- gsub(".X", "", tmp)
       tmp <- gsub(".Y", "", tmp)
       tmp <- gsub(".Z", "", tmp)
       tmp <- substr(tmp, 2, length(tmp))
       
       tmp
}

cb <- data.frame(
        varN = 1:68,
        DataName = cbn,
        Header = cbVarHeader(cbn),
        ApplyedFunction = cbFunc(cbn),
        Names = vartypes(cbn),
        Component = cbComponent(cbn),
        Domain = getDomain(cbn),
        AddDescr = getAddDescr(cbn),
        Norm = rep("Values are normalized and bounded within [-1,1]. ", length(cbn)),
        Typos = getTypos(cbn)
)

cb <- left_join(cb, nReplace, by = "Names") %>%
        select(varN, Header, ApplyedFunction, descr, Component, Domain, AddDescr, Norm, Typos)

cb <- mutate(cb, FullText = 
                     paste(
                             as.character(varN),
                             ".",
                             Header, 
                             "\n", 
                             ApplyedFunction, 
                             descr, 
                             "\n", 
                             Component, 
                             Domain,
                             Norm,
                             AddDescr,
                             Typos,
                             "\n",
                             "\n",                            
                             sep=""))

cb <- select(cb, FullText)

write.table(cb, "D:/src/Coursera/Getting and Cleaning Data/cb.out", row.names=FALSE)