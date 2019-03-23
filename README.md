#Theories being tested in this analysis-

1.	There is a no correlation between draft picks and any single category of the combine since players are drafted more on their previous performance on the basketball court as opposed to a single variable of their athletic ability of body structure.
2.	The NBA changed the rulebook prior to 2004-2005 to open up the court and increasing scoring. By doing so, they would not allow players to be as physical with each other without fouling them. According to the league rules, new rules were introduced to curtail hand-checking, clarify blocking fouls and call defensive three seconds to open up the game.  

#Description of the files: 

Data Files: 
-The following datasets (“2012_nba_draft_combine.csv”, “2013_nba_draft_combine.csv”, “2014_nba_draft_combine.csv”, “2015_nba_draft_combine.csv”, “2016_nba_draft_combine.csv” were found on data.world. These were the original inspiration for my project. 

-As I dug deeper, I found raw NBA combine data on the NBA’s official stats website. I manually scraped this data and created a csv file, “2001to2011_2017_2018_nba_draft_combine.csv”

Data Manipulation/Transformation: 
-The csv files mentioned above were read into the R Script, “nba_combine_analysis.R”, where they were merged together after some data manipulation to ensure that the columns were similar for a smooth data merge. The end product to be analyzed in Tableau was the csv file, “nba_combine_data_merged.csv” 

Calculated Column(s): 
-In order to test my theory of the average weight of NBA players being drafted going down after the previously mentioned rule change, I created an R script, AvgWeights_ruleChange.R, where I grouped the years of the combines into either pre rule change or post rule change. I then calculated the average weight for each group. 

-In order to test my theory of no correlation between any one NBA combine variable and where a player will get drafted, I created a correlation matrix, corMatrix.R, in which the theory was proven to be true. This matrix will be referred again below in the Tableau Workbook description. 

Tableau Visualizations:
-There are three dashboards I’ve created to visualize my findings. The first dashboard, ‘A Weaker and Lighter League’, combines a bar chart with a line chart to show the trends in strength and weight of NBA players. 

-The second dashboard, ‘Does the Combine Matter?’, visualizes the strongest correlation between when a player gets drafted and the aforementioned correlation, speed. 

-The third dashboard, ‘Historical Performances’ gives a visual representation of all the best performances for each category to show whether or not the greatest historical performance will lead to a being a top pick in the draft. 

-The workbooks following the three dashboards are not intended to provide any value or insight on their own. They were to be used in the dashboards, although not all of them were used. 
