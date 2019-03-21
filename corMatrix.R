#create a correlation matrix

#read in data to be used
df <- read.csv(file="nba_combine_data_merged.csv", header=TRUE, sep=",", check.names = FALSE, fileEncoding = 'UTF-8-BOM')

#drop columns that are not needed - player's name and the year they were drafted

df <- df[-1]
df <- df[-1]

#convert draft pick column from integer to numeric so it can be used in correlation matrix
df[1] <- lapply(df[1], as.numeric)

#remove columns of data with NA 
df <- df[complete.cases(df), ]

#create and view the correlation matrix
correlations <- cor(df)
correlations <-round(correlations, 2)
View(correlations)
