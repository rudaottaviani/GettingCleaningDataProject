address <- "https://s3.amazonaws.com/coursera-uploads/user-4304538cdcb908807ca14fbe/973502/asst-3/75339f100fb611e5855d25210ba16071.txt"
address <- sub("^https", "http", address)
data <- read.table(url(address), header = TRUE)
View(data)