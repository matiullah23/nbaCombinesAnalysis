#read in csv's 
data2012 <- read.csv(file="2012_nba_draft_combine.csv", header=TRUE, sep=",")
data2013 <- read.csv(file="2013_nba_draft_combine.csv", header=TRUE, sep=",")
data2014 <- read.csv(file="2014_nba_draft_combine.csv", header=TRUE, sep=",")
data2015 <- read.csv(file="2015_nba_draft_combine.csv", header=TRUE, sep=",")
data2016 <- read.csv(file="2016_nba_draft_combine.csv", header=TRUE, sep=",")

#combine the 4 datasets to create working dataset containing data for all 4 yeears
dataset <- rbind(data2012, data2013, data2014, data2015, data2016)

