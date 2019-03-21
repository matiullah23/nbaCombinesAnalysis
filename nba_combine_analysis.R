#read in csv's 
data2012 <- read.csv(file="2012_nba_draft_combine.csv", header=TRUE, sep=",", check.names = FALSE, fileEncoding = 'UTF-8-BOM')
data2013 <- read.csv(file="2013_nba_draft_combine.csv", header=TRUE, sep=",", check.names = FALSE, fileEncoding = 'UTF-8-BOM')
data2014 <- read.csv(file="2014_nba_draft_combine.csv", header=TRUE, sep=",", check.names = FALSE, fileEncoding = 'UTF-8-BOM')
data2015 <- read.csv(file="2015_nba_draft_combine.csv", header=TRUE, sep=",", check.names = FALSE, fileEncoding = 'UTF-8-BOM')
data2016 <- read.csv(file="2016_nba_draft_combine.csv", header=TRUE, sep=",", check.names = FALSE, fileEncoding = 'UTF-8-BOM')

#load libraries
library(data.table)

#combine the 4 datasets to create working dataset containing data for all 4 years
dataset <- rbind(data2012, data2013, data2014, data2015, data2016)

#drop the columns not being used (since these were not found in the other source of data for other combine years)
dataset <- dataset[,-1]
dataset <- dataset[,-9]
dataset <- dataset[,-9]

#bring in the data that was manually scraped from nba.com 
rest_of_data <- read.csv(file="2001to2011_2017_2018_nba_draft_combine.csv", header=TRUE, sep=",", check.names = FALSE, fileEncoding = 'UTF-8-BOM')


#combine the two datasets to create master dataset
df <- rbind(dataset, rest_of_data)

#rename columns
setnames(df, old=c("Height (No Shoes)","Standing reach", "Weight", "Hand (Width)", "Sprint", "Height (With Shoes)", "Vertical (Max)", "Body Fat", "Bench", "Draft pick", "Wingspan", "Vertical (No Step Reach)", "Hand (Length)", "Agility"), 
         new=c("Height (inches, No Shoes)", "Standing Reach (inches)", "Weight (lbs)", "Hand Width (inches)", "Sprint (seconds)", "Height (With Shoes, inches)", "Vertical Max (inches)", "Body Fat (%)", "Bench Press (185lbs, repititions)", "Draft Pick", "Wingspan (inches)", "Vertical (No Step Reach, inches)", "Hand Length (inches)", "Agility (seconds)"))

#change data types of variables
str(df)

df$`Weight (lbs)` <- as.numeric(df$`Weight (lbs)`)



#export to CSV 
write.csv(df, file="nba_combine_data_merged.csv", row.names=FALSE)




