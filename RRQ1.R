## Downloading data from the link
download.file("https://d396qusza40orc.cloudfront.net/repdata%2Fdata%2Factivity.zip", destfile = "activity.zip")
## Unzipping the data
unzip("activity.zip")
##Reading the data into R and naming the file as basedata
basedata<-read.csv("activity.csv")
head(basedata)
##Processing Data
steps_each_day<-basedata %>%
                group_by(date) %>%
                summarise(st=sum(steps))%>%
                na.omit()