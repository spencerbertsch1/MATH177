# demo r script 
# spencer bertsch 
# December 2021

library(ggplot2)

# get the working directory 
wd <- getwd()
print(wd)

# set the working directory 
setwd('/Users/spencerbertsch/Desktop/dev/CS/MATH177')

df <- read.csv('assignment0/demo_data/stateData.csv')

# subset the data by one of the columns 
northeast_states <- subset(df, state.region == 1)

# subset by more than one field
northeast_states2 <- df[((df$state.region == 1) & 
                           (df$population > 1000) & 
                           (df$income > 1000)), ]

reddit_df <- read.csv('assignment0/demo_data/reddit.csv')

# factor variables are just categorical variables - these commends can tell us about them
str(reddit_df)

# look at how many categories there are in the employment status
table(reddit_df$employment.status)
summary(reddit_df)

# let's look at the different categorical levels of the age.range variable 
levels(reddit_df$age.range)

# we can move the column "Under 18" to the first position
reddit_df$age.range <- relevel(reddit_df$age.range, "Under 18")

qplot(data=reddit_df, x=age.range)



