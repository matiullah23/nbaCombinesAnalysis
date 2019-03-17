#read in csv's 
data2012 <- read.csv(file="2012_nba_draft_combine.csv", header=TRUE, sep=",", check.names = FALSE, fileEncoding = 'UTF-8-BOM')
data2013 <- read.csv(file="2013_nba_draft_combine.csv", header=TRUE, sep=",", check.names = FALSE, fileEncoding = 'UTF-8-BOM')
data2014 <- read.csv(file="2014_nba_draft_combine.csv", header=TRUE, sep=",", check.names = FALSE, fileEncoding = 'UTF-8-BOM')
data2015 <- read.csv(file="2015_nba_draft_combine.csv", header=TRUE, sep=",", check.names = FALSE, fileEncoding = 'UTF-8-BOM')
data2016 <- read.csv(file="2016_nba_draft_combine.csv", header=TRUE, sep=",", check.names = FALSE, fileEncoding = 'UTF-8-BOM')

#combine the 4 datasets to create working dataset containing data for all 4 yeears
dataset <- rbind(data2012, data2013, data2014, data2015, data2016)

#drop the columns not being used (since these were not found in the other source of data for other combine years)
dataset <- dataset[,-1]
dataset <- dataset[,-9]
dataset <- dataset[,-9]

#bring in the data that was manually scraped from nba.com 
rest_of_data <- read.csv(file="2001to2011_2017_2018_nba_draft_combine.csv", header=TRUE, sep=",", check.names = FALSE, fileEncoding = 'UTF-8-BOM')


#combine the two datasets to create master dataset
df <- rbind(dataset, rest_of_data)

#export to CSV 
write.csv(df, file="nba_combine_data_merged.csv")




