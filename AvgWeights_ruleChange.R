# find the average weight of players who were drafted prior to 2004-2005 rule change that lessened physical play

#read in data
df <- read.csv(file="nba_combine_data_merged.csv", header=TRUE, sep=",", check.names = FALSE, fileEncoding = 'UTF-8-BOM')

#remove undrafted players
df <- df[complete.cases(df$`Draft Pick`), ]

#keep only columns needed for this analysis
df <- df[,c(2,10)]



#find the average weight of players in the combine in that year
df <- aggregate(df, by=list(df$Year), FUN = mean, na.rm=TRUE)

#drop the first column which is not needed
df <- df[-1]

#round the weight
df <-round(df, 0)

#find the average of 2004 and prior and 2005 and after
preRuleChange <- round(mean(df[1:5,2]),2)
postRuleChange <- round(mean(df[6:19,2]),2)
